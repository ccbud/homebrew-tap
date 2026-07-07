cask "ccbud" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.2"
  sha256 arm:   "1cf1b9605fdf5192e52b977389d9cc70f6d395595f5c0d0d677dae0613691fc0",
         intel: "e3af1db9aa8b09dc21c3081f90f3731b3fd1f5c808d49249b46e4c5202d82981"

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
