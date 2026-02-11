class ThinkwellNext < Formula
  desc "AI agent orchestration framework (pre-release channel)"
  homepage "https://github.com/dherman/thinkwell"
  version "0.5.0-alpha.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.0-alpha.3/thinkwell-darwin-arm64.tar.gz"
      sha256 "db9da95d5d7a395cb2fa9bc3210c74b4600681e29b758e4e14b79c4f0552a57f"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.0-alpha.3/thinkwell-darwin-x64.tar.gz"
      sha256 "345714a4cbf7f679ff0c46b6ac5835d4b8098d092709a4376562afad5a755bc2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.0-alpha.3/thinkwell-linux-arm64.tar.gz"
      sha256 "1844c1b436702b63e7dd22649bfe2a8299bfbf5a630a8b9fa44624e7dc9520fa"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.0-alpha.3/thinkwell-linux-x64.tar.gz"
      sha256 "fb8d0aa86b91b3207f0a31e044e6c864317efae89f792c4a677e3bc310dad091"
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
