class Noenv < Formula
  desc "Delete your .env files. AI-safe secret manager."
  homepage "https://github.com/go-to-the-future/noenv"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/go-to-the-future/noenv/releases/download/v0.2.0/noenv-aarch64-macos.tar.gz"
      sha256 "368f054578043a6c2477e491d77a1dc7b8665c55310d0dc1447d5d718fd24581"
    end
    on_intel do
      url "https://github.com/go-to-the-future/noenv/releases/download/v0.2.0/noenv-x86_64-macos.tar.gz"
      sha256 "fe9dad429072e5a4f89929327ff870c8e88bb0d9eccbafb1a38a157a84f41f5b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/go-to-the-future/noenv/releases/download/v0.2.0/noenv-aarch64-linux.tar.gz"
      sha256 "6d5369677dd2270ab6750365d548f38055d07a9974a72a986adde3af79438bb2"
    end
    on_intel do
      url "https://github.com/go-to-the-future/noenv/releases/download/v0.2.0/noenv-x86_64-linux.tar.gz"
      sha256 "ea5ff592dfc4120af09508b9f14effaa34ea790c91aed109ee6b76bd331e5370"
    end
  end

  def install
    bin.install "noenv"
  end

  test do
    assert_match "noenv", shell_output("#{bin}/noenv 2>&1", 1)
  end
end
