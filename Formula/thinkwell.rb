class Thinkwell < Formula
  desc "AI agent orchestration framework"
  homepage "https://github.com/dherman/thinkwell"
  version "0.3.0-alpha.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.3.0-alpha.1/thinkwell-darwin-arm64.tar.gz"
      sha256 "babf755639b63b97e3b8da2f1f5099f792789331f8a7e19d1fb4cc9dcee0f62c"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.3.0-alpha.1/thinkwell-darwin-x64.tar.gz"
      sha256 "a95b2744d8a513d41497f01a43a2c436b1ed6f872b9a24465fa5ce5a8ca11de2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.3.0-alpha.1/thinkwell-linux-arm64.tar.gz"
      sha256 "974a8d02251638dbfb622838bfd6f133a0063e93018558fbb6882defc8bf7008"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.3.0-alpha.1/thinkwell-linux-x64.tar.gz"
      sha256 "cbd9a694b3a3bb08d5b6e3f7da12b4b0610c707e608fdfb561c6c583d4407d91"
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
