class Thinkwell < Formula
  desc "AI agent orchestration framework"
  homepage "https://github.com/dherman/thinkwell"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.0/thinkwell-darwin-arm64.tar.gz"
      sha256 "d6d41ebe3504fc4919071c21d144a3184f16c098b4bf7e7b941ac72f70efac84"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.0/thinkwell-darwin-x64.tar.gz"
      sha256 "e1e72e59b71595b312b54046d57e463af15f1c4d1832207e149bca26e0857527"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.0/thinkwell-linux-arm64.tar.gz"
      sha256 "6aa9ea09e708af568c38658929f59a4d582f1319b29166b13b0ee2f17fc6db79"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.5.0/thinkwell-linux-x64.tar.gz"
      sha256 "b6ec3d0559736c282a82c3482f0a95b633790cc5230bd2f510c83cfe467012c4"
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
