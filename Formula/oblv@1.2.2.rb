class OblvAT122 < Formula
  desc "Brew formula for oblv client proxy"
  homepage "https://www.oblivious.com/oblv-deploy"

  if Hardware::CPU.intel?
    url "https://cli.oblivious.com/dev/brew/oblv-ccli-1.2.2-r0-x86_64-apple-darwin.tar.gz"
    sha256 "f14baa96b5e7a596c9e35a7cf12e584f45f3cdc7a2d6fb85c2c6187cab7554ee"
  elsif Hardware::CPU.arm?
    url "https://cli.oblivious.com/dev/brew/oblv-ccli-1.2.2-r0-aarch64-apple-darwin.tar.gz"
    sha256 "8784edf177159ee40a35195e5c665f832bbd725ef7b8bea8aab7dab8d04b3bf1"
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
