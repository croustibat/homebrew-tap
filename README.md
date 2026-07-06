# croustibat/homebrew-tap

Homebrew tap for [Pinpoint](https://github.com/croustibat/Pinpoint) — a native
macOS menu-bar app that captures your screen, drops numbered markers on what
matters, and copies a ready-to-paste prompt for your AI agent.

## Install

```sh
brew tap croustibat/tap
brew trust croustibat/tap        # Homebrew 6+ only: trust this third-party tap
brew install --cask pinpoint
```

> **Note.** Homebrew 6 refuses to load casks from a third-party tap until you
> trust it once with `brew trust`. On older Homebrew this step isn't needed and
> can be skipped — a plain `brew install --cask croustibat/tap/pinpoint` works.

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
