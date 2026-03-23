class Noenv < Formula
  desc "Delete your .env files. AI-safe secret manager with value bypass."
  homepage "https://github.com/go-to-the-future/noenv"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/go-to-the-future/noenv/releases/download/v0.4.0/noenv-aarch64-macos.tar.gz"
      sha256 "14323c7031b9693471cd953dfbe58ded2a91a5f221cdbc01c1327f8bbd9a1e25"
    end
    on_intel do
      url "https://github.com/go-to-the-future/noenv/releases/download/v0.4.0/noenv-x86_64-macos.tar.gz"
      sha256 "6634b5afea2da915b9f6a1a039226fb0f90ba8736031eb92298c49946f9f9d46"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/go-to-the-future/noenv/releases/download/v0.4.0/noenv-aarch64-linux.tar.gz"
      sha256 "05cd9909bc0e1c0318069510f46ac31315f7249dfb4b89a678f5442fc78a44de"
    end
    on_intel do
      url "https://github.com/go-to-the-future/noenv/releases/download/v0.4.0/noenv-x86_64-linux.tar.gz"
      sha256 "4693b095aaf1dce985f0ec28148bf62a6b504d7de9826235a6e869c1a4f943bb"
    end
  end

  def install
    bin.install "noenv"
  end

  test do
    assert_match "noenv", shell_output("#{bin}/noenv 2>&1")
  end
end
