class Kioku < Formula
  desc "Search every local coding-agent session down to the message, CJK included"
  homepage "https://github.com/Ray0907/kioku"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ray0907/kioku/releases/download/v0.10.3/kioku_v0.10.3_darwin_arm64.tar.gz"
      sha256 "0bf2b540dbb07fe3fa8d99394c93ef6b3dd35cbec0e32c997606317da2af0822"
    end
    on_intel do
      url "https://github.com/Ray0907/kioku/releases/download/v0.10.3/kioku_v0.10.3_darwin_amd64.tar.gz"
      sha256 "9b95fd9a02f5f1301c6f7676ed5bf42b382b2c37547038b64af619afc71f2593"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Ray0907/kioku/releases/download/v0.10.3/kioku_v0.10.3_linux_arm64.tar.gz"
      sha256 "4f618cbf7708529d8172bb115ef7da6ff11b04a7d4d3280f2b48016d9213d501"
    end
    on_intel do
      url "https://github.com/Ray0907/kioku/releases/download/v0.10.3/kioku_v0.10.3_linux_amd64.tar.gz"
      sha256 "d3cb857f39c4a6c79abf61738d1a95bc9d4c5f0b606c4e8abc08a91eb28cf7b9"
    end
  end

  def install
    bin.install "kioku"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kioku --version")
  end
end
