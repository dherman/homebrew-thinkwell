class Thinkwell < Formula
  desc "AI agent orchestration framework"
  homepage "https://github.com/dherman/thinkwell"
  version "0.3.0-alpha.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.3.0-alpha.2/thinkwell-darwin-arm64.tar.gz"
      sha256 "48885b6734c3ae2c5842be7e4166b48fc40719f42bab06bfee035e120b1e135b"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.3.0-alpha.2/thinkwell-darwin-x64.tar.gz"
      sha256 "8bed3e84cdc7c98dac0515bc13b5b3b1934055e4cb9454e4115984506207f0e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dherman/thinkwell/releases/download/v0.3.0-alpha.2/thinkwell-linux-arm64.tar.gz"
      sha256 "eccf4c4103721942a5b7efe85a09c2a87b1015af2915e67695ddb8a4b7a8d249"
    end
    on_intel do
      url "https://github.com/dherman/thinkwell/releases/download/v0.3.0-alpha.2/thinkwell-linux-x64.tar.gz"
      sha256 "1f0a5b5c6d8d87f1ddbbe65ada75115c068c2a098297fc607164256b322c8429"
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
