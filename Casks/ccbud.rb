cask "ccbud" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "7e42ab3b99367298e9a93852d016ac670aa5cd5961a3a5b716ea691b6e8f261e",
         intel: "ea3e744f3a9c3bb493ddd0df43efa13d147353037b46afea2cd497e28770455d"

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
