cask "ccbud" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.5"
  sha256 arm:   "8cfc16a52082192e22dc0937e0542a615ade6f8cbcefdd544884694ea1b1c399",
         intel: "c11452b58f1df43af2abf69034895185caeadd809dcf6901d59add8e3c3d0c01"

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
