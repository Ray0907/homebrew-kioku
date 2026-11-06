class Kioku < Formula
  desc "Search every local coding-agent session down to the message, CJK included"
  homepage "https://github.com/Ray0907/kioku"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ray0907/kioku/releases/download/v0.9.1/kioku_v0.9.1_darwin_arm64.tar.gz"
      sha256 "0f0dec1f5d47a162aca9573e8545b84a0abcb0300c47206a0cd4f0745e934465"
    end
    on_intel do
      url "https://github.com/Ray0907/kioku/releases/download/v0.9.1/kioku_v0.9.1_darwin_amd64.tar.gz"
      sha256 "04f5c5878e8b1d19f06eb7967f06ee85694a5c38f983091168223b9942e98c3f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Ray0907/kioku/releases/download/v0.9.1/kioku_v0.9.1_linux_arm64.tar.gz"
      sha256 "bbd00b198029caf9c234a50e6a8673e05839f0c8b7c1fa05e2447d5629353b7d"
    end
    on_intel do
      url "https://github.com/Ray0907/kioku/releases/download/v0.9.1/kioku_v0.9.1_linux_amd64.tar.gz"
      sha256 "8270ac83afaf7e4188e158f95af60d4253fe419df1f6f0c2b18ca6a6ddef7b9b"
    end
  end

  def install
    bin.install "kioku"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kioku --version")
  end
end
