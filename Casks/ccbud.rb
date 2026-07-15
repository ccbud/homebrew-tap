cask "ccbud" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.4"
  sha256 arm:   "ecc80ac8fb52a78cae9ba1ea5fe9edf8dfd06f544a08f0d55e738c0ee9f9d2e8",
         intel: "305c5fb8ce2622e0e3dc587da7b1efdc2bd80b8258fb9a834b3a23bfe488c5a6"

  url "https://github.com/ccbud/ccbud/releases/download/v#{version}/CCBuddy_#{version}_#{arch}.dmg",
      verified: "github.com/ccbud/ccbud/"
  name "CCBuddy"
  desc "CCBuddy — Claude Code gateway plus Claude Code/Codex session browser"
  homepage "https://github.com/ccbud/ccbud"

  # CCBuddy can update itself in-app; Homebrew handles normal cask upgrades.
  auto_updates true
  depends_on macos: :big_sur

  app "CCBuddy.app"

  zap trash: [
    "~/Library/Application Support/ccbud",
    "~/Library/Preferences/dev.ccbud.gateway.plist",
    "~/Library/Saved Application State/dev.ccbud.gateway.savedState",
    "~/Library/Logs/ccbud",
  ]
end
