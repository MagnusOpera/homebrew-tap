# This file was generated by https://github.com/magnusopera/terrabuild/blob/main/.github/scripts/generate-homebrew-tap
class Terrabuild < Formula
  desc "Seamless CI/CD tool for building and deploying monorepos."
  homepage "https://terrabuild.io"
  version "0.121.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.121.2/terrabuild-0.121.2-darwin-x64.zip"
    sha256 "3c858b04d742c54c1e2675be322382e8fa9b913ace9834041a605e03a5fa6955"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.121.2/terrabuild-0.121.2-darwin-arm64.zip"
    sha256 "767191032afc9c081ca1c677c427fdd3ed0374a178ad7c464c50e9d56f10b190"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.121.2/terrabuild-0.121.2-linux-x64.zip"
    sha256 "13f1305ab4818664b44971efb3e8567be647e47f7ff226b96522e4ab4a098697"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/magnusopera/terrabuild/releases/download/0.121.2/terrabuild-0.121.2-linux-arm64.zip"
    sha256 "170932cd26e44e4c2265f73744fa621d5fe8b001ee1f46252ade4e531e0eb7c3"
  end

  conflicts_with "terrabuild"

  def install
    bin.install "terrabuild"
  end

  test do
    system "#{bin}/terrabuild version"
  end
end
