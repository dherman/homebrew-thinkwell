class Thinkwell < Formula
  desc "AI agent orchestration framework"
  homepage "https://github.com/dherman/thinkwell"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.4.1/thinkwell-darwin-arm64.tar.gz"
      sha256 "a21e7fb9c6987bade97f2015f5672f95b244a28246855046068820fe3130c419"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.4.1/thinkwell-darwin-x64.tar.gz"
      sha256 "424351cdc0ae95c9ea329b076e1616a3e1e0850917f58606471865eb1d7e5f7b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.4.1/thinkwell-linux-arm64.tar.gz"
      sha256 "9fc4622c43427122a57c0ea57c6501c5144e8270d80eb7308ccb7bd6e3186f17"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.4.1/thinkwell-linux-x64.tar.gz"
      sha256 "551999d41dd552689b8789bfbee0dfae47fb81baf21eaee836c22c2947ce33ac"
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
