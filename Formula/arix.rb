class Arix < Formula
  desc "Development and distribution tooling for ArixPHP"
  homepage "https://github.com/arixphp/cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arixphp/cli/releases/download/0.3.0/arix-0.3.0-macos-arm64.tar.gz"
      sha256 "0f6fee5eadb9327a1f9089ebcec6d185fcf1cef05855834e4e206e179d74058c"
    else
      url "https://github.com/arixphp/cli/releases/download/0.3.0/arix-0.3.0-macos-x64.tar.gz"
      sha256 "0edc7a80af8fff9e0229e613cc953861c35b2da240a7b51d0f011ee6206b0475"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arixphp/cli/releases/download/0.3.0/arix-0.3.0-linux-arm64.tar.gz"
      sha256 "9a83db7a177ab524dd909da60ea186ff407d7bbc6343b112fa31b1bdf4cc9b20"
    else
      url "https://github.com/arixphp/cli/releases/download/0.3.0/arix-0.3.0-linux-x64.tar.gz"
      sha256 "2d03c3959e274369b6bc62b0f9c276c38081a2fff5cadedb6456dab844a36836"
    end
  end

  def install
    bin.install "arix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/arix --version")
  end
end
