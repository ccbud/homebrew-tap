cask "ccbud" do
  arch arm: "arm64", intel: "x64"

  version "1.0.18"
  sha256 arm:   "512d39b28b6008cf0e29dc2b1aa64cd752f32010bb9cbdf240d3fd525a01792a",
         intel: "f50caa0c3fef989741deba3ca81a76802c8ea886d0259582e4a14bd6b0e78ee8"

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
