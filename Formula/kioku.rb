class Kioku < Formula
  desc "Search every local coding-agent session down to the message, CJK included"
  homepage "https://github.com/Ray0907/kioku"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ray0907/kioku/releases/download/v0.12.0/kioku_v0.12.0_darwin_arm64.tar.gz"
      sha256 "5240955a8e2010dcec0580c0abddf2b59b0fbce90548ebbb1752c124fd3c6c6a"
    end
    on_intel do
      url "https://github.com/Ray0907/kioku/releases/download/v0.12.0/kioku_v0.12.0_darwin_amd64.tar.gz"
      sha256 "c44a9e6b7d91648871b73c00bcdd8bcf8dd45caa466bc2ed48209b739a660552"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Ray0907/kioku/releases/download/v0.12.0/kioku_v0.12.0_linux_arm64.tar.gz"
      sha256 "6183f7e914f0cc372ca0166e01140bab42924292d4632dcea95fee2ac4a356ae"
    end
    on_intel do
      url "https://github.com/Ray0907/kioku/releases/download/v0.12.0/kioku_v0.12.0_linux_amd64.tar.gz"
      sha256 "00f0b938d8f477b45657cdab12e2104a8a350206cb5a963823af4ab189234373"
    end
  end

  def install
    bin.install "kioku"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kioku --version")
  end
end
