# homebrew-preflight

A Homebrew tap with one formula, `Formula/preflight.rb`, which installs the `preflight` CLI from the `preflightlaunch` npm package. Ruby formula plus docs. The scanner's code is in https://github.com/tszaks/Preflight, not here.

## Check
- Style: `brew style Formula/preflight.rb`.
- Install, test, audit: see the bump steps in [CONTRIBUTING.md](CONTRIBUTING.md). Do not run `brew install` or `brew uninstall` on the user's machine unless asked.
- Verify a bump: `npm view preflightlaunch version`, and compare `curl -sL https://registry.npmjs.org/preflightlaunch/-/preflightlaunch-VERSION.tgz | shasum -a 256` with the `sha256` line.

## File map
- `Formula/preflight.rb`: the formula (`url`, `sha256`, `license`, `depends_on "node@22"`, install and test blocks).
- `README.md`, `CONTRIBUTING.md`, `SECURITY.md`: user-facing docs.
- `.github/`: PR template and issue config (issues go to the Preflight repo).

## Conventions
- A bump changes three things together: the version in `url`, the `sha256`, and the version in the test's `assert_match`.
- Never invent a checksum. Always compute it from the tarball.
- Keep the tap lean: one formula. No CHANGELOG, no issue templates. Issues about Preflight go to the Preflight repo.
- The `license` line in the formula must match the package's license. The LICENSE file here (MIT) covers the formula only.
- README commands must exist in the pinned version. Check with `preflight --help` after installing that version.
- No personal data, tokens or local paths in any file.
