cask "pinpoint" do
  version "0.7.3"
  sha256 "24f6308f2fc289a996307727f20591cf0f48460e49a9ec8568e22f25adbbaa34"

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
