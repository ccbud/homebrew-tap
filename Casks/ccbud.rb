cask "ccbud" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.3"
  sha256 arm:   "afe04faee861f2fc68f925dd83df484ce5cf48997eaab772b89c80ef218cf9c8",
         intel: "f2982935e10c83a39690b5317404d68888e27b8a335e27ce35534891a516b98a"

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
