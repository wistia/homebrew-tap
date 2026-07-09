cask "wistia" do
  version "2026.2.19"
  sha256 "ebc7d61fe8f98ae4ac7ec117c7a4817d6f10cf7153011f00520999299f8ee4c5"

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
