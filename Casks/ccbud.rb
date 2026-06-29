cask "ccbud" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.1"
  sha256 arm:   "6064e0e3d0ed8627fe6389cc96d8dfc0d7a7c86ce0fbc36c46ab5596e3c98b6d",
         intel: "5d89177730354e5f4776d2aa83df103e5f18fc6262bedbaf8285f268537afc07"

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
