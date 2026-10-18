cask "notchrobot" do
  version "null"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

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
