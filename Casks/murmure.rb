cask "murmure" do
  version "1.3.0"
  sha256 "70af52b3fa0d6da1eaeffc104c2a79f08219f64bb48cedbb5e56d8dbbe527985"

  url "https://github.com/croustibat/murmure/releases/download/v#{version}/Murmure.dmg"
  name "Murmure"
  desc "Local, system-wide voice dictation (whisper.cpp)"
  homepage "https://github.com/croustibat/murmure"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Sparkle updates the app in place; `brew upgrade` leaves it alone.
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Murmure.app"

  # ~/.local/share/murmure holds the user's settings, vocabulary, corrections,
  # history and the ~550 MB Whisper model the app downloads on first launch.
  # The LaunchAgent only exists when macOS refused the login item.
  zap trash: [
    "~/.local/share/murmure",
    "~/Library/Caches/dev.croustibat.murmure",
    "~/Library/HTTPStorages/dev.croustibat.murmure",
    "~/Library/HTTPStorages/dev.croustibat.murmure.binarycookies",
    "~/Library/LaunchAgents/dev.croustibat.murmure.plist",
    "~/Library/Preferences/dev.croustibat.murmure.plist",
  ]
end
