cask "pinpoint" do
  version "0.7.1"
  sha256 "74de2bb66dc104d2faeb2d4ed3e2aff846f9e279da5f96df9927ec95d34f50d0"

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
