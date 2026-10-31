class Arix < Formula
  desc "Development and distribution tooling for ArixPHP"
  homepage "https://github.com/arixphp/cli"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arixphp/cli/releases/download/0.4.0/arix-0.4.0-macos-arm64.tar.gz"
      sha256 "11924d230ac567fb909aca0ba473f9ad90ef2e4a09a1d8d1dfd7101a22cc8bb4"
    else
      url "https://github.com/arixphp/cli/releases/download/0.4.0/arix-0.4.0-macos-x64.tar.gz"
      sha256 "09f2bf3bbfcfcfe64b95039216ecaebe8a1673abeedd129056c06827f5db49e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arixphp/cli/releases/download/0.4.0/arix-0.4.0-linux-arm64.tar.gz"
      sha256 "7a3fc3f382a64b73d24ac6a5f2fc9bbe3c2e41b86216596cd100171ad6afd36d"
    else
      url "https://github.com/arixphp/cli/releases/download/0.4.0/arix-0.4.0-linux-x64.tar.gz"
      sha256 "3aa55076e9e7150da4127e2ddac37d964c4231aa00b9d840315c14c8cec5da9b"
    end
  end

  def install
    bin.install "arix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/arix --version")
  end
end
