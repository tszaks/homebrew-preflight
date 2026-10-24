# Contributing to homebrew-preflight

This tap has one formula. The most common change is a version bump.

For bugs in Preflight itself, open an issue in the [Preflight repository](https://github.com/tszaks/Preflight/issues). Security problems go through [SECURITY.md](SECURITY.md).

## Bump the formula

You need Homebrew on macOS.

1. Find the version to ship on npm:

   ```sh
   npm view preflightlaunch version
   ```

2. Get the SHA-256 of that version's tarball:

   ```sh
   curl -sL https://registry.npmjs.org/preflightlaunch/-/preflightlaunch-VERSION.tgz | shasum -a 256
   ```

3. In `Formula/preflight.rb`, change three things: the version in the `url`, the `sha256`, and the version string in the `test` block's `assert_match`.
4. Check the `license` line against the license in the new package's `package.json` (`npm view preflightlaunch@VERSION license`). Update it if it changed.
5. Check style:

   ```sh
   brew style Formula/preflight.rb
   ```

6. Install and test from your checkout, then audit:

   ```sh
   brew install --build-from-source ./Formula/preflight.rb
   brew test preflight
   brew audit --strict --new --formula ./Formula/preflight.rb
   ```

   Newer Homebrew versions refuse to audit or install from a bare path. If yours does, run these against the tap (`brew tap tszaks/preflight`, then work in `$(brew --repository tszaks/preflight)`).

7. Open a pull request. Use the commit style already in the history: `chore: bump formula to vX.Y.Z`.

## Pull request checklist

- [ ] `url`, `sha256` and the test version all match the same release.
- [ ] `brew style` passes.
- [ ] `brew install` and `brew test` pass on a clean install.
- [ ] `license` matches the package.
- [ ] README commands still exist in this version (`preflight --help`).

## Style

Match the surrounding formula. Keep the tap small: one formula, no extras.

## License

By contributing you agree that your contribution is licensed under the [MIT License](LICENSE).
