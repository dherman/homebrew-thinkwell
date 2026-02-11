class ThinkwellNext < Formula
  desc "AI agent orchestration framework (pre-release channel)"
  homepage "https://github.com/dherman/thinkwell"
  version "0.5.0-alpha.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.0-alpha.1/thinkwell-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.0-alpha.1/thinkwell-darwin-x64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.0-alpha.1/thinkwell-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.0-alpha.1/thinkwell-linux-x64.tar.gz"
      sha256 "PLACEHOLDER"
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
