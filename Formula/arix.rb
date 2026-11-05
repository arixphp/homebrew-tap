class Arix < Formula
  desc "Development and distribution tooling for ArixPHP"
  homepage "https://github.com/arixphp/cli"
  version "0.4.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arixphp/cli/releases/download/0.4.5/arix-0.4.5-macos-arm64.tar.gz"
      sha256 "5ad456372c4820b7870cc4518b348d38b9aa711a0e223f1010f7e397608aec9d"
    else
      url "https://github.com/arixphp/cli/releases/download/0.4.5/arix-0.4.5-macos-x64.tar.gz"
      sha256 "656241a2217d314f3f271226bee1a3dd2ffa19407c7860a8587af7b09c680ca7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arixphp/cli/releases/download/0.4.5/arix-0.4.5-linux-arm64.tar.gz"
      sha256 "65ced9f7e425d805f9bd9e6d50746eadc3f526b866a3ecc21878a4b9bb737545"
    else
      url "https://github.com/arixphp/cli/releases/download/0.4.5/arix-0.4.5-linux-x64.tar.gz"
      sha256 "95fdc9e5089abbb47be1eea4db58103100286c890d4d03e936b86c16ede5d69e"
    end
  end

  def install
    bin.install "arix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/arix --version")
  end
end
