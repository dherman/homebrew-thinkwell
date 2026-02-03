class Thinkwell < Formula
  desc "AI agent orchestration framework"
  homepage "https://github.com/dherman/thinkwell"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.4.3/thinkwell-darwin-arm64.tar.gz"
      sha256 "577bde13b819033ee99c29e39bd0b051395bec13bb462abfda6c689a1b06bb0e"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.4.3/thinkwell-darwin-x64.tar.gz"
      sha256 "5702aa8a446ff271f0fa6556c4331de8a99d15cdce3bf017716da6b93eb4f81c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.4.3/thinkwell-linux-arm64.tar.gz"
      sha256 "b64e65717ebac8ef2b94b8a551054b96c92d2cc88f31d7e73eb584b94679a838"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.4.3/thinkwell-linux-x64.tar.gz"
      sha256 "9df917caf8516b77c95964219f8c7218ae37904600556ac1975e04a9a9570fdb"
    end
  end

  def install
    # The tarball contains a single binary named thinkwell-<platform>
    # Find and install it as 'thinkwell'
    binary = Dir["thinkwell-*"].first
    bin.install binary => "thinkwell"
  end

  test do
    assert_match "thinkwell", shell_output("#{bin}/thinkwell --version")
  end
end
