cask "ccbud" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.2"
  sha256 arm:   "791c08f60060d3b74587e32be93ed2d5830d1070452a83d800b0d357ae8476b1",
         intel: "fcfc422d274a6b705fe6210a191fbf346aad73858be3840be7349c9d9ae35fc9"

  url "https://github.com/ccbud/ccbud/releases/download/v#{version}/ccbud_#{version}_#{arch}.dmg",
      verified: "github.com/ccbud/ccbud/"
  name "ccbud"
  desc "Coding CLI buddy — Claude Code gateway plus Claude Code/Codex session browser"
  homepage "https://github.com/ccbud/ccbud"

  # ccbud can update itself in-app; Homebrew handles normal cask upgrades.
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
