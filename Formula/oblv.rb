class Oblv < Formula
  desc "Brew formula for oblv client proxy"
  homepage "https://www.oblivious.com/oblv-deploy"

  if Hardware::CPU.intel?
    url "https://cli.oblivious.com/latest/brew/oblv-ccli-1.2.1-r0-x86_64-apple-darwin.tar.gz"
    sha256 "ea1fad3c563ce8cba5a268970da221b8220ca475bf6490944d335e7dbf3ec333"
  elsif Hardware::CPU.arm?
    url "https://cli.oblivious.com/latest/brew/oblv-ccli-1.2.1-r0-aarch64-apple-darwin.tar.gz"
    sha256 "f00eae664aaf47e81964c05764c5fa11c8deae6d3a23e17ec93a0a4130cc84a4"
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
