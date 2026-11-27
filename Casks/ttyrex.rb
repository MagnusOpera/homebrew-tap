cask "ttyrex" do
  version "1.5.0"
  sha256 "fe110b8ab92a76aebd7ede4bed409c2ed9e49064f1008965c5b09c2d1897b1d8"

  url "https://github.com/MagnusOpera/ttyrex/releases/download/v#{version}/ttyrex-macos-arm64.zip"
  name "Ttyrex"
  desc "Terminal emulator based on Ghostty"
  homepage "https://github.com/MagnusOpera/ttyrex"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Ttyrex.app"
  binary "#{appdir}/Ttyrex.app/Contents/MacOS/ttyrex"
end
