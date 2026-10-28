cask "wistia" do
  version "2026.3.7"
  sha256 "cda9ec3c47aef370f0dd44fb67035a7d1548fd8a1480a2b599564189847c8b8e"

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
