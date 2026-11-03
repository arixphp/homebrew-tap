class Arix < Formula
  desc "Development and distribution tooling for ArixPHP"
  homepage "https://github.com/arixphp/cli"
  version "0.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arixphp/cli/releases/download/0.4.3/arix-0.4.3-macos-arm64.tar.gz"
      sha256 "5270f90d15bc6a51d78d78e35fbd1404537c735e13967c711eb67f66ac8fefe6"
    else
      url "https://github.com/arixphp/cli/releases/download/0.4.3/arix-0.4.3-macos-x64.tar.gz"
      sha256 "ca25cf1eaed26170f39685ea89dde874f8c09feb19b718f20931d8d42f59a123"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arixphp/cli/releases/download/0.4.3/arix-0.4.3-linux-arm64.tar.gz"
      sha256 "10839c8aa02bd87302f867e384ae72fd7065232ade89220854b432a619a0901a"
    else
      url "https://github.com/arixphp/cli/releases/download/0.4.3/arix-0.4.3-linux-x64.tar.gz"
      sha256 "f0bdbedd023d830175138c84bc32e41b60d317137f6f44b29442ffcf829af75c"
    end
  end

  def install
    bin.install "arix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/arix --version")
  end
end
