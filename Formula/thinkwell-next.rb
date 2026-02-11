class ThinkwellNext < Formula
  desc "AI agent orchestration framework (pre-release channel)"
  homepage "https://github.com/dherman/thinkwell"
  version "0.5.0-alpha.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.0-alpha.4/thinkwell-darwin-arm64.tar.gz"
      sha256 "b41d686754d700ff1215a7db6b30945406a6a9dcbd18cb55fb6929531be4b853"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.0-alpha.4/thinkwell-darwin-x64.tar.gz"
      sha256 "9a8ddad0cccfdc2f6e4ff5d73f8cdc20496004bbf5f5105b62c1efc08a2e6375"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.0-alpha.4/thinkwell-linux-arm64.tar.gz"
      sha256 "c8c9004921a67bf3390fd90c7d639056ef94796c20e83d98d47c4ff433988aef"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.0-alpha.4/thinkwell-linux-x64.tar.gz"
      sha256 "2a83a6c98c12268cade2a64c892d372aaac86a82e53bf4f2e340f25add0e283f"
    end
  end

  def install
    # The tarball contains a single binary named thinkwell-<platform>
    # Find and install it as 'thinkwell'
    binary = Dir["thinkwell-*"].first
    bin.install binary => "thinkwell"
  end

  def caveats
    <<~EOS
      This is a pre-release version (alpha channel).
      For stable releases, use:
        brew install dherman/thinkwell/thinkwell
    EOS
  end

  test do
    assert_match "thinkwell", shell_output("#{bin}/thinkwell --version")
  end
end
