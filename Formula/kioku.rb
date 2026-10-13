class Kioku < Formula
  desc "Search every local coding-agent session down to the message, CJK included"
  homepage "https://github.com/Ray0907/kioku"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ray0907/kioku/releases/download/v0.6.0/kioku_v0.6.0_darwin_arm64.tar.gz"
      sha256 "28aeb75c6232070bb1942a67deea537d0ea45a485e7d3dfbd076f27a8608da21"
    end
    on_intel do
      url "https://github.com/Ray0907/kioku/releases/download/v0.6.0/kioku_v0.6.0_darwin_amd64.tar.gz"
      sha256 "eb4a4dc22b1ea5f1e35b12abfd9b4affbd0f63562935ba7c62a73e1159ad0afc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Ray0907/kioku/releases/download/v0.6.0/kioku_v0.6.0_linux_arm64.tar.gz"
      sha256 "a42ca5290a955d3eedc07d89096f91092fb9d9b78b801c0e90200e4d888989e5"
    end
    on_intel do
      url "https://github.com/Ray0907/kioku/releases/download/v0.6.0/kioku_v0.6.0_linux_amd64.tar.gz"
      sha256 "2afab59d38928455d5f2b2da30e0213fb25d91d98b76ad84ebd9813f6b4ebcae"
    end
  end

  def install
    bin.install "kioku"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kioku --version")
  end
end
