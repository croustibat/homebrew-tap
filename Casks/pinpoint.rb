cask "pinpoint" do
  version "0.7.1"
  sha256 "95cc63fc0f5e887094c0bae0703f9e4eeb64a772e0fb419a466328efead69d20"

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
