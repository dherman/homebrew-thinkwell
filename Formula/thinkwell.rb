class Thinkwell < Formula
  desc "AI agent orchestration framework"
  homepage "https://github.com/dherman/thinkwell"
  version "0.4.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.4.5/thinkwell-darwin-arm64.tar.gz"
      sha256 "8d2fde5bb84f49085506cd34d59c76eb8d30bda277999e3730796d75a6331f46"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.4.5/thinkwell-darwin-x64.tar.gz"
      sha256 "108d1f55bf2fbf93bbfafbf869e245bfffcaa36417056b18d0ca3b43fb5a7f00"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.4.5/thinkwell-linux-arm64.tar.gz"
      sha256 "16bbccd9d0663cb7bad78a1b2846e4a07ac07b5628a6de330adfa5a0d4758e32"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.4.5/thinkwell-linux-x64.tar.gz"
      sha256 "27bc52bb02749ecd66680a49e413175c067e7747e21b3f2d1947a67a8a241084"
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
