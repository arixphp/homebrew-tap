class Arix < Formula
  desc "Development and distribution tooling for ArixPHP"
  homepage "https://github.com/arixphp/cli"
  version "0.4.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arixphp/cli/releases/download/0.4.4/arix-0.4.4-macos-arm64.tar.gz"
      sha256 "cdd070306686a5e586250d09806034fb415c5b8c119bf55d9b7424171dc90791"
    else
      url "https://github.com/arixphp/cli/releases/download/0.4.4/arix-0.4.4-macos-x64.tar.gz"
      sha256 "4883536afddb1d72e250c1410f3c8ceee0587989db64fdb1f9a81d09b739807f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arixphp/cli/releases/download/0.4.4/arix-0.4.4-linux-arm64.tar.gz"
      sha256 "c871adcee540b2013b0e177dc6eb885fc57c4d72c4ac84f297453cf61e6eb5fa"
    else
      url "https://github.com/arixphp/cli/releases/download/0.4.4/arix-0.4.4-linux-x64.tar.gz"
      sha256 "13caa17dfe4571061ffa5235c201e9f71dbd0470cdd55c18c915fab95d4f4643"
    end
  end

  def install
    bin.install "arix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/arix --version")
  end
end
