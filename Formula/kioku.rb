class Kioku < Formula
  desc "Search every local coding-agent session down to the message, CJK included"
  homepage "https://github.com/Ray0907/kioku"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ray0907/kioku/releases/download/v0.5.0/kioku_v0.5.0_darwin_arm64.tar.gz"
      sha256 "0ad277fa5605b32bfc11b8e4b02fcd4e810a06334bec19430bf2876c60d8fe74"
    end
    on_intel do
      url "https://github.com/Ray0907/kioku/releases/download/v0.5.0/kioku_v0.5.0_darwin_amd64.tar.gz"
      sha256 "dd290398dbafbd577bfd049ba63215bbad3b1a8e1b4bbe3fa70d04cdf3d258e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Ray0907/kioku/releases/download/v0.5.0/kioku_v0.5.0_linux_arm64.tar.gz"
      sha256 "bd2d1afcf6dab578c10b04155d181db0686760e8f699b72aedab52815cd3de3a"
    end
    on_intel do
      url "https://github.com/Ray0907/kioku/releases/download/v0.5.0/kioku_v0.5.0_linux_amd64.tar.gz"
      sha256 "780bb220657771c26c318d112d1893fd360495aa6951785a467c965e1fc02d71"
    end
  end

  def install
    bin.install "kioku"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kioku --version")
  end
end
