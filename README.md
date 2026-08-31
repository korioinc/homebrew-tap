# Homebrew Tap for Multica Setup

This is the official Homebrew tap for
[`korioinc/multica-setup`](https://github.com/korioinc/multica-setup).

## Install

```bash
brew install korioinc/tap/multica-setup
```

The formula installs the `multica-setup` command and its required
[`multica`](https://github.com/multica-ai/multica) CLI dependency.

## Upgrade

```bash
brew update
brew upgrade multica-setup
```

## Release automation

The scheduled `Update formula` workflow checks the latest public
`multica-setup` GitHub release, verifies its tag and package version, calculates
the tag archive SHA-256, validates the generated formula with Homebrew, and
commits the update. It then explicitly dispatches the macOS and Linux test-bot
workflow because bot-authenticated pushes do not trigger another workflow. No
cross-repository token is required.

Maintainers can run the same workflow immediately after publishing a release:

```bash
gh workflow run update-formula.yml \
  --repo korioinc/homebrew-tap \
  --field version=0.1.0 \
  --field tag=v0.1.0
```

Leave both inputs empty to use the latest published GitHub release. Source
releases must publish the Git tag before this workflow runs.

Pull requests and pushes to `main` are checked by Homebrew's `test-bot` on
macOS and Linux.
