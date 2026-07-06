cask "ccbud" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.1"
  sha256 arm:   "377f515dca803587c999f27edbd5e86e5997b3c74d9ce7c5698a78086633e8c4",
         intel: "860fc28724642c8ff22771d5b66d95446455d8356eed841f2777fc198f314503"

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
