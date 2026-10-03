cask "glint" do
  version "0.2.0"
  sha256 "f79266c3eb2c872c00a480335cf4bb3a79a8b9ebebc437d22c68f12b167d542c"

  url "https://github.com/jordan-jakisa/glint/releases/download/v#{version}/Glint-#{version}.dmg"
  name "Glint"
  desc "Fast native git panel: read the diff, stage, and commit"
  homepage "https://github.com/jordan-jakisa/glint"

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "Glint.app"

  # Releases aren't notarized, so macOS would block the app on first open.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Glint.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.kerustudios.glint.plist",
    "~/Library/Saved Application State/com.kerustudios.glint.savedState",
  ]
end
