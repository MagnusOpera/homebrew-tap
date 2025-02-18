# This file was generated by https://github.com/magnusopera/terrabuild/blob/main/.github/scripts/generate-homebrew-tap
class Terrabuild < Formula
  desc "Seamless CI/CD tool for building and deploying monorepos."
  homepage "https://terrabuild.io"
  version "0.120.4"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.120.4/terrabuild-0.120.4-darwin-x64.zip"
    sha256 "2ede0381c03a54edddc3762ceb565ff644505e3e8cc9073a47e3734d90b57b67"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.120.4/terrabuild-0.120.4-darwin-arm64.zip"
    sha256 "c17553b6e240f108c47c60c9750b6c03e857a18db360ad4d8766846dcace6ae7"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.120.4/terrabuild-0.120.4-linux-x64.zip"
    sha256 "b95c01addc7376a97bcf6007538648ab821defaacfd073d341eecbbd95f585ca"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.120.4/terrabuild-0.120.4-linux-arm64.zip"
    sha256 "da06138fa44c1b2038ba58d868cefaed9e6181ab348fbfed7aa7bf1c2a2c90f3"
  end

  conflicts_with "terrabuild"

  def install
    bin.install "terrabuild"
  end

  test do
    system "#{bin}/terrabuild version"
  end
end
