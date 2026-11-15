cask "unmark" do
  version "0.2.0"
  sha256 "485d0368e30d06e5af4dde02b8dd783f7fc3bf3391972fde33a9802252b1b9cf"

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
