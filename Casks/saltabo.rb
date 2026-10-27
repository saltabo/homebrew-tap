cask "saltabo" do
  version "1.3.9"
  sha256 "dc28befaf06cc13fc33688bfff17d0686f85581faf130c7c10bbe4cbe5c9629a"

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
