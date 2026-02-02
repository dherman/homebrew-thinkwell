class Thinkwell < Formula
  desc "AI agent orchestration framework"
  homepage "https://github.com/dherman/thinkwell"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.3.0/thinkwell-darwin-arm64.tar.gz"
      sha256 "a0a0fe32bf41c3c893613928500fbdc533b4386a313f24ceb2cb43d963bbb078"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.3.0/thinkwell-darwin-x64.tar.gz"
      sha256 "2bb4c480db07b3f2171fe1d76dea83d6d44e215fa8bf48586d91c85eb8a2616e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.3.0/thinkwell-linux-arm64.tar.gz"
      sha256 "8e2920422bf0434abca2b1cf27ad909f9fcffea0bfb74029842715b6b3ab3bfc"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.3.0/thinkwell-linux-x64.tar.gz"
      sha256 "0b55473d7d50e856739e907d755b358ec2fef3c602499f48c87791c83d6fdb14"
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
