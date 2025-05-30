# This file was generated by https://github.com/magnusopera/terrabuild/blob/main/.github/scripts/generate-homebrew-tap
class Terrabuild < Formula
  desc "Seamless CI/CD tool for building and deploying monorepos."
  homepage "https://terrabuild.io"
  version "0.135.25"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.135.25/terrabuild-0.135.25-darwin-x64.zip"
    sha256 "a5809ccd878b2ad82117bec07cb2d1342dee3fe54673e7598fbb1f3528a974fe"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.135.25/terrabuild-0.135.25-darwin-arm64.zip"
    sha256 "57baae032f1e619380a28b7f8d1dfd6fb022284e81194d790f2b93eac5a14d64"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.135.25/terrabuild-0.135.25-linux-x64.zip"
    sha256 "9209aaa4bcdbb877d1466943d4d12abb8985cc5489d04dea9f91df8256c7d818"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.135.25/terrabuild-0.135.25-linux-arm64.zip"
    sha256 "c87b4f21339236596d579c15f7a51f7ca520a35bacb3ded9bc00b54185958a65"
  end

  conflicts_with "terrabuild"
  conflicts_with "terrabuild-next"

  def install
    bin.install "terrabuild"
  end

  test do
    system "#{bin}/terrabuild version"
  end
end
