cask "wistia" do
  version "2026.2.8"
  sha256 "5a297efab6e7f7fe093d7514ee8995fc7546e6c0ed672288df0d6d8c52a61654"

  url "https://wistia-glass-updates.s3.amazonaws.com/Glass-#{version}.dmg"
  name "Wistia"
  desc "Desktop screen recorder with direct Wistia upload"
  homepage "https://github.com/wistia/glass"

  depends_on macos: ">= :tahoe"

  app "Wistia.app"

  zap trash: [
    "~/Library/Application Support/com.wistia.glass",
    "~/Library/Preferences/com.wistia.glass.plist",
  ]
end
