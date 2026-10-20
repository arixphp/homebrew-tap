class Arix < Formula
  desc "Development and distribution tooling for ArixPHP"
  homepage "https://github.com/arixphp/cli"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arixphp/cli/releases/download/0.2.3/arix-0.2.3-macos-arm64.tar.gz"
      sha256 "cd3c3d1e71148b5059d6208a6676727df40aa95ead75d26cbe6efc84f9762b5e"
    else
      url "https://github.com/arixphp/cli/releases/download/0.2.3/arix-0.2.3-macos-x64.tar.gz"
      sha256 "bc276afb2d29259b4a6e2260f3229d8843e0b1cfbdcba222484c1b9ccb8f1a95"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arixphp/cli/releases/download/0.2.3/arix-0.2.3-linux-arm64.tar.gz"
      sha256 "c21e81bee16503158d0fb1c02fb88048f3af36a1a221a9dab222c4416fefc8c2"
    else
      url "https://github.com/arixphp/cli/releases/download/0.2.3/arix-0.2.3-linux-x64.tar.gz"
      sha256 "a0c96f999596409455cbddf883d989ddfb5f9500b0b411e51bc4e1639278b0d6"
    end
  end

  def install
    bin.install "arix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/arix --version")
  end
end
