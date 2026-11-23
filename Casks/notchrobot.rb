cask "notchrobot" do
  version "2.6"
  sha256 "2c0fc053eb9577ded1eec29c15e086a524c95e36bbe55f4838095486475a846f"

  url "https://github.com/abdomo77/NotchRobot/releases/download/v#{version}/NotchRobot.zip"
  name "NotchRobot"
  desc "Robot in your MacBook notch that keeps an eye on Claude Code"
  homepage "https://github.com/abdomo77/NotchRobot"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "NotchRobot/NotchRobot.app"

  caveats <<~EOS
    NotchRobot is ad-hoc signed and not notarized. If macOS blocks the first
    launch, remove the quarantine flag:
      xattr -dr com.apple.quarantine /Applications/NotchRobot.app
    or reinstall with: brew install --no-quarantine abdomo77/notchrobot/notchrobot
  EOS
end
