class Thinkwell < Formula
  desc "AI agent orchestration framework"
  homepage "https://github.com/dherman/thinkwell"
  version "0.5.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.7/thinkwell-darwin-arm64.tar.gz"
      sha256 "6d5a25623356efd6782c76f62625c472fd92ac269ee4e816c667cd00b1574cd2"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.7/thinkwell-darwin-x64.tar.gz"
      sha256 "33bb6f89e8ded9083c29dd418b4895b6fa763376a715d1e405d1b04d4f4a19ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.7/thinkwell-linux-arm64.tar.gz"
      sha256 "7aef1b5d7bc9d76452791b113b15046bd551a6b3015a5af3e4c22b4db73f1207"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.7/thinkwell-linux-x64.tar.gz"
      sha256 "c0bcb0e1ca5c9bef1b4ee79b111f95fb2844f0a177cb99dad029b2d359835d42"
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
