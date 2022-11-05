class Oblv < Formula
  desc "Brew formula for oblv client proxy"
  homepage "https://docs.oblivious.ai/cli/introduction"
  url "https://api.oblivious.ai/oblv-ccli/0.4.0/oblv-ccli-0.4.0-x86_64-apple-darwin.tar.gz"
  sha256 "6c62070ed1f3e2adcb92cd5be54abdbd3b655395cc14c1c89d0dfb4451b4d01a"
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
