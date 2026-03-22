class Envsafe < Formula
  desc "AI-safe environment variable manager"
  homepage "https://github.com/go-to-the-future/envsafe"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/go-to-the-future/envsafe/releases/download/v0.1.0/envsafe-aarch64-macos.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/go-to-the-future/envsafe/releases/download/v0.1.0/envsafe-x86_64-macos.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/go-to-the-future/envsafe/releases/download/v0.1.0/envsafe-aarch64-linux.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/go-to-the-future/envsafe/releases/download/v0.1.0/envsafe-x86_64-linux.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "envsafe"
  end

  test do
    assert_match "envsafe", shell_output("#{bin}/envsafe 2>&1", 1)
  end
end
