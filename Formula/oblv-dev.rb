class OblvDev < Formula
  desc "Brew formula for oblv client proxy"
  homepage "https://www.oblivious.com/oblv"

  if Hardware::CPU.intel?
    url "https://cli.oblivious.com/dev/brew/oblv-ccli-1.0.0-r5-x86_64-apple-darwin.tar.gz"
    sha256 "bc173ad68d2c2f17f721b609e6bb9e9e350c0adcc6bf8b50eccdc3527a7136f1"
  elsif Hardware::CPU.arm?
    url "https://cli.oblivious.com/dev/brew/oblv-ccli-1.0.0-r5-aarch64-apple-darwin.tar.gz"
    sha256 "461349979c38815dac4c296c921610f983e3041deac11988d6840934cbea1d42"
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
