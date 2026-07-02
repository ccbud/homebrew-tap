cask "ccbud" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.6"
  sha256 arm:   "0e6c8c7d1704dc40001d53d70817545372aae4b454c5f02a55f2a5b48da01178",
         intel: "0a575d4a7acbd5f32f21a0ae32534393f5f37fb291091335b265fab81f65de9b"

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
