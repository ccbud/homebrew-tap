cask "ccbud" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.4"
  sha256 arm:   "f3a0449624e6cb27a8b0f3eb4ca82963dbc1a4d1afb98b7b02e4eb2346398e41",
         intel: "e74d20350960bbb3f80ef55d30091a23459fd0150ce9dfb13ef0e15f1b211071"

  url "https://github.com/ccbud/ccbud/releases/download/v#{version}/ccbud_#{version}_#{arch}.dmg",
      verified: "github.com/ccbud/ccbud/"
  name "ccbud"
  desc "Claude Code Gateway — proxy Claude Code to any Anthropic-compatible provider"
  homepage "https://github.com/ccbud/ccbud"

  # ccbud applies JS-only releases in place (in-app hot update); `brew upgrade` handles the rest.
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
