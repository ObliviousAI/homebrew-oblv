class HomebrewOblv < Formula
  desc "Brew formula for oblv client proxy"
  homepage "https://docs.oblivious.ai/cli/introduction"
  url "https://github.com/ObliviousAI/homebrew-oblv/releases/download/0.3.0/oblv-0.3.0.tar.gz"
  sha256 "f310698c2e3dfa64998262f44faf65901ca6a9a640c03c892c65738c2724f722"
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
