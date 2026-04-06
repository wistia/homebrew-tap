cask "wistia" do
  version "2026.2.9"
  sha256 "8b736d1f08a09a8d56f8c64d30a497d71ef74436213dff740f0041ce6c9a5397"

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
