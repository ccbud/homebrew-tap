cask "ccbud" do
  arch arm: "arm64", intel: "x64"

  version "1.0.16"
  sha256 arm:   "0a1dcd3dec03caf874a9c18a367b1240556a1dd71d6dedd1f12bc4de9726d9f9",
         intel: "6e3cd8bef8a9c10e9c2c51b177cf0c4ff77aad18c736d97ca5f972c8ea290d1d"

  url "https://github.com/ccbud/ccbud/releases/download/v#{version}/ccbud-#{version}-mac-#{arch}.dmg",
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
