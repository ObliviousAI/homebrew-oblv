class OblvDev < Formula
  desc "Brew formula for oblv client proxy"
  homepage "https://www.oblivious.com/oblv"

  if Hardware::CPU.intel?
    url "https://cli.oblivious.com/dev/brew/oblv-ccli-0.6.1-r4-x86_64-apple-darwin.tar.gz"
    sha256 "6cbe7028e9e874a1a02ac564512a003823dbfc6a3e6eee49f2b059ebc928b866"
  elsif Hardware::CPU.arm?
    url "https://cli.oblivious.com/dev/brew/oblv-ccli-0.6.1-r4-aarch64-apple-darwin.tar.gz"
    sha256 "f552114f768d410aad8d7ce145053097beda2d866000af3f337acb6143ded893"
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
