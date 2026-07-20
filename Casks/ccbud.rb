cask "ccbud" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.6"
  sha256 arm:   "d38a2a3008113505d918c3429d094a46050604b78bc922738a884832450d1963",
         intel: "4342a5f7b1d8bdbc0263e2eedf16f4bfeedc6556ca36ee746897d6e4aa54c9d0"

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
