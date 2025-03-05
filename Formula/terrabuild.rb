# This file was generated by https://github.com/magnusopera/terrabuild/blob/main/.github/scripts/generate-homebrew-tap
class Terrabuild < Formula
  desc "Seamless CI/CD tool for building and deploying monorepos."
  homepage "https://terrabuild.io"
  version "0.126.4"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.126.4/terrabuild-0.126.4-darwin-x64.zip"
    sha256 "b8c3ce54bae1afbfdaa1a07d5eca65c6131bc692db5cf62186b9f06d84af1850"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.126.4/terrabuild-0.126.4-darwin-arm64.zip"
    sha256 "096e3bde2d59935cb83626561e1f1f53767fe36cd81c7fa46d73ee73c4efb372"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.126.4/terrabuild-0.126.4-linux-x64.zip"
    sha256 "208866681e6fde1b39b9973a3432771834dd12a8936e6a700c98e0482a7316e7"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.126.4/terrabuild-0.126.4-linux-arm64.zip"
    sha256 "dd7b4bfad968dcd3169bfae8066c545484193f5019a4769790b2e5013f5d68b2"
  end

  conflicts_with "terrabuild"

  def install
    bin.install "terrabuild"
  end

  test do
    system "#{bin}/terrabuild version"
  end
end
