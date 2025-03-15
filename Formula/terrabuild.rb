# This file was generated by https://github.com/magnusopera/terrabuild/blob/main/.github/scripts/generate-homebrew-tap
class Terrabuild < Formula
  desc "Seamless CI/CD tool for building and deploying monorepos."
  homepage "https://terrabuild.io"
  version "0.128.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.128.0/terrabuild-0.128.0-darwin-x64.zip"
    sha256 "db6a91c0cb4ae826596cc04632b160b7702ea1964607cf34da560058afd6e865"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.128.0/terrabuild-0.128.0-darwin-arm64.zip"
    sha256 "f0aea2ff59d57230eb4cf35bedfb1b438da7f62c65d63dcdaadb5c0aa123ac9c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.128.0/terrabuild-0.128.0-linux-x64.zip"
    sha256 "512de569b3e7a1f563339ca5ab07112d8e9485a54f4eb18d671b518fd7a31359"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.128.0/terrabuild-0.128.0-linux-arm64.zip"
    sha256 "183ea69465145e0d9dded2a549021e45208823a2f1b47841dc4bc9c3ac8a2f02"
  end

  conflicts_with "terrabuild"

  def install
    bin.install "terrabuild"
  end

  test do
    system "#{bin}/terrabuild version"
  end
end
