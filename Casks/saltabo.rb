cask "saltabo" do
  version "1.3.3"
  sha256 "2b25a9ebe91f102d083074d5ec55dcd5f04316fdd2317ff80ec86eecb359b867"

  url "https://github.com/saltabo/saltabo.github.io/releases/download/v#{version}/Saltabo.zip"
  name "Saltabo"
  desc "Window switcher with live previews and Dock previews"
  homepage "https://saltabo.xyz/"

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
