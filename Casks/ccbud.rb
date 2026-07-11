cask "ccbud" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.1"
  sha256 arm:   "263aa74c2b28a03071ac9c2eaf668c2eecac2fdb05361ab35b10c22dcf7529f1",
         intel: "59333885e9235b6e086e4d3f341ccb9f9ff09be0f5ba73cf65876671cf87517c"

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
