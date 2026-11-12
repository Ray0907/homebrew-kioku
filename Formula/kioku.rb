class Kioku < Formula
  desc "Search every local coding-agent session down to the message, CJK included"
  homepage "https://github.com/Ray0907/kioku"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ray0907/kioku/releases/download/v0.11.0/kioku_v0.11.0_darwin_arm64.tar.gz"
      sha256 "2f0369fc9a883c9a1b44c188cc4e6a2a79e0e7cb804597048dd018ebdf840e37"
    end
    on_intel do
      url "https://github.com/Ray0907/kioku/releases/download/v0.11.0/kioku_v0.11.0_darwin_amd64.tar.gz"
      sha256 "dbade26df0f26f2cb1ac3f0b8693c1eb01c9aaf7b540d5839c4e30f8ef8141c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Ray0907/kioku/releases/download/v0.11.0/kioku_v0.11.0_linux_arm64.tar.gz"
      sha256 "47e683c4b4ccc56224ea44a7a2980aad2b04d25381c46e5d2e5babf4aee978fa"
    end
    on_intel do
      url "https://github.com/Ray0907/kioku/releases/download/v0.11.0/kioku_v0.11.0_linux_amd64.tar.gz"
      sha256 "fdb910c36fd4992b1e3778b50f352b006c28cd4daec482c5d843605639717e8f"
    end
  end

  def install
    bin.install "kioku"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kioku --version")
  end
end
