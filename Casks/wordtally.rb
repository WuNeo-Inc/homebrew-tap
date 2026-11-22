cask "wordtally" do
  arch arm: "arm64", intel: "x64"

  version "0.6.6-beta.16"
  sha256 arm:   "fa64b146ac75866ae96e9adc7ed5fe72cfe757979b957e7ccfb3358f86ce1d26",
         intel: "ced8d867f8cf317a94be0e8c24cdb893f3eb80d80c30a8465321ae120c1f394b"

  # No `verified:` although the download host is not the homepage's: Homebrew
  # verifies that by itself and warns about the parameter.
  url "https://app-update-feed.wuneo.com/wordtally/WordTally-#{version}-#{arch}.dmg"
  name "WordTally"
  desc "Quiet, privacy-first word counter across all your apps"
  homepage "https://getwordtally.com/"

  # The app updates itself (electron-updater); Homebrew leaves it alone once installed.
  auto_updates true
  depends_on macos: :monterey

  app "WordTally.app"

  uninstall quit: "com.wuneo.wordtally"

  zap trash: [
    "~/Library/Application Support/com.wuneo.wordtally",
    "~/Library/Application Support/WordTally",
    "~/Library/Caches/com.wuneo.wordtally",
    "~/Library/HTTPStorages/com.wuneo.wordtally",
    "~/Library/Preferences/com.wuneo.wordtally.plist",
  ]
end
