cask "ccbud" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.5"
  sha256 arm:   "79c93018d186e5dee4b22e94380f379d0f29bb43083060734dd334d4480a6454",
         intel: "a2a7fdf617ff605a6117fe405c94b0d0b79cd5813683c34fa6b66af76270dd2e"

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
