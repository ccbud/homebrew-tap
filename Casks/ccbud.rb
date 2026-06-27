cask "ccbud" do
  arch arm: "arm64", intel: "x64"

  version "1.0.14"
  sha256 arm:   "e1f9f9fa592fe7bed3fe226c085ebaf14c9c371380d50a78af41b2011aab10d3",
         intel: "5cdc2b4dbadef3a23fb7eff9e03f772b4e803611bcc88a92a0a6adc415f74f86"

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
