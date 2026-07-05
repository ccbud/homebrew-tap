cask "ccbud" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "352f0d2a59fd0d56a9bb342b7a5957ce7c5f1fb4b1fbdf356e09fdbded968745",
         intel: "aefca74fdc4f21341af7321d4a0f6e2a0a4e91ba0c3f72e618abc8138098725b"

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
