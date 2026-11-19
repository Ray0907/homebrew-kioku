class Kioku < Formula
  desc "Search every local coding-agent session down to the message, CJK included"
  homepage "https://github.com/Ray0907/kioku"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ray0907/kioku/releases/download/v0.13.1/kioku_v0.13.1_darwin_arm64.tar.gz"
      sha256 "21bc9bef44b25f64dc0f7b2ed8e3a02e9c2ca6a27a401d5bb505855e71a187dd"
    end
    on_intel do
      url "https://github.com/Ray0907/kioku/releases/download/v0.13.1/kioku_v0.13.1_darwin_amd64.tar.gz"
      sha256 "2dba9db86f6303d61adba556954b59eb509526e7430d833ca41e31db11665ea2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Ray0907/kioku/releases/download/v0.13.1/kioku_v0.13.1_linux_arm64.tar.gz"
      sha256 "c5ea38d495c564550b063b94fd989aa5af14b8429b69ebbf1bdca2b81faf1051"
    end
    on_intel do
      url "https://github.com/Ray0907/kioku/releases/download/v0.13.1/kioku_v0.13.1_linux_amd64.tar.gz"
      sha256 "410eda38582dc9dc2b95a16c5070ce314b44a8184ebdee07ff8c21fb415fea0c"
    end
  end

  def install
    bin.install "kioku"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kioku --version")
  end
end
