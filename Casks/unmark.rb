cask "unmark" do
  version "0.1.0"
  sha256 "848d0a40452c6c75275d66b9c5ed1d9e216a48d34131353534b0fffa1b8d6c69"

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
