# croustibat/homebrew-tap

Homebrew tap for native macOS menu-bar apps:

- [Pinpoint](https://github.com/croustibat/Pinpoint) captures your screen, drops
  numbered markers on what matters, and copies a ready-to-paste prompt for your AI
  agent.
- [Murmure](https://github.com/croustibat/murmure) is local, system-wide voice
  dictation powered by whisper.cpp: press a shortcut, speak, and the text is typed
  where your cursor is. Apple Silicon only.

## Install

```sh
brew tap croustibat/tap
brew trust croustibat/tap        # Homebrew 6+ only: trust this third-party tap
brew install --cask pinpoint
brew install --cask murmure
```

> **Note.** Since Homebrew 6, casks from a third-party tap load only once
> trusted. `brew trust croustibat/tap` trusts the whole tap, so the short names
> above work. Installing with the full name, e.g.
> `brew install --cask croustibat/tap/murmure`, needs neither `brew tap` nor
> `brew trust`: it trusts that cask by itself. Older Homebrew skips trust
> entirely.

## Update

```sh
brew upgrade --cask pinpoint
```

Murmure updates itself (menu **Rechercher les mises à jour…**), so `brew upgrade`
leaves it alone.

## Uninstall

```sh
brew uninstall --cask pinpoint          # remove the app
brew uninstall --zap --cask pinpoint    # also remove preferences & saved captures
brew uninstall --cask murmure           # remove the app
brew uninstall --zap --cask murmure     # also remove settings, history & the Whisper model
```

---

Each cask tracks the latest signed & notarized release of its app
([Pinpoint](https://github.com/croustibat/Pinpoint/releases/latest),
[Murmure](https://github.com/croustibat/murmure/releases/latest)) and is bumped
on each release by a script in the app's repo: `scripts/update-cask.sh` for
Pinpoint, `script/update-cask.sh` for Murmure.
