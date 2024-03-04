class Oblv < Formula
  desc "Brew formula for oblv client proxy"
  homepage "https://docs.oblivious.ai/cli/introduction"
  url "https://oblv-cli-binary.oblivious.ai/0.5.1/oblv-ccli-0.5.1-x86_64-apple-darwin.tar.gz"
  sha256 "be238e1f529f14d5592d6ac404986d5c1e7d4f6a8793c9da2837e11d4bebdb51"
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
