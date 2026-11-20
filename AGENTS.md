# Rules for AI assistants

## Start of each session

1. Read HUMAN.md.
2. Do not edit HUMAN.md.
3. If a task conflicts with HUMAN.md, stop and ask a human.

## Markdown files

These Markdown files exist:

- README.md - Documentation (all files and purposes, description of project, etc.)
- AGENTS.md - Instructions for agents
- HUMAN.md - Read only for agents, source of truth

## Comments

Add a comment at the top of each code file with the intended purpose of that file.
Write minimal comments - make code self documenting as far as possible.

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
- Write what is true now. Do not write history or plans in prose. 
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

## Commits

- Write the subject in the imperative, 50 characters or fewer.
- Make one logical change in each commit.
- Do not include code and unrelated cleanup in the same commit.
