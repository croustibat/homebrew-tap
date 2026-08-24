cask "pinpoint" do
  version "0.7.2"
  sha256 "5cc02625526ca5f5780f989e68d14353080877feb2c957147c9a2f234f0470fe"

  url "https://github.com/croustibat/Pinpoint/releases/download/v#{version}/Pinpoint.dmg"
  name "Pinpoint"
  desc "Screen capture with numbered markers, exported as prompts for AI agents"
  homepage "https://github.com/croustibat/Pinpoint"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Pinpoint.app"
  # The `pinpoint` CLI and MCP server ship inside the bundle, signed and
  # notarized with the app. Link it onto the PATH so scripts and agents can
  # call it; the app itself offers the same thing for direct downloads.
  binary "#{appdir}/Pinpoint.app/Contents/Helpers/pinpoint"

  zap trash: [
    "~/Library/Application Support/Pinpoint",
    "~/Library/Caches/app.croustibat.Pinpoint",
    "~/Library/HTTPStorages/app.croustibat.Pinpoint",
    "~/Library/Preferences/app.croustibat.Pinpoint.plist",
    "~/Library/Saved Application State/app.croustibat.Pinpoint.savedState",
  ]
end
