class Thinkwell < Formula
  desc "AI agent orchestration framework"
  homepage "https://github.com/dherman/thinkwell"
  version "0.5.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.6/thinkwell-darwin-arm64.tar.gz"
      sha256 "24a5f427ea72a2b24ed7e0ebe842e82f22d12de21d6ae0ce63f4d06bacd45493"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.6/thinkwell-darwin-x64.tar.gz"
      sha256 "7a7495b16a491bac739cdef6785cbb7492ac8f1300b8367f079c286244017e80"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.6/thinkwell-linux-arm64.tar.gz"
      sha256 "1e48e568e6757f1d5d35312da26c53162e09de2f574589419cb15eacd692e6aa"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.6/thinkwell-linux-x64.tar.gz"
      sha256 "d9151e332afad2f42e1f436e0cb86150f0daa8bce9d8cf73e8dc0a1edc3cc505"
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
