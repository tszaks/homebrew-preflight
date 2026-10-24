# Security policy

## Supported versions

Only the formula on `main` is maintained.

## Reporting a vulnerability

Please report security problems privately, not in a public issue.

Use GitHub private vulnerability reporting: open the **Security** tab of this repository and choose **Report a vulnerability**. If that is not available to you, email tyler@szakacsmedia.com.

Problems in Preflight itself (the scanner) belong in the [Preflight repository](https://github.com/tszaks/Preflight). If you are not sure, report here and it will be routed.

You can expect a first reply within a few days. This repository is maintained by one person, so a fix may take longer, but you will get updates.

## What counts

`brew install preflight` downloads a tarball from the npm registry and runs `npm install` on your Mac. These areas matter most:

- **The `url` and `sha256` in `Formula/preflight.rb`.** Anything that points the formula at a tarball other than the official `preflightlaunch` package, or a checksum that does not match it.
- **The install steps.** Anything that makes the formula run extra commands, fetch other code, or write outside Homebrew's prefix.
- **Dependencies.** The formula pulls `node@22` from Homebrew and the package's npm dependencies at install time.

The Preflight CLI scans an app project on your machine. What it reads and which network requests it makes are documented in the Preflight repository.
