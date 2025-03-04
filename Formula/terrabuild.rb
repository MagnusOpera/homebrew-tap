# This file was generated by https://github.com/magnusopera/terrabuild/blob/main/.github/scripts/generate-homebrew-tap
class Terrabuild < Formula
  desc "Seamless CI/CD tool for building and deploying monorepos."
  homepage "https://terrabuild.io"
  version "0.126.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.126.2/terrabuild-0.126.2-darwin-x64.zip"
    sha256 "2428c93730f3f2d723b1d96f6cb9f8b1acd325cc06e96ee08452d5c73b91b836"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.126.2/terrabuild-0.126.2-darwin-arm64.zip"
    sha256 "a17e911bb1f3b33704cc93e0c253a029464d30b841a6680a11c54c5848d8030e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.126.2/terrabuild-0.126.2-linux-x64.zip"
    sha256 "b59c1eeaf64bda7ceec1488278d8b518d385ee57e943f1d94b50eb046558e6d1"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.126.2/terrabuild-0.126.2-linux-arm64.zip"
    sha256 "11417caae6e706177aed50848f0cb7050f39629fb1ae270814a7a8de2b1850a4"
  end

  conflicts_with "terrabuild"

  def install
    bin.install "terrabuild"
  end

  test do
    system "#{bin}/terrabuild version"
  end
end
