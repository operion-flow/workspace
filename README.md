# Operion Flow

A workspace repository to help developers work with all Operion projects simultaneously using Go workspaces.

## Overview

This repository uses Go workspaces to manage multiple Operion-related projects in a unified development environment. The workspace includes:

- **operion** - Main Operion project
- **interfaces** - Operion interfaces
- **operion-docs** - Operion documentation

## Setup

Run the setup command to clone all required repositories:

```bash
make setup
```

This will clone the following repositories into the workspace:
- `git@github.com:dukex/operion.git` → `./operion`
- `git@github.com:dukex/interfaces.git` → `./interfaces`
- `git@github.com:dukex/operion-docs.git` → `./operion-docs`

## Requirements

- Go 1.24.4 or later
- Git with SSH access to the repositories

## Usage

Once setup is complete, you can work with all projects simultaneously. The Go workspace configuration in `go.work` allows you to:

- Run commands across all modules
- Share dependencies between projects
- Test integration between components

## Workspace Structure

```
operion-flow/
├── go.work          # Go workspace configuration
├── Makefile         # Setup automation
├── operion/         # Main Operion project (cloned)
├── interfaces/      # Operion interfaces (cloned)
└── operion-docs/    # Documentation (cloned)
```