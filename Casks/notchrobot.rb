cask "notchrobot" do
  version "2.5"
  sha256 "4f5ed59cc2f4df3fbb9511901ed901e09d659cdf16e7a813387f83a338a442bd"

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
