# croustibat/homebrew-tap

Homebrew tap for [Pinpoint](https://github.com/croustibat/Pinpoint) — a native
macOS menu-bar app that captures your screen, drops numbered markers on what
matters, and copies a ready-to-paste prompt for your AI agent.

## Install

```sh
brew install --cask croustibat/tap/pinpoint
```

Or tap first, then install:

```sh
brew tap croustibat/tap
brew install --cask pinpoint
```

## Update

```sh
brew upgrade --cask pinpoint
```

## Uninstall

```sh
brew uninstall --cask pinpoint          # remove the app
brew uninstall --zap --cask pinpoint    # also remove preferences & saved captures
```

---

The [`pinpoint`](Casks/pinpoint.rb) cask tracks the latest signed & notarized
release from the [Pinpoint releases page](https://github.com/croustibat/Pinpoint/releases/latest).
It is bumped automatically on each release by `scripts/update-cask.sh` in the
main repo.
