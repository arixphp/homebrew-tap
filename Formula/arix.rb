class Arix < Formula
  desc "Development and distribution tooling for ArixPHP"
  homepage "https://github.com/arixphp/cli"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arixphp/cli/releases/download/0.2.4/arix-0.2.4-macos-arm64.tar.gz"
      sha256 "8cb3553e975c81791eb69d7b34751198d5123b9606cb5335047f82c4ec6a346c"
    else
      url "https://github.com/arixphp/cli/releases/download/0.2.4/arix-0.2.4-macos-x64.tar.gz"
      sha256 "577155868011c58a4ab8bfdaebf89dc973baa07a4f5800d4143e69a71a7f6c69"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arixphp/cli/releases/download/0.2.4/arix-0.2.4-linux-arm64.tar.gz"
      sha256 "f25fd56f8895e119f97b6716244f08631bc65dc26905137170e572ccb3de2f9e"
    else
      url "https://github.com/arixphp/cli/releases/download/0.2.4/arix-0.2.4-linux-x64.tar.gz"
      sha256 "11e089ce5af6bee65723bdb073c3a5f2af0c228078f09d4e4ab868dea981cd56"
    end
  end

  def install
    bin.install "arix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/arix --version")
  end
end
