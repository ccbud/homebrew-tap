cask "ccbud" do
  arch arm: "arm64", intel: "x64"

  version "1.0.11"
  sha256 arm:   "fcae0c5436f9a605bbee6e779c3ef6e11ca161a470d69935e3b1f6fcd5ea18f8",
         intel: "ca9b1489e587094d7235ccc5ad734c48295e8af945ac96bdadcd183aa73d157b"

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
