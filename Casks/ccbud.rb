cask "ccbud" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.5"
  sha256 arm:   "b171bedb1b62ad7823ea79512c3410f2befb4bbd602315ca1b62881c85a42c0a",
         intel: "e55df95e1011442de37c69dd277bebd15ff0b648caf5495ed80a9252e356cbb0"

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
