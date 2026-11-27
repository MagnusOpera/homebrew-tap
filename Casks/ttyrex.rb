cask "ttyrex" do
  version "1.5.0"
  sha256 "8f7f45a3872dacb25c0ef608dc0c6bf33b934de54a2a60731909454c4320b9f7"

  url "https://github.com/MagnusOpera/ttyrex/releases/download/v#{version}/ttyrex-macos-arm64.zip"
  name "Ttyrex"
  desc "Terminal emulator based on Ghostty"
  homepage "https://github.com/MagnusOpera/ttyrex"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Ttyrex.app"
  binary "#{appdir}/Ttyrex.app/Contents/MacOS/ttyrex"
end
