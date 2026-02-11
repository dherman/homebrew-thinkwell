class ThinkwellNext < Formula
  desc "AI agent orchestration framework (pre-release channel)"
  homepage "https://github.com/dherman/thinkwell"
  version "0.5.0-alpha.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.0-alpha.1/thinkwell-darwin-arm64.tar.gz"
      sha256 "3dd642f1449fa5448687770216840daa126775df28a9ebd4fc6efb18e6063eca"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.0-alpha.1/thinkwell-darwin-x64.tar.gz"
      sha256 "370a650b62befa987cb359feaef935f0da93501ee1d817d9564f1bac366f2950"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.0-alpha.1/thinkwell-linux-arm64.tar.gz"
      sha256 "c3f45a720bcdcf8fb00c012924fb5df8c319a6687bd3f42115d8f47748c1b551"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.0-alpha.1/thinkwell-linux-x64.tar.gz"
      sha256 "51780c8a3fd848ac4b0ac7e305c401f8f5b6b047ff9d5e39569e26ddeae80767"
    end
  end

  def install
    # The tarball contains a single binary named thinkwell-<platform>
    # Find and install it as 'thinkwell'
    binary = Dir["thinkwell-*"].first
    bin.install binary => "thinkwell"
  end

  def caveats
    <<~EOS
      This is a pre-release version (alpha channel).
      For stable releases, use:
        brew install dherman/thinkwell/thinkwell
    EOS
  end

  test do
    assert_match "thinkwell", shell_output("#{bin}/thinkwell --version")
  end
end
