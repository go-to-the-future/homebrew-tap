class Noenv < Formula
  desc "Delete your .env files. AI-safe secret manager."
  homepage "https://github.com/go-to-the-future/noenv"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/go-to-the-future/noenv/releases/download/v0.3.0/noenv-aarch64-macos.tar.gz"
      sha256 "68504c46adec014ecac7eeac894a7f3348266d478d3aaf355f05eb27283229a7"
    end
    on_intel do
      url "https://github.com/go-to-the-future/noenv/releases/download/v0.3.0/noenv-x86_64-macos.tar.gz"
      sha256 "e8b12e189d2c8c5d26861346fa3ddfc47dd0276ddc26796928c0ccc3ab5a92e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/go-to-the-future/noenv/releases/download/v0.3.0/noenv-aarch64-linux.tar.gz"
      sha256 "77d3d563669f241517cf5facab80dedc4ec923822a0fe709e90ca9af15e2d2b1"
    end
    on_intel do
      url "https://github.com/go-to-the-future/noenv/releases/download/v0.3.0/noenv-x86_64-linux.tar.gz"
      sha256 "3a1fbd0f25c5e72d3791aff2569813aa0cbdd66de1ab4d79236186a91857ff14"
    end
  end

  def install
    bin.install "noenv"
  end

  test do
    assert_match "noenv", shell_output("#{bin}/noenv 2>&1")
  end
end
