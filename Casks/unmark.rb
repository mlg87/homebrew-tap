cask "unmark" do
  version "0.3.0"
  sha256 "a79237965bfb33febf388dfbf215de9fc47ef97d5547d46e179ea0f24c4fca17"

  url "https://github.com/mlg87/unmark/releases/download/v#{version}/Unmark-#{version}.dmg"
  name "Unmark"
  desc "Lightweight GitHub-flavored markdown viewer and editor"
  homepage "https://unmarkeditor.com/"

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
