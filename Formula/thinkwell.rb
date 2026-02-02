class Thinkwell < Formula
  desc "AI agent orchestration framework"
  homepage "https://github.com/dherman/thinkwell"
  version "0.3.0-alpha.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.3.0-alpha.3/thinkwell-darwin-arm64.tar.gz"
      sha256 "cb8426549e661ff27cd158492356b94abb34936c2756bb5cc628545f07ccf45a"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.3.0-alpha.3/thinkwell-darwin-x64.tar.gz"
      sha256 "cd4c0f6e5b9c69729e7b059807b011551bc06172bb4bc8e6a4eb90c9f8cab65b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.3.0-alpha.3/thinkwell-linux-arm64.tar.gz"
      sha256 "c55506c851c2ad555903ce3487a7e23e839e88898e24000d553ce4a5df7e45d9"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.3.0-alpha.3/thinkwell-linux-x64.tar.gz"
      sha256 "c5fee648255e7024e244da3df847718753f1f1ed4c3a6db918f7626ac8c7d7b5"
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
