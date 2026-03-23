class Noenv < Formula
  desc "Delete your .env files. AI-safe secret manager with value bypass."
  homepage "https://github.com/go-to-the-future/noenv"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/go-to-the-future/noenv/releases/download/v0.4.1/noenv-aarch64-macos.tar.gz"
      sha256 "4fe3f0bfabbf59ab1e56fc80c15a02729a09e41de51716e2c0598e511aa187fa"
    end
    on_intel do
      url "https://github.com/go-to-the-future/noenv/releases/download/v0.4.1/noenv-x86_64-macos.tar.gz"
      sha256 "2b8c27c396f78d334e5e3ac93a4b06b815287a9d819a9993895ef8fd2bd1d0ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/go-to-the-future/noenv/releases/download/v0.4.1/noenv-aarch64-linux.tar.gz"
      sha256 "2f4dc917a1609925f012192dd197cc9ab62b4de84152e5beb25476f024158ead"
    end
    on_intel do
      url "https://github.com/go-to-the-future/noenv/releases/download/v0.4.1/noenv-x86_64-linux.tar.gz"
      sha256 "698b8ce9244c03fa3e3c6f1aa386f2870ff3aae8342897e58b535436385bfef1"
    end
  end

  def install
    bin.install "noenv"
  end

  test do
    assert_match "noenv", shell_output("#{bin}/noenv 2>&1")
  end
end
