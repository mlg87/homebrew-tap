cask "unmark" do
  version "0.0.1-rc1"
  sha256 "28045c2752475bc1fc2dde0c020a8fcaa9e6beffb64f9f30469bf095c32710eb"

  url "https://github.com/mlg87/unmark/releases/download/v#{version}/Unmark-#{version}.dmg"
  name "Unmark"
  desc "Lightweight GitHub-flavored markdown viewer and editor"
  homepage "https://github.com/mlg87/unmark"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:-[\w.]+)?)$/i)
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Unmark.app"
  binary "#{appdir}/Unmark.app/Contents/Helpers/unmark", target: "unmark"

  zap trash: [
    "~/Library/Caches/com.mlg87.unmark",
    "~/Library/Preferences/com.mlg87.unmark.plist",
  ]
end
