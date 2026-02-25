class Thinkwell < Formula
  desc "AI agent orchestration framework"
  homepage "https://github.com/dherman/thinkwell"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.3/thinkwell-darwin-arm64.tar.gz"
      sha256 "cc6db2a0a37ddc2c828f638b536b13c249e8e0d4e1d2c4b2c17d0313f5996fd9"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.3/thinkwell-darwin-x64.tar.gz"
      sha256 "f135661fd3d39d3d2ef08a458416b0fae5d74373a15e34a655a0ca6e2c7c82bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.3/thinkwell-linux-arm64.tar.gz"
      sha256 "37bfa5a40849d27f49897142b00100e21f671f24e549a2159f00fa08b542326c"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.3/thinkwell-linux-x64.tar.gz"
      sha256 "0d476769c7aa7927ddf7fdc2fa69af0a2c5ee2048d6c1beb4c1eff447d018c25"
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
