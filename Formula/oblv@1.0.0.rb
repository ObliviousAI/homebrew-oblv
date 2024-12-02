class OblvAT100 < Formula
  desc "Brew formula for oblv client proxy"
  homepage "https://www.oblivious.com/oblv"

  if Hardware::CPU.intel?
    url "https://cli.oblivious.com/dev/brew/oblv-ccli-1.0.0-r10-x86_64-apple-darwin.tar.gz"
    sha256 "f976780423800f691990d6c738f6382aabddee940119f9f3ff66e33696c6af29"
  elsif Hardware::CPU.arm?
    url "https://cli.oblivious.com/dev/brew/oblv-ccli-1.0.0-r10-aarch64-apple-darwin.tar.gz"
    sha256 "425c6f03b1478ed6859ea510a2f1c43fd9297b03ac2fb8f755bb82783f49acc1"
  end

  license ""

  def install
    bin.install "oblv"
    prefix.install "EULA"
    prefix.install "README.md"
  end

  test do
    system "#{bin}/oblv", "--help"
  end
end
