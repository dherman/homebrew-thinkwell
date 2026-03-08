class Thinkwell < Formula
  desc "AI agent orchestration framework"
  homepage "https://github.com/dherman/thinkwell"
  version "0.5.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.4/thinkwell-darwin-arm64.tar.gz"
      sha256 "6413ffb3a776964b4f0d4248a8fa2985b74085bafbc5b1cd1651a24bbbea4615"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.4/thinkwell-darwin-x64.tar.gz"
      sha256 "3ff8dbad2b1cc3cc19a1db7b8a991d919275b496e871d416f9dd9580c76dfab9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.4/thinkwell-linux-arm64.tar.gz"
      sha256 "bda01dc8a00feb5679cc8307f948d99fbcadea2153f0133615a10929be5d2d67"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.4/thinkwell-linux-x64.tar.gz"
      sha256 "d8fa5abb7ca7b11d861f146eef7b363277ae3e9a1bcb32a9763b7e82fdaeeffc"
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
