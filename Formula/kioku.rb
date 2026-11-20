class Kioku < Formula
  desc "Search every local coding-agent session down to the message, CJK included"
  homepage "https://github.com/Ray0907/kioku"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ray0907/kioku/releases/download/v0.15.3/kioku_v0.15.3_darwin_arm64.tar.gz"
      sha256 "72033cbd5dcb6a0cdcefc52e9b5cc127d403636196145621dc08acd074fdb123"
    end
    on_intel do
      url "https://github.com/Ray0907/kioku/releases/download/v0.15.3/kioku_v0.15.3_darwin_amd64.tar.gz"
      sha256 "8abffec11e43bc11322d62690f93fa45368fc1316ac42d9385dcff4763af9242"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Ray0907/kioku/releases/download/v0.15.3/kioku_v0.15.3_linux_arm64.tar.gz"
      sha256 "32b7bc977d415a16ae5aff98fe5a844363b0cff939427d5289b4525564b95c41"
    end
    on_intel do
      url "https://github.com/Ray0907/kioku/releases/download/v0.15.3/kioku_v0.15.3_linux_amd64.tar.gz"
      sha256 "0429f53c8d3e355192fcc79a1740e723b71ae7636caa0b35d8b9258d86eab882"
    end
  end

  def install
    bin.install "kioku"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kioku --version")
  end
end
