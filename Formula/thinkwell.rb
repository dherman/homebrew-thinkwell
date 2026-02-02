class Thinkwell < Formula
  desc "AI agent orchestration framework"
  homepage "https://github.com/dherman/thinkwell"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.4.0/thinkwell-darwin-arm64.tar.gz"
      sha256 "2ca695e2ea7889aa2bbcba995b36bbebdf00e8453f471986c754226c1527df3b"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.4.0/thinkwell-darwin-x64.tar.gz"
      sha256 "abc0ccc1c712606de0697a55f822e717b9e5e6b87c22aa29a5ccac1782370458"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.4.0/thinkwell-linux-arm64.tar.gz"
      sha256 "4feaddb7b0577d9a138e7abce43badc9add811be791d6ce42b43319e81d209d2"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.4.0/thinkwell-linux-x64.tar.gz"
      sha256 "a74d7e8fcc43a52c81e387afb28357ea5fbf00476cb69edcee9c1c0855b0710a"
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
