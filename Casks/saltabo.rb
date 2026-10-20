cask "saltabo" do
  version "1.3.6"
  sha256 "3589454acaa06706718e5dc4ebfcc93e8ec22fbee0b0e15e6d9029a2498dbd11"

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
