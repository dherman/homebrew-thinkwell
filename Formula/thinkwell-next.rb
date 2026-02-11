class ThinkwellNext < Formula
  desc "AI agent orchestration framework (pre-release channel)"
  homepage "https://github.com/dherman/thinkwell"
  version "0.5.0-alpha.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.0-alpha.2/thinkwell-darwin-arm64.tar.gz"
      sha256 "427a8840fee304e5eaa772f7a77bb2c30561a6e7313adcb1b30ba9d85e5e45d7"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.0-alpha.2/thinkwell-darwin-x64.tar.gz"
      sha256 "913ffcbe4f05214bc6c8495425b929230336f6af78f447bcf1bf726f5f948987"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.0-alpha.2/thinkwell-linux-arm64.tar.gz"
      sha256 "a31c7ee8f0cd9fee0060709b8edcdad24906ff89fbf5c368a7627c8d92de892b"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.0-alpha.2/thinkwell-linux-x64.tar.gz"
      sha256 "f28acda9ae095097bdb72ad31d05d56a0dec55135a9055d06ed844cd3314286e"
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
