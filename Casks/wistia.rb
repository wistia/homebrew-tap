cask "wistia" do
  version "2026.2.13"
  sha256 "c639a7af06a20194afcc3e4c9bc8e4b3a2d40e3071cab1e994b3ecfe92cca2de"

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
