class Arix < Formula
  desc "Development and distribution tooling for ArixPHP"
  homepage "https://github.com/arixphp/cli"
  version "0.4.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arixphp/cli/releases/download/0.4.6/arix-0.4.6-macos-arm64.tar.gz"
      sha256 "906f795b7645d21ef1b43029ca9819dcc289f830934811d4c7b4a85e82400241"
    else
      url "https://github.com/arixphp/cli/releases/download/0.4.6/arix-0.4.6-macos-x64.tar.gz"
      sha256 "24732c8301b73506dcc80ef6f6490140ed0938741b174edb9dac29b13bc609ef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arixphp/cli/releases/download/0.4.6/arix-0.4.6-linux-arm64.tar.gz"
      sha256 "2d615d937eea26f4d5cb94261b3712fd99da2cf011fd4e07a37c4eed619f0907"
    else
      url "https://github.com/arixphp/cli/releases/download/0.4.6/arix-0.4.6-linux-x64.tar.gz"
      sha256 "37bd9c3411571a4be0b9e9662281f646b616508867331b14d3eaff6f33adba15"
    end
  end

  def install
    bin.install "arix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/arix --version")
  end
end
