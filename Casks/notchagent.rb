cask "notchagent" do
  version "1.0.1"
  sha256 "ef945e466a60eb0a923f2fed5685ca86051d7f0eb7b37e4e990bf40522e3643c"

  url "https://github.com/luisroquette/notchagent/releases/download/v#{version}/NotchAgent-#{version}.zip"
  name "NotchAgent"
  desc "Fuel gauge for Claude Code and Codex quotas in the MacBook notch"
  homepage "https://github.com/luisroquette/notchagent"

  depends_on macos: :sonoma

  app "NotchAgent.app"

  zap trash: "~/Library/Application Support/NotchAgent"

  caveats <<~EOS
    NotchAgent is free and not notarized. If macOS blocks the first launch,
    clear the quarantine flag once:
      xattr -dr com.apple.quarantine "/Applications/NotchAgent.app"
  EOS
end
