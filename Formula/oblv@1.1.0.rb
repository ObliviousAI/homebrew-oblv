class OblvDevAT110 < Formula
  desc "Brew formula for oblv client proxy"
  homepage "https://www.oblivious.com/oblv"

  if Hardware::CPU.intel?
    url "https://cli.oblivious.com/dev/brew/oblv-ccli-1.1.0-x86_64-apple-darwin.tar.gz"
    sha256 "29b170cbfab28a29100b213bc871ffc8b8c0803394426e25114d0b062c1d58da"
  elsif Hardware::CPU.arm?
    url "https://cli.oblivious.com/dev/brew/oblv-ccli-1.1.0-aarch64-apple-darwin.tar.gz"
    sha256 "65dfcf5eb3b62639c43e77dbc8aec5fb709523ef33460af8e4cfa6fb8111e0b2"
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
