class Thinkwell < Formula
  desc "AI agent orchestration framework"
  homepage "https://github.com/dherman/thinkwell"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.4.2/thinkwell-darwin-arm64.tar.gz"
      sha256 "3ee30c79e6126bee6e82ae71cf9f8287a53706845557fc4d8362dfbc7fb16122"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.4.2/thinkwell-darwin-x64.tar.gz"
      sha256 "af1d30886418879e6547eabba4bab8299a46e3b65238a5801c450221766aa19e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.4.2/thinkwell-linux-arm64.tar.gz"
      sha256 "c616acf2f2fc1248dcf6c9ddb937b0baf12a0785fb5f580ddb8a2a047a564c76"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.4.2/thinkwell-linux-x64.tar.gz"
      sha256 "167ac7ad4879c094fce3bf7cb0bd5001c064fff57e499132fad03e572befcbab"
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
