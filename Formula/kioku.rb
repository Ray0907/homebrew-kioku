class Kioku < Formula
  desc "Search every local coding-agent session down to the message, CJK included"
  homepage "https://github.com/Ray0907/kioku"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ray0907/kioku/releases/download/v0.10.4/kioku_v0.10.4_darwin_arm64.tar.gz"
      sha256 "bc5360adb15e330a7f5197ddd47f916d947f7d3d0c535b959ec15c3e10717531"
    end
    on_intel do
      url "https://github.com/Ray0907/kioku/releases/download/v0.10.4/kioku_v0.10.4_darwin_amd64.tar.gz"
      sha256 "e4b878604f0afd2aef3062566312fbaf666d7c108a27ce4adc40184c4b99f6d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Ray0907/kioku/releases/download/v0.10.4/kioku_v0.10.4_linux_arm64.tar.gz"
      sha256 "f269eba83bba5206e8d7651ab8410427de786614c2a3c20e51095e0117ca8bd0"
    end
    on_intel do
      url "https://github.com/Ray0907/kioku/releases/download/v0.10.4/kioku_v0.10.4_linux_amd64.tar.gz"
      sha256 "4494ecbe3fc30613582ac74d19b304b7521e72b7fe785074019c882e35ee2d9b"
    end
  end

  def install
    bin.install "kioku"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kioku --version")
  end
end
