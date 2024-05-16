class Oblv < Formula
  desc "Brew formula for oblv client proxy"
  homepage "https://www.oblivious.com/oblv"

  if Hardware::CPU.intel?
    url "https://oblv-ccli.oblivious.com/dev/brew/oblv-ccli-0.6.1-r2-x86_64-apple-darwin.tar.gz"
    sha256 "24f6e4c5ed99dc942fc6c315abafb1fe2e45a64c0d36a42e9d8e25b369840a33"
  elsif Hardware::CPU.arm?
    url "https://oblv-ccli.oblivious.com/dev/brew/oblv-ccli-0.6.1-r2-aarch64-apple-darwin.tar.gz"
    sha256 "9d874a85bce203d844350a9faadfa950d289f1b6323a967327f5ab49250122ab"
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
