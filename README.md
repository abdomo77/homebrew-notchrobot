# homebrew-notchrobot

Homebrew tap for [NotchRobot](https://github.com/abdomo77/NotchRobot) - a little robot in your MacBook notch that keeps an eye on Claude Code.

## Install

```sh
brew install abdomo77/notchrobot/notchrobot
```

or tap first:

```sh
brew tap abdomo77/notchrobot
brew install notchrobot
```

Requirements: Apple Silicon Mac, macOS 13 (Ventura) or later.

## First launch (unsigned app)

NotchRobot releases are ad-hoc signed and not notarized, so macOS Gatekeeper blocks the first launch. Either clear the quarantine flag:

```sh
xattr -dr com.apple.quarantine /Applications/NotchRobot.app
```

or install without quarantine:

```sh
brew install --no-quarantine abdomo77/notchrobot/notchrobot
```

## Updates

A GitHub Actions workflow checks for new NotchRobot releases every 12 hours and updates the cask automatically. Run `brew upgrade notchrobot` to get the latest version.
