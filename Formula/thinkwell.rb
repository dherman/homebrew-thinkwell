class Thinkwell < Formula
  desc "AI agent orchestration framework"
  homepage "https://github.com/dherman/thinkwell"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.2/thinkwell-darwin-arm64.tar.gz"
      sha256 "84a18a7956a6d52d9e49cd384f06c4f4f092f5b6712d9f6a5008c037ab0f1e90"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.2/thinkwell-darwin-x64.tar.gz"
      sha256 "21b01b60ed75a1a74ec7c402abab8425c058d82fb976293094f01da246cd046e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.2/thinkwell-linux-arm64.tar.gz"
      sha256 "8bb303a95f74cae860d7fdc3f6b50cbbcf56623164c039c7abec2cc4c8024910"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.2/thinkwell-linux-x64.tar.gz"
      sha256 "4959f5751b4657cb1a06f9e684b49d49bdba691bd31d1339d96ea53955ea9088"
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
