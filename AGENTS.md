# Hangar — agent rules

## Authorship boundary (the point of this repo)

Hangar is a hand-written project. It exists partly as evidence of exactly that.

- **`src/` and `tests/` are written by Noah.** Agents never author, edit, or refactor
  application or test code — not even trivial fixes. Point at the problem; the human
  types the fix.
- Agents MAY: review code and explain APIs, write and edit docs (this file, README),
  maintain CI and tooling (justfile, workflows, Dockerfile), and run builds/tests.
- Project scaffolding came from `dotnet new` templates (recorded in the initial commit);
  everything in `src/`/`tests/` after that commit is human-authored.

## Conventions

- Dev server port is pinned: **6414**. Do not use framework-default ports.
- Secrets and environment-specific values come from the environment
  (`HANGAR_NOTIFY_URL` for the notification webhook). Never commit real endpoints,
  tokens, or personal data — this repo is public. Seed/fixture data stays generic.
- Build/test/run through the `justfile`.
- Tests live in `tests/Hangar.Tests`; the scheduling/recurrence math must stay covered.
