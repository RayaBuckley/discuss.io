# Rules for AI assistants

## Start of each session

1. Read HUMAN.md.
2. Read TODO.md.
3. Do not edit HUMAN.md.
4. If a task conflicts with HUMAN.md, stop and ask a human.

## Allowed Markdown files

Only these Markdown files exist:

- README.md
- AGENTS.md
- HUMAN.md
- TODO.md
- todo/NNNN-slug.md

Do not create other Markdown files.
Do not create docs/ directories, changelogs, design notes, or architecture files.
The code is the documentation.
Make the code clear with good names and small functions.

## Comments

Do not write comments in code.
This includes docstrings, section markers, and commented-out code.
If code needs a comment, rename the identifier or split the function.
Exception: a directive that a tool requires, for example a linter pragma or a shebang.

## Prose

These rules apply to Markdown files, commit messages, error messages, and user interface text.
Write in ASD-STE100 Simplified Technical English.

- Write one idea in each sentence.
- Use 20 words or fewer in an instruction. Use 25 words or fewer in a description.
- Use the active voice.
- Use the simple present tense for facts. Use the imperative for instructions.
- Use the same word for the same thing. Do not use synonyms for variety.
- Use a word in only one part of speech.
- Do not use idioms, slang, or figurative language.
- Do not use marketing words, hedges, or filler.
- Write what is true now. Do not write history or plans in prose. Put plans in TODO.md.
- Define each project term once. The code name for the term is the same word.

## Tests

Test quality is more important than test count.

- Write end-to-end tests first. An end-to-end test starts the real application, opens the real UI, and completes a task a user does.
- Do not mock what you can run. Use real databases, real browsers, and real network calls to local services.
- Add a lower-level test only if an end-to-end test cannot find a specific failure fast enough.
- Do not test getters, setters, or framework behavior.
- Do not write a test to raise a coverage number.
- Give each test a name that states the task and the expected result.
- Delete a test that fails for reasons that are not bugs.
- Keep the full test suite under five minutes.

## Deferred tasks

TODO.md is the only list of deferred code tasks.
Do not write TODO, FIXME, or similar markers in code or in other files.

- Each entry in TODO.md has one line and links to one file: todo/NNNN-slug.md.
- Each file in todo/ belongs to exactly one entry.
- NNNN is a four-digit number. Do not reuse a number.
- To finish a task, delete the entry and its file in the same commit as the code.
- Each task file has these sections in this order: Problem, Cause, Acceptance, Notes.
- The Acceptance section states a test that proves the task is done.

TODO.md entry format:

    - [ ] NNNN Short title: [todo/NNNN-slug.md](todo/NNNN-slug.md)

Run scripts/check-repo.sh before each commit. It must pass.

## Commits

- Write the subject in the imperative, 50 characters or fewer.
- Make one logical change in each commit.
- Do not include code and unrelated cleanup in the same commit.
