class Kioku < Formula
  desc "Search every local coding-agent session down to the message, CJK included"
  homepage "https://github.com/Ray0907/kioku"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ray0907/kioku/releases/download/v0.10.2/kioku_v0.10.2_darwin_arm64.tar.gz"
      sha256 "b20b0af05c84b79576fedaa4bbb040e1fc7755dfbe5f617353b7df7b2103a3d1"
    end
    on_intel do
      url "https://github.com/Ray0907/kioku/releases/download/v0.10.2/kioku_v0.10.2_darwin_amd64.tar.gz"
      sha256 "d922f8b1216efc8a005450aa1b07134e087866a1d4e4712169a349bc19730f74"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Ray0907/kioku/releases/download/v0.10.2/kioku_v0.10.2_linux_arm64.tar.gz"
      sha256 "4ede2bf1b4d7cbf5b1b5b1a6fd58d4df456b609be984cc1b115dd886ce1feef1"
    end
    on_intel do
      url "https://github.com/Ray0907/kioku/releases/download/v0.10.2/kioku_v0.10.2_linux_amd64.tar.gz"
      sha256 "df30dabab12e95283f7f67a8db1b3c3463459c9f657b8423b76ec31b7fe2d823"
    end
  end

  def install
    bin.install "kioku"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kioku --version")
  end
end
