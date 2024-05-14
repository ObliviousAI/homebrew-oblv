class OblvDev < Formula
  desc "Brew formula for oblv client proxy"
  homepage "https://www.oblivious.com/oblv"

  if Hardware::CPU.intel?
    url "https://oblv-ccli.oblivious.com/dev/brew/oblv-ccli-0.6.1-x86_64-apple-darwin.tar.gz"
    sha256 "865592518264f690d68110fb89b40050804919dff052213713e350f988dad737"
  elsif Hardware::CPU.arm?
    url "https://oblv-ccli.oblivious.com/dev/brew/oblv-ccli-0.6.1-aarch64-apple-darwin.tar.gz"
    sha256 "44a5db099608794b4fb12a531573be0b2e2b6dc0b09d1ce99374dfde1b81b4e1"
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
