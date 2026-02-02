class Thinkwell < Formula
  desc "AI agent orchestration framework"
  homepage "https://github.com/dherman/thinkwell"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.3.1/thinkwell-darwin-arm64.tar.gz"
      sha256 "9ba17cde7dfe2c1b3bb37fbb18422d5309c405b73f842384a88a525d8d9e7eee"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.3.1/thinkwell-darwin-x64.tar.gz"
      sha256 "356aace48c919efa6864e2956dfce1f741185fbbe63b8ddc9cb12627a2c6056f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.3.1/thinkwell-linux-arm64.tar.gz"
      sha256 "c9524832bcf9063fd0e0deca5fe8c05da529f66a7192e2f09e0fc3db5de96825"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.3.1/thinkwell-linux-x64.tar.gz"
      sha256 "81bfb40afef9997baf5e4067fe0f845368731a70a38d15981a3bfd69793d15ca"
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
