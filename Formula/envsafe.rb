class Envsafe < Formula
  desc "AI-safe environment variable manager"
  homepage "https://github.com/go-to-the-future/envsafe"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/go-to-the-future/envsafe/releases/download/v0.1.0/envsafe-aarch64-macos.tar.gz"
      sha256 "82144005836ca83df69eb3cb42cbe495587984e234af17bfb04c100d0c86f613"
    end
    on_intel do
      url "https://github.com/go-to-the-future/envsafe/releases/download/v0.1.0/envsafe-x86_64-macos.tar.gz"
      sha256 "4e73e24b89abb81c55e5a715327f066dcf37790312358be014859ae51d631f46"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/go-to-the-future/envsafe/releases/download/v0.1.0/envsafe-aarch64-linux.tar.gz"
      sha256 "2317d774531ea4d27ec1d0f2be84124cd759dff3ff8487aeebf6554d4af89bd0"
    end
    on_intel do
      url "https://github.com/go-to-the-future/envsafe/releases/download/v0.1.0/envsafe-x86_64-linux.tar.gz"
      sha256 "b03b199dd9d5949518322de650be38c0b4f1a0af0697d6f091cfcfd90240a9b2"
    end
  end

  def install
    bin.install "envsafe"
  end

  test do
    assert_match "envsafe", shell_output("#{bin}/envsafe 2>&1", 1)
  end
end
