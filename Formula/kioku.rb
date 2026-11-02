class Kioku < Formula
  desc "Search every local coding-agent session down to the message, CJK included"
  homepage "https://github.com/Ray0907/kioku"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ray0907/kioku/releases/download/v0.8.0/kioku_v0.8.0_darwin_arm64.tar.gz"
      sha256 "7b0580ae15ac07d1a59dd46eb0c9c5fbb6c92ddd9c1b0e9f7434dafae9203c08"
    end
    on_intel do
      url "https://github.com/Ray0907/kioku/releases/download/v0.8.0/kioku_v0.8.0_darwin_amd64.tar.gz"
      sha256 "a392bed6772652e1c60f0d3e0d1907e8bb87dfdadcddbf5b31832795d00c8b4f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Ray0907/kioku/releases/download/v0.8.0/kioku_v0.8.0_linux_arm64.tar.gz"
      sha256 "e43381c8ddbd63825a664f27367a280644b1e93557dd3ccdd85d98622c26a2f8"
    end
    on_intel do
      url "https://github.com/Ray0907/kioku/releases/download/v0.8.0/kioku_v0.8.0_linux_amd64.tar.gz"
      sha256 "55356b81f4a5d0519f3529a76f8e9a243e046a6a19aa2303e7d518b618fd1d2c"
    end
  end

  def install
    bin.install "kioku"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kioku --version")
  end
end
