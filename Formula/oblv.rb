class Oblv < Formula
  desc "Brew formula for oblv client proxy"
  homepage "https://www.oblivious.com/oblv"

  if Hardware::CPU.intel?
    url "https://cli.oblivious.com/1.0.0/brew/oblv-ccli-1.0.0-x86_64-apple-darwin.tar.gz"
    sha256 "dbe1369b358b058c812774a6b7c3e774bbec4db52c67031927e8a3d405a875a3"
  elsif Hardware::CPU.arm?
    url "https://cli.oblivious.com/1.0.0/brew/oblv-ccli-1.0.0-aarch64-apple-darwin.tar.gz"
    sha256 "4c7e93d5a586815f5ce738349b81b98f5e270f31bc1b9855b51b114702dbb970"
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
