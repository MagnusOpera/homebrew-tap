# This file was generated by https://github.com/magnusopera/terrabuild/blob/main/.github/scripts/generate-homebrew-tap
class Terrabuild < Formula
  desc "Seamless CI/CD tool for building and deploying monorepos."
  homepage "https://terrabuild.io"
  version "0.108.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.108.0/terrabuild-0.108.0-darwin-x64.zip"
    sha256 "1d8b1bed07e3528cce4314ab719b0c845f38fe78be7f2cec3847260860b79922"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.108.0/terrabuild-0.108.0-darwin-arm64.zip"
    sha256 "3aea11d7ab4b542f00c6f4b512b417b1e44da5f9650b8025972d38e5b8627a2f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.108.0/terrabuild-0.108.0-linux-x64.zip"
    sha256 "56af95c11eb48c98c5bad549359bd7b33090a359f7f0d1a4858059ca7528e7a4"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.108.0/terrabuild-0.108.0-linux-arm64.zip"
    sha256 "dc5a3ed198ffac972edaf3aab1b5d1987ffb407d0b9e6ebb79212d41f767e765"
  end

  conflicts_with "terrabuild"

  def install
    bin.install "terrabuild"
  end

  test do
    system "#{bin}/terrabuild version"
  end
end
