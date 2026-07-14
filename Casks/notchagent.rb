cask "notchagent" do
  version "1.0.0"
  sha256 "1116c1350e530c95c29b84e9a5e963e677dce4b7d3973c38933640ce59f111fa"

  url "https://github.com/luisroquette/notchagent/releases/download/v#{version}/NotchAgent-#{version}.zip"
  name "NotchAgent"
  desc "Fuel gauge for AI agents in the MacBook notch — Claude Code & Codex quota monitor"
  homepage "https://github.com/luisroquette/notchagent"

  depends_on macos: :sonoma

  app "NotchAgent.app"

  caveats <<~EOS
    NotchAgent is free and not notarized. If macOS blocks the first launch,
    clear the quarantine flag once:
      xattr -dr com.apple.quarantine "/Applications/NotchAgent.app"
  EOS

  zap trash: [
    "~/Library/Application Support/NotchAgent",
  ]
end
