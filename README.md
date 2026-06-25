# homebrew-preflight

Homebrew tap for [Preflight CLI](https://github.com/tszaks/Preflight) - open-source App Store review scanner.

The npm package is available at [npmjs.com/package/preflightlaunch](https://www.npmjs.com/package/preflightlaunch).

## Install

```bash
brew tap tszaks/preflight
brew install preflight
```

## Usage

```bash
preflight scan ./MyApp   # Local review scan
preflight update         # Pull the latest package
```

## Quickstart TL;DR

```bash
brew tap tszaks/preflight
brew install preflight
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
- preflight scan <path>
- preflight update
How it works:
- Homebrew reads Formula/preflight.rb and installs the CLI artifact.
```
