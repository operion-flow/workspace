# Operion workspace

One folder with every Operion repository, so a change and its documentation are made together.

| Repository | What it is |
| --- | --- |
| [operion](https://github.com/operion-flow/operion) | The product: one Go binary on PostgreSQL |
| [operion.dev](https://github.com/operion-flow/operion.dev) | The documentation site (Next.js and Fumadocs) |
| [editor](https://github.com/operion-flow/editor) | The workflow editor (TypeScript) |

## Setup

```bash
git clone git@github.com:operion-flow/workspace.git operion-flow
cd operion-flow
make setup
```

`make setup` clones each repository into a folder of the same name. `make sync` pulls this repository and every clone. `make build` builds `./bin/operion`.

`go.work` points at `./operion`, so Go commands work from the root.

## Working across repositories

Every operion change that users or operators can see (flags, environment variables, API routes, node types and their configs, templates, the image) ships with the matching change in operion.dev, as a pull request in each repository that links to the other.

Keep one subject per branch and work in git worktrees under `.worktrees/`, which this repository ignores.

## Requirements

- Go 1.27 or later
- Node.js 20 or later for operion.dev and editor
- Git with SSH access to the operion-flow repositories
