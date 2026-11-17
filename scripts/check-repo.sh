#!/usr/bin/env bash
set -u
cd "$(git rev-parse --show-toplevel)"
fail=0

allowed='^(README|AGENTS|HUMAN|TODO)\.md$|^todo/[0-9]{4}-[a-z0-9-]+\.md$'
while IFS= read -r f; do
  if ! [[ "$f" =~ $allowed ]]; then
    echo "Markdown file not allowed: $f"
    fail=1
  fi
done < <(git ls-files --cached --others --exclude-standard '*.md')

linked=$(grep -oE '\]\(todo/[^)]+\)' TODO.md | sed -E 's/^\]\((.*)\)$/\1/' | sort)
dup=$(echo "$linked" | uniq -d)
[ -n "$dup" ] && { echo "Task file linked more than once: $dup"; fail=1; }

for p in $linked; do
  [ -f "$p" ] || { echo "Missing task file: $p"; fail=1; }
done

for f in todo/*.md; do
  [ -e "$f" ] || continue
  echo "$linked" | grep -qx "$f" || { echo "Task file not in TODO.md: $f"; fail=1; }
done

while IFS= read -r line; do
  [[ "$line" =~ ^-\ \[[\ x]\]\ [0-9]{4}\ .+:\ \[todo/[0-9]{4}-[a-z0-9-]+\.md\]\(todo/[0-9]{4}-[a-z0-9-]+\.md\)$ ]] \
    || { echo "Bad TODO.md line: $line"; fail=1; }
done < <(grep -E '^- ' TODO.md)

excl=(':!TODO.md' ':!AGENTS.md' ':!HUMAN.md' ':!README.md' ':!scripts/check-repo.sh' ':!todo')
if git grep -nE '\b(TODO|FIXME|XXX|HACK)\b' -- . "${excl[@]}"; then
  fail=1
fi

[ "$fail" -eq 0 ] && echo "OK"
exit "$fail"
