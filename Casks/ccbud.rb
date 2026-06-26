cask "ccbud" do
  arch arm: "arm64", intel: "x64"

  version "1.0.13"
  sha256 arm:   "cb43f1f7386de901297af568dfc147df775afadbad6956e64279b11cd21d322e",
         intel: "6273141f68807c60d916139b315ff87bfe2ecb0ddf45c50d5044aa8455eb3a9c"

  url "https://github.com/ccbud/ccbud/releases/download/v#{version}/ccbud-#{version}-mac-#{arch}.dmg",
      verified: "github.com/ccbud/ccbud/"
  name "ccbud"
  desc "Claude Code Gateway — proxy Claude Code to any Anthropic-compatible provider"
  homepage "https://github.com/ccbud/ccbud"

  # ccbud applies JS-only releases in place (in-app hot update); `brew upgrade` handles the rest.
  auto_updates true
  depends_on macos: :big_sur

  app "ccbud.app"

  zap trash: [
    "~/Library/Application Support/ccbud",
    "~/Library/Preferences/dev.ccbud.gateway.plist",
    "~/Library/Saved Application State/dev.ccbud.gateway.savedState",
    "~/Library/Logs/ccbud",
  ]
end
