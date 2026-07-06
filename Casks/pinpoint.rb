cask "pinpoint" do
  version "0.3.0"
  sha256 "caa635d4da3b53a5f8f0dbdfdd888ecae7fc06b784245b6ed5ad9b26775d7a05"

  url "https://github.com/croustibat/Pinpoint/releases/download/v#{version}/Pinpoint.dmg",
      verified: "github.com/croustibat/Pinpoint/"
  name "Pinpoint"
  desc "Screen capture with numbered markers, exported as prompts for AI agents"
  homepage "https://github.com/croustibat/Pinpoint"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Pinpoint.app"

  zap trash: [
    "~/Library/Application Support/Pinpoint",
    "~/Library/Caches/app.croustibat.Pinpoint",
    "~/Library/HTTPStorages/app.croustibat.Pinpoint",
    "~/Library/Preferences/app.croustibat.Pinpoint.plist",
    "~/Library/Saved Application State/app.croustibat.Pinpoint.savedState",
  ]
end
