class Oblv < Formula
  desc "oblv client proxy"
  homepage "https://www.oblivious.com/oblv"

  if Hardware::CPU.intel?
    url "https://oblv-ccli.oblivious.com/nightly/brew/oblv-ccli-0.6.0-r3-x86_64-apple-darwin.tar.gz"
    sha256 "d2e3d891a8dbfeefd94e87b6febfa6545fd5e00b7084983c6fab3bcbebd3c484"
  elsif Hardware::CPU.arm?
    url "https://oblv-ccli.oblivious.com/nightly/brew/oblv-ccli-0.6.0-r3-aarch64-apple-darwin.tar.gz"
    sha256 "e21423083add4bf4b91e49b31869f57f5026968597b7691b4ad5c669889794e0"
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
