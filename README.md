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
