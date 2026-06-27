cask "ccbud" do
  arch arm: "arm64", intel: "x64"

  version "1.0.17"
  sha256 arm:   "2e2ab539174cc63aac6cfa4ef43cf1471c16d2a0d78f87042e49a5130209861c",
         intel: "4c48a572fc50170a862bd5ccbd01842fe302740eaa2f1147dd3f0fce4e6ed69a"

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
