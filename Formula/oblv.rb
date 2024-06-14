class Oblv < Formula
  desc "Brew formula for oblv client proxy"
  homepage "https://www.oblivious.com/oblv"

  if Hardware::CPU.intel?
    url "https://cli.oblivious.com/1.0.0/brew/oblv-ccli-1.0.0-r1-x86_64-apple-darwin.tar.gz"
    sha256 "d4799c93f036c8492bbf95c7bf3e7473f5e22a017baff32b0c9282e51d9cf825"
  elsif Hardware::CPU.arm?
    url "https://cli.oblivious.com/1.0.0/brew/oblv-ccli-1.0.0-r1-aarch64-apple-darwin.tar.gz"
    sha256 "31b1f8d34c9dcecfd42d7ac774b252510d2ce58ca9de72c716523c16fa570cc6"
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
