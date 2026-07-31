cask "notchagent" do
  version "3.0.0"
  sha256 "3e834acb49ae4bd9f2f447b2d5f9a40aaa22005473748b152f091114011a80a6"

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
