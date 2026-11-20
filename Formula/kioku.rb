class Kioku < Formula
  desc "Search every local coding-agent session down to the message, CJK included"
  homepage "https://github.com/Ray0907/kioku"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ray0907/kioku/releases/download/v0.14.0/kioku_v0.14.0_darwin_arm64.tar.gz"
      sha256 "9f6199caf91d867aa436a0eb03733bd9e42a14a8bc97aa79ed96fcf359600f8a"
    end
    on_intel do
      url "https://github.com/Ray0907/kioku/releases/download/v0.14.0/kioku_v0.14.0_darwin_amd64.tar.gz"
      sha256 "a8380cda400353d8050d4e8237678adfefb90941230e89c5384b21b78ba950b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Ray0907/kioku/releases/download/v0.14.0/kioku_v0.14.0_linux_arm64.tar.gz"
      sha256 "427c4f3295ecb0f87408cec7a4237820dbce73737efbfab995de3e39845b9a4a"
    end
    on_intel do
      url "https://github.com/Ray0907/kioku/releases/download/v0.14.0/kioku_v0.14.0_linux_amd64.tar.gz"
      sha256 "ca6b091bd078beea87d3ba3e03cb36cf9f0c774719b61bc463d7e8429bbec467"
    end
  end

  def install
    bin.install "kioku"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kioku --version")
  end
end
