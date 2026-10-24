class Kioku < Formula
  desc "Search every local coding-agent session down to the message, CJK included"
  homepage "https://github.com/Ray0907/kioku"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ray0907/kioku/releases/download/v0.7.0/kioku_v0.7.0_darwin_arm64.tar.gz"
      sha256 "eaa03b9a7a22db31ee574045f45e0b29a532ebda3d9f8c17d1f1c6fc0cb1b1dd"
    end
    on_intel do
      url "https://github.com/Ray0907/kioku/releases/download/v0.7.0/kioku_v0.7.0_darwin_amd64.tar.gz"
      sha256 "2cf0e99e0afd3010b0b98a0b7a8d8dab1d4454faf9b912f26b91eed66293599f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Ray0907/kioku/releases/download/v0.7.0/kioku_v0.7.0_linux_arm64.tar.gz"
      sha256 "4c6701a39a818241393a880db4816a685344a14e0a246e4365810965cd945148"
    end
    on_intel do
      url "https://github.com/Ray0907/kioku/releases/download/v0.7.0/kioku_v0.7.0_linux_amd64.tar.gz"
      sha256 "a9d4d7a8be21694759a93178b00664246476595f155a22ee165c2214e4b2f5a2"
    end
  end

  def install
    bin.install "kioku"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kioku --version")
  end
end
