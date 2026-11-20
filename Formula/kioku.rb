class Kioku < Formula
  desc "Search every local coding-agent session down to the message, CJK included"
  homepage "https://github.com/Ray0907/kioku"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ray0907/kioku/releases/download/v0.15.1/kioku_v0.15.1_darwin_arm64.tar.gz"
      sha256 "1178079209c139db541d71d9d47adc62d981213d56da96872273beeeb6c3f648"
    end
    on_intel do
      url "https://github.com/Ray0907/kioku/releases/download/v0.15.1/kioku_v0.15.1_darwin_amd64.tar.gz"
      sha256 "67197bc5dbc70557766d7512cb6a4fd8ad53e4628f3fd786b86ad99a4528cf8d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Ray0907/kioku/releases/download/v0.15.1/kioku_v0.15.1_linux_arm64.tar.gz"
      sha256 "7b15bfecf614922bf455fd4926941ffa6d3eb6bfdc230e4b6c539ead24c9ba48"
    end
    on_intel do
      url "https://github.com/Ray0907/kioku/releases/download/v0.15.1/kioku_v0.15.1_linux_amd64.tar.gz"
      sha256 "99b4f6d0f4b2a6c3035d6d904930a619e24a3daac99d1df7ad896d9268d9f044"
    end
  end

  def install
    bin.install "kioku"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kioku --version")
  end
end
