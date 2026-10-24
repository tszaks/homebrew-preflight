<h1 align="center">homebrew-preflight</h1>

<p align="center">
  Homebrew tap for Preflight, the App Store review readiness scanner for iOS apps.
</p>

<p align="center">
  <a href="LICENSE"><img src="https://img.shields.io/github/license/tszaks/homebrew-preflight" alt="MIT license"></a>
  <img src="https://img.shields.io/badge/homebrew-tap-FBB040" alt="Homebrew tap">
  <img src="https://img.shields.io/badge/platform-macOS-blue" alt="macOS">
</p>

```sh
brew tap tszaks/preflight
brew install preflight
preflight --version
```

This repository is a [Homebrew](https://brew.sh) tap. It holds one formula, `Formula/preflight.rb`, which installs the `preflight` command from the [`preflightlaunch`](https://www.npmjs.com/package/preflightlaunch) npm package.

The scanner itself lives in the [Preflight repository](https://github.com/tszaks/Preflight). Go there for what Preflight checks, how rules work, and for bug reports. The tap is for people who would rather install with `brew` than with npm or a standalone download.

## Install

```sh
brew tap tszaks/preflight
brew install preflight
```

The formula depends on `node@22`, and Homebrew installs it for you. Update later with:

```sh
brew update
brew upgrade preflight
```

The formula pins one exact version of the npm package (see the `url` line in [Formula/preflight.rb](Formula/preflight.rb)). Check what you got with `preflight --version`. A new Preflight release shows up in Homebrew only after the formula is bumped, so Homebrew can be behind npm and behind GitHub Releases. For the newest build, use the install steps in the [Preflight README](https://github.com/tszaks/Preflight#install).

## Usage

The commands below match the version the formula currently pins (1.0.7). Run `preflight --help` for the list on your version.

```sh
preflight login          # Authenticate
preflight scan ./MyApp   # Dry-run scan
preflight submit ./MyApp # Full analysis
```

Quick start:

```sh
brew tap tszaks/preflight
brew install preflight
preflight login
preflight scan ./MyApp
```

## How it works

- This repo is a Homebrew tap.
- `Formula/preflight.rb` tells Homebrew where to download the Preflight CLI (the npm tarball), how to check it (a SHA-256), and how to install it (`npm install` into the formula's `libexec`, then link the `preflight` command).
- `brew upgrade preflight` picks up a newer formula once one is published here.
- The formula's test runs `preflight --version` and checks that it prints the pinned version.

## Using with agents

```txt
Repo: tszaks/homebrew-preflight
Goal: Install or update the Preflight CLI with Homebrew (macOS).
Setup:
1) brew tap tszaks/preflight
2) brew install preflight
Check: preflight --version
Use: preflight scan <path>
Note: the formula pins an exact npm version. For the newest Preflight, see https://github.com/tszaks/Preflight
```

## Contributing

Formula bumps and fixes are welcome. See [CONTRIBUTING.md](CONTRIBUTING.md) for how to bump the version. Security problems go through [SECURITY.md](SECURITY.md). Bugs in Preflight itself go in the [Preflight repository](https://github.com/tszaks/Preflight/issues).

Docs: [AGENTS.md](AGENTS.md)

## License

[MIT](LICENSE) © 2026 Tyler Szakacs. This license covers the formula in this repository. Preflight is a separate project with its own license, see the [Preflight repository](https://github.com/tszaks/Preflight).
