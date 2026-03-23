class Noenv < Formula
  desc "Delete your .env files. AI-safe secret manager with value bypass."
  homepage "https://github.com/go-to-the-future/noenv"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/go-to-the-future/noenv/releases/download/v0.5.0/noenv-aarch64-macos.tar.gz"
      sha256 "922bbe50edbb614e445925f45a1240fbdb56be3a36505c1d4b4e55c47cdadc20"
    end
    on_intel do
      url "https://github.com/go-to-the-future/noenv/releases/download/v0.5.0/noenv-x86_64-macos.tar.gz"
      sha256 "ba77654d9d30fa5231a1a1bebcf7c2379bb4a6db1e08400ace04402e34b46c59"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/go-to-the-future/noenv/releases/download/v0.5.0/noenv-aarch64-linux.tar.gz"
      sha256 "0c2d649281dd49beac1e13318d6d0a00d808332c11fae4ae91717228aaf09f66"
    end
    on_intel do
      url "https://github.com/go-to-the-future/noenv/releases/download/v0.5.0/noenv-x86_64-linux.tar.gz"
      sha256 "c33df14e8d46ad5c9735386520d86da262962f7923432d8da5aa10bf8f56a67d"
    end
  end

  def install
    bin.install "noenv"
  end

  test do
    assert_match "noenv", shell_output("#{bin}/noenv 2>&1")
  end
end
