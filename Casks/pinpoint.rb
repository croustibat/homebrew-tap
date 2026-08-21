cask "pinpoint" do
  version "0.7.0"
  sha256 "54835049f89e6aeb5d2bfd557921bca4207a56884dae0634e58666f17c007d0c"

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

  zap trash: [
    "~/Library/Application Support/Pinpoint",
    "~/Library/Caches/app.croustibat.Pinpoint",
    "~/Library/HTTPStorages/app.croustibat.Pinpoint",
    "~/Library/Preferences/app.croustibat.Pinpoint.plist",
    "~/Library/Saved Application State/app.croustibat.Pinpoint.savedState",
  ]
end
