class Kioku < Formula
  desc "Search every local coding-agent session down to the message, CJK included"
  homepage "https://github.com/Ray0907/kioku"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ray0907/kioku/releases/download/v0.15.2/kioku_v0.15.2_darwin_arm64.tar.gz"
      sha256 "3b7b329b0baef416ff41e1375b0757d125cfe23b470cb0e86c12feefb800a359"
    end
    on_intel do
      url "https://github.com/Ray0907/kioku/releases/download/v0.15.2/kioku_v0.15.2_darwin_amd64.tar.gz"
      sha256 "553e1c404680f83273720a4dfdcc8c59d573e14af0a2e702e272d8a8c6b69906"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Ray0907/kioku/releases/download/v0.15.2/kioku_v0.15.2_linux_arm64.tar.gz"
      sha256 "1ff88ff15304ff6c78252e02a5a2366698f7eba7843809adcab2eba05dc3ead4"
    end
    on_intel do
      url "https://github.com/Ray0907/kioku/releases/download/v0.15.2/kioku_v0.15.2_linux_amd64.tar.gz"
      sha256 "56c3dd04e164babb78546cd266dbaf5d3b43a98e238db4b420d20b4a055d1b96"
    end
  end

  def install
    bin.install "kioku"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kioku --version")
  end
end
