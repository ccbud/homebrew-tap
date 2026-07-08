cask "ccbud" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.4"
  sha256 arm:   "8480ccd5889c0bcaaee158bd7e3a5aab7c389d896c629f209612fcf769a6667d",
         intel: "fcb1fa14d2ae1505027d2cdd5983c5693da6eae2da142ccc45d0e7dbac217093"

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
