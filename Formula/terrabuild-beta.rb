# This file was generated by https://github.com/magnusopera/terrabuild/blob/main/.github/scripts/generate-homebrew-tap
class TerrabuildBeta < Formula
  desc "Seamless CI/CD tool for building and deploying monorepos."
  homepage "https://terrabuild.io"
  version "0.135.11-beta"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.135.11-beta/terrabuild-0.135.11-beta-darwin-x64.zip"
    sha256 "d9f639ad35e53f095a66244efeba95a77a0fd1281c71bf6a1a359653cff8723f"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.135.11-beta/terrabuild-0.135.11-beta-darwin-arm64.zip"
    sha256 "cccfcd36ad698447fefc0ded267f353ef3ebb743eae781cd47844f2915714f7f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.135.11-beta/terrabuild-0.135.11-beta-linux-x64.zip"
    sha256 "1d77044f225a4a6968920c4c0b2ac8455b5f8e766e5fab0fb8a86adc775db419"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.135.11-beta/terrabuild-0.135.11-beta-linux-arm64.zip"
    sha256 "2a81a7e42ccd2411b1c8b126d551d6689426f848834133d7ce7a7508bf76d0a6"
  end

  conflicts_with "terrabuild"
  conflicts_with "terrabuild-alpha"
  conflicts_with "terrabuild-beta"

  def install
    bin.install "terrabuild"
  end

  test do
    system "#{bin}/terrabuild version"
  end
end
