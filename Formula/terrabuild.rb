# This file was generated by https://github.com/magnusopera/terrabuild/blob/main/.github/scripts/generate-homebrew-tap
class Terrabuild < Formula
  desc "Seamless CI/CD tool for building and deploying monorepos."
  homepage "https://terrabuild.io"
  version "0.127.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.127.0/terrabuild-0.127.0-darwin-x64.zip"
    sha256 "b873ec6269a160dadfb8ce033cf799b10b683e8afa8e13a55896d028038654f3"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.127.0/terrabuild-0.127.0-darwin-arm64.zip"
    sha256 "31a89f02e2a69c3f8c4140383664d0291deb6795c9963b89e3a1653d6e3ca945"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.127.0/terrabuild-0.127.0-linux-x64.zip"
    sha256 "2d628c0098127a128bafb8de8b7e376c786db281ee41aec9d00745b31c75d855"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.127.0/terrabuild-0.127.0-linux-arm64.zip"
    sha256 "58b492e089e689bad3684b4000f82e3cf3a3b68117be30fd65fb861407e27a1b"
  end

  conflicts_with "terrabuild"

  def install
    bin.install "terrabuild"
  end

  test do
    system "#{bin}/terrabuild version"
  end
end
