# CLAUDE.md

This folder is the Operion workspace. Each repository is its own git clone in a folder of the same name; this repository only holds the glue (`Makefile`, `go.work`, this file).

## Repositories

- `operion`: the product. One Go binary, `operion`, on PostgreSQL. Its own `CLAUDE.md` describes the code.
- `operion.dev`: the documentation site, Next.js with Fumadocs. Pages live in `content/docs`, navigation in the `meta.json` files.
- `editor`: the workflow editor, TypeScript.

## Rules

- Every operion change that users or operators can see (flags, environment variables, API routes, node types and their configs, templates, the image) ships with the matching operion.dev change in the same session: one pull request in each repository, each linking to the other. Internal refactors need no docs change.
- One subject per branch. Work in git worktrees under `.worktrees/` (for example `git -C operion worktree add ../.worktrees/<name> -b <branch> origin/main`) so the clones' working trees stay untouched.
- A clone's `origin` may still use an old `dukex/*` URL. Open pull requests with `gh pr create -R operion-flow/<repo> --head <branch>`.

## Commands

```bash
make setup
make sync
make build
cd operion && make test
cd operion.dev && npm ci && npm run build
```
