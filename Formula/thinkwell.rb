class Thinkwell < Formula
  desc "AI agent orchestration framework"
  homepage "https://github.com/dherman/thinkwell"
  version "0.5.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.5/thinkwell-darwin-arm64.tar.gz"
      sha256 "06d02e5457482191c5bd00d7fca122a41e5b0d87a20eb47194e7870078d11a32"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.5/thinkwell-darwin-x64.tar.gz"
      sha256 "5cbbe15dfef0c8a8087aa8f918504eaeb45e744cd56ad826cb0ba29c88092540"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.5/thinkwell-linux-arm64.tar.gz"
      sha256 "9dbd346f1d388e663e0bb67896fa72f74667e7aa24ad26ff1e86533c2d131c0d"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.5/thinkwell-linux-x64.tar.gz"
      sha256 "21aa6a26a26f0afaf74b089071d310279fca612f6a15ebf392ec4ee8cf73f365"
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
