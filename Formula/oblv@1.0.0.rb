class OblvDevAT100 < Formula
  desc "Brew formula for oblv client proxy"
  homepage "https://www.oblivious.com/oblv"

  if Hardware::CPU.intel?
    url "https://cli.oblivious.com/dev/brew/oblv-ccli-1.0.0-r10-x86_64-apple-darwin.tar.gz"
    sha256 "69fe54fcfdf9a6b7cd56a5bb77d86e341431e46614b429a91187b58acdd578a2"
  elsif Hardware::CPU.arm?
    url "https://cli.oblivious.com/dev/brew/oblv-ccli-1.0.0-r10-aarch64-apple-darwin.tar.gz"
    sha256 "6d3182fa4ae7f59c1bc4ccd2245570d347a0e99cabed2c512ffb07b011c1a3f7"
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
