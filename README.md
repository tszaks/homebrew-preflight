# homebrew-preflight

Homebrew tap for [Preflight CLI](https://preflightlaunch.com) - App Store Review Scanner.

## Install

```bash
brew tap tszaks/preflight
brew install preflight
```

## Usage

```bash
preflight login          # Authenticate
preflight scan ./MyApp   # Dry-run scan
preflight submit ./MyApp # Full analysis
```

## Quickstart TL;DR

```bash
brew tap tszaks/preflight
brew install preflight
preflight login
preflight scan ./MyApp
```

## How It Works (TL;DR)

- This repo is a Homebrew tap
- `Formula/preflight.rb` defines where Homebrew downloads the Preflight CLI and how it installs it
- Running `brew upgrade preflight` pulls newer formula versions

## LLM Quick Copy

Use the copy button on this code block in GitHub.

```txt
Repo: homebrew-preflight
Goal: Install/update Preflight CLI with Homebrew.
Setup:
1) brew tap tszaks/preflight
2) brew install preflight
Use:
- preflight login
- preflight scan <path>
- preflight submit <path>
How it works:
- Homebrew reads Formula/preflight.rb and installs the CLI artifact.
```
