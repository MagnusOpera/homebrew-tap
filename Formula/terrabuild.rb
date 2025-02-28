# This file was generated by https://github.com/magnusopera/terrabuild/blob/main/.github/scripts/generate-homebrew-tap
class Terrabuild < Formula
  desc "Seamless CI/CD tool for building and deploying monorepos."
  homepage "https://terrabuild.io"
  version "0.122.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.122.0/terrabuild-0.122.0-darwin-x64.zip"
    sha256 "6439a3edcb6c12635d82f49039be9c90177968fbdd4d2a02a651da1e0ae774fe"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.122.0/terrabuild-0.122.0-darwin-arm64.zip"
    sha256 "35d4469b76ac0dc4951bb3f1a9deb5ae37fa33cdd0a07ef53b71ae27b7c84d2d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.122.0/terrabuild-0.122.0-linux-x64.zip"
    sha256 "b23bfa70068c3f2b79252d017d633232270ac0fca0d5a3ad622bb70dd96db480"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.122.0/terrabuild-0.122.0-linux-arm64.zip"
    sha256 "fe00f6d4f5452eebfa954d2bf02ff0a571983629043731d1f17b4f2a2939fc39"
  end

  conflicts_with "terrabuild"

  def install
    bin.install "terrabuild"
  end

  test do
    system "#{bin}/terrabuild version"
  end
end
