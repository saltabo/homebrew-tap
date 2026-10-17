cask "saltabo" do
  version "1.3.4"
  sha256 "19095acb992c98f7b92cd8f0e140f9aab5be831f5b568899476916e146b45621"

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
