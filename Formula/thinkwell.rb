class Thinkwell < Formula
  desc "AI agent orchestration framework"
  homepage "https://github.com/dherman/thinkwell"
  version "0.3.0-alpha.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.3.0-alpha.4/thinkwell-darwin-arm64.tar.gz"
      sha256 "aecd0bcc5a856ff701f3b671a5c4f622a30f039b06b8cfe626707e21cf5a3243"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.3.0-alpha.4/thinkwell-darwin-x64.tar.gz"
      sha256 "bbe097137ff2dfa14c1b40a3eeb8ae8795dbf2be827d97e51b75950cce63e28c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.3.0-alpha.4/thinkwell-linux-arm64.tar.gz"
      sha256 "be21d8c50a3ab863387dffe794bb383319461b2e13e279545328c53b8c50e0f8"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.3.0-alpha.4/thinkwell-linux-x64.tar.gz"
      sha256 "57d88796d323e877997c1fe0dcdc4412c21d213338b980181147e064ab86be8a"
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
