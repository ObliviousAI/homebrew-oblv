class OblvDev < Formula
  desc "Brew formula for oblv client proxy"
  homepage "https://docs.oblivious.ai/cli/introduction"

  if Hardware::CPU.intel?
    url "https://oblv-ccli.oblivious.com/nightly/brew/oblv-ccli-0.6.0.r2-x86_64-apple-darwin.tar.gz"
    sha256 "ebe4a3ef9ad2309c42b6770573ea6d06cdd4ee9020e0ad64d1ce186fc7868cd4"
  elsif Hardware::CPU.arm?
    url "https://oblv-ccli.oblivious.com/nightly/brew/oblv-ccli-0.6.0.r2-aarch64-apple-darwin.tar.gz"
    sha256 "79b5e70398e4e2e3c07fca858fdd0a38a20833d4448c07d866eef1b49bd1055d"
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
