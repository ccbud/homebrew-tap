cask "ccbud" do
  arch arm: "arm64", intel: "x64"

  version "1.0.7"
  sha256 arm:   "e1bf4aec179cc93d50b69113a2e280084a3af28f10c6498d99f1b0babaeefdee",
         intel: "f949ffa9550665b3c0d78f7758f8aeace9d3a00605e42be101dd0b55d832761b"

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
