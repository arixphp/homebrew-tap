class Arix < Formula
  desc "Development and distribution tooling for ArixPHP"
  homepage "https://github.com/arixphp/cli"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arixphp/cli/releases/download/0.4.1/arix-0.4.1-macos-arm64.tar.gz"
      sha256 "f3f9a7c734250023ae7d5ab15b639a60557652c20ad3e028e5535f51ad49ea2f"
    else
      url "https://github.com/arixphp/cli/releases/download/0.4.1/arix-0.4.1-macos-x64.tar.gz"
      sha256 "cb85aa8519d9e1c1ea0d1e441a2397c3ad475ef5e968da0407c4a4891a46680d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arixphp/cli/releases/download/0.4.1/arix-0.4.1-linux-arm64.tar.gz"
      sha256 "c6c40996978567996812b5f45c1e458cc7e8a626d54d0694ec5a937ce435989a"
    else
      url "https://github.com/arixphp/cli/releases/download/0.4.1/arix-0.4.1-linux-x64.tar.gz"
      sha256 "a930fbc17f3b9936eac8971b8875b2358aebd4716b547530d80b68b9ec964689"
    end
  end

  def install
    bin.install "arix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/arix --version")
  end
end
