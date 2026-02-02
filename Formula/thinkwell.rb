class Thinkwell < Formula
  desc "AI agent orchestration framework"
  homepage "https://github.com/dherman/thinkwell"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.3.2/thinkwell-darwin-arm64.tar.gz"
      sha256 "9a1d31815f3630c97631023fbe42dcc3bc85378a5bcfd7ddb9f85e371652e432"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.3.2/thinkwell-darwin-x64.tar.gz"
      sha256 "af7388229f6d133bfddd3a61a0916b9103897a671eee8cfefc0ac0cf3fbc05ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.3.2/thinkwell-linux-arm64.tar.gz"
      sha256 "973e8eabfaa4431fd30706d38a05f0ad61144d863b18e1071d9f15f9912f5687"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.3.2/thinkwell-linux-x64.tar.gz"
      sha256 "b285ac20d9d677934f5f1b20b5bae58b142bac30d647b99a60c1b0ac84001f2a"
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
