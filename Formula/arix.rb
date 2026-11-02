class Arix < Formula
  desc "Development and distribution tooling for ArixPHP"
  homepage "https://github.com/arixphp/cli"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arixphp/cli/releases/download/0.4.2/arix-0.4.2-macos-arm64.tar.gz"
      sha256 "c78d6e63864dced67447129a57668bad6181452ff3a8b244f44db99fc615218f"
    else
      url "https://github.com/arixphp/cli/releases/download/0.4.2/arix-0.4.2-macos-x64.tar.gz"
      sha256 "5b4ceb5f47c8f20f09f50ba996242a56325d1d32e5c572b00004a005824ea843"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arixphp/cli/releases/download/0.4.2/arix-0.4.2-linux-arm64.tar.gz"
      sha256 "06fe915b77f6b1234b2ab94d442ce623700d63d4f0addfd03c0d780240aaf6eb"
    else
      url "https://github.com/arixphp/cli/releases/download/0.4.2/arix-0.4.2-linux-x64.tar.gz"
      sha256 "bd964798aca36f32eb639740a61d4744c8d41aebf67477e179a75563cad22111"
    end
  end

  def install
    bin.install "arix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/arix --version")
  end
end
