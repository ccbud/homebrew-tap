cask "ccbud" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.3"
  sha256 arm:   "e18a593916335e827224264d693335ac04cc08132da6a57e72ac24a47c262fa0",
         intel: "ffb55920fa7c80298d513eefab5c9d0259da19362f5f7244a0e584b1518fe8b2"

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
