cask "ccbud" do
  arch arm: "arm64", intel: "x64"

  version "1.0.8"
  sha256 arm:   "df6bb6ec2421a1fd76a25f22b41eda310bf36a961908a016ca928e2fc0c0e675",
         intel: "fcac3f1ec4fe689d014808e114920091cb7c146d9897f91a157ec699f165ad64"

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
