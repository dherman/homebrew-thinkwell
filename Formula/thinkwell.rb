class Thinkwell < Formula
  desc "AI agent orchestration framework"
  homepage "https://github.com/dherman/thinkwell"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.1/thinkwell-darwin-arm64.tar.gz"
      sha256 "7e3901ed7ac17fc7adf6f2c1c5eb0824a2d11a1e8da01f9c5f03bebf778cc284"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.1/thinkwell-darwin-x64.tar.gz"
      sha256 "8845246d2e085b4a2aab282f182d42469229a89a8aeade5527282187da992b75"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.1/thinkwell-linux-arm64.tar.gz"
      sha256 "01a2a692e882413a373c449978c2997c043744516cecae63792b128c2033feee"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.1/thinkwell-linux-x64.tar.gz"
      sha256 "82e78969e9e06f325a1aa93c7f7617549fe714d383b8406e23a377a29b215704"
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
