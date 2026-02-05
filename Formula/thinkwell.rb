class Thinkwell < Formula
  desc "AI agent orchestration framework"
  homepage "https://github.com/dherman/thinkwell"
  version "0.4.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.4.4/thinkwell-darwin-arm64.tar.gz"
      sha256 "d356a628028cae5ac8409cd488f4fabdc2148e84ef72ed1595bb3d2514abd3dd"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.4.4/thinkwell-darwin-x64.tar.gz"
      sha256 "05c02927a257fabdbe68dc4228070e881c87a4a62afdcb14194ddf38196ced5d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.4.4/thinkwell-linux-arm64.tar.gz"
      sha256 "70774215018c8ad34161eaa6224287cae50faa363d5f425e9127cb1305682306"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.4.4/thinkwell-linux-x64.tar.gz"
      sha256 "b1570cb44ff56130690edee5e49ca563a0ff7373481a70e6c62e06d83cab823c"
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
