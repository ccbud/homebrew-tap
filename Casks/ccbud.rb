cask "ccbud" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.3"
  sha256 arm:   "bf895b9c2729a0ac749bec5c1bab5fd4666a3cb054a01333522b0e2b74e8eb33",
         intel: "589a9edb528569c40ef018d6af3bbd6132c8d5be446eac79e746e909d049efc0"

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
