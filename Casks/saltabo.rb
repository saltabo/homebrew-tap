cask "saltabo" do
  version "1.3.5"
  sha256 "aee4f18c3a5618f91ac0ce47668f2d4b6bab3275b639b0e944a6a4126c615208"

  url "https://github.com/saltabo/saltabo.github.io/releases/download/v#{version}/Saltabo.zip"
  name "Saltabo"
  desc "Window switcher with live previews and Dock previews"
  homepage "https://saltabo.app/"

  livecheck do
    url "https://saltabo.github.io/saltabo/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Saltabo.app"

  uninstall quit: "Saltabo"

  zap trash: [
    "~/Library/Application Support/Saltabo",
    "~/Library/Caches/Saltabo",
    "~/Library/HTTPStorages/Saltabo",
    "~/Library/Preferences/Saltabo.plist",
  ]
end
