cask "ccbud" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.7"
  sha256 arm:   "df674b50af9bd8a8a76937c898d42c20bedeb075b2336a1c8a47cb63f546e5f0",
         intel: "009ec5e189122acbbc5073cd47d1d40677888b3d4da566935e29121eddb66691"

  url "https://github.com/ccbud/ccbud/releases/download/v#{version}/CC.Buddy_#{version}_#{arch}.dmg",
      verified: "github.com/ccbud/ccbud/"
  name "CC Buddy"
  desc "CC Buddy — Claude Code gateway plus Claude Code/Codex session browser"
  homepage "https://github.com/ccbud/ccbud"

  # CC Buddy can update itself in-app; Homebrew handles normal cask upgrades.
  auto_updates true
  depends_on macos: :big_sur

  app "CC Buddy.app"

  zap trash: [
    "~/Library/Application Support/ccbud",
    "~/Library/Preferences/dev.ccbud.gateway.plist",
    "~/Library/Saved Application State/dev.ccbud.gateway.savedState",
    "~/Library/Logs/ccbud",
  ]
end
