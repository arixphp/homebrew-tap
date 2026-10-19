class Arix < Formula
  desc "Development and distribution tooling for ArixPHP"
  homepage "https://github.com/arixphp/cli"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arixphp/cli/releases/download/0.2.2/arix-0.2.2-macos-arm64.tar.gz"
      sha256 "025ff2e913322e4b8f823320b7a5475d0c376398df3f5ac90633b9c53e9eaeb4"
    else
      url "https://github.com/arixphp/cli/releases/download/0.2.2/arix-0.2.2-macos-x64.tar.gz"
      sha256 "8a379fd27931e2cf1a65a0d3af8b175ce6b04c2a098183e61bf50fb0abe62f0a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arixphp/cli/releases/download/0.2.2/arix-0.2.2-linux-arm64.tar.gz"
      sha256 "ed95e5f401ae969d16ba9ad3daaba1f9a17b583b1dd73461f977ca85d1aa64f2"
    else
      url "https://github.com/arixphp/cli/releases/download/0.2.2/arix-0.2.2-linux-x64.tar.gz"
      sha256 "23c0bb186c81de421ed1365c6e33c05dd4e2b2184d908c0c99fc3856459127f6"
    end
  end

  def install
    bin.install "arix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/arix --version")
  end
end
