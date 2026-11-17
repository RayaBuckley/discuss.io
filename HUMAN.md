# HUMAN

Only a human writes to this file.
An AI assistant must not edit, move, or delete this file.
An AI assistant must read this file at the start of each session.
If a task conflicts with this file, the assistant stops and asks a human.

## Goal

Build software that structures a discussion as a tree.

Start with MVP prototype.

## Constraints

- Two humans work on this project. AI coding assistants write most of the code.
- The repository contains only concise and technically accurate prose.
- All prose follows ASD-STE100.
- Code has no comments.
- Test coverage should only count tests that meaningfully test the end behaviour, not source-code tests. 
- TODO.md is the only list of deferred code tasks.
- Each TODO entry has exactly one detail file in todo/.

## Architecture

Host over LAN (i.e. local host)

## Rough notes

I think my idea is similar to IBIS, though more focused on logical reasoning. The discussion starts with a statement, then objections to that statement are subchildren, and so on building a tree structure. When a substatement is conceded, it becomes archived and the parent is updated (the archive needs the agreement of the owner of the subchild). It should have a source control structure where edits are recorded -- the child nodes should be marked as potentially outdated.
