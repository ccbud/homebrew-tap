cask "ccbud" do
  arch arm: "arm64", intel: "x64"

  version "1.0.15"
  sha256 arm:   "06d36a7365611892a42bef1f8012abb70b942cce3f35cc44aeb8c4ffba864ed2",
         intel: "afa304e7e865dead6aa45b89232955d117258fe69d45d57f09a6f706f69884b7"

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
