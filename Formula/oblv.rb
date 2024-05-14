class Oblv < Formula
  desc "Brew formula for oblv client proxy"
  homepage "https://docs.oblivious.ai/cli/introduction"
  url "https://oblv-ccli.oblivious.com/0.5.1/oblv-ccli-0.5.1-x86_64-apple-darwin.tar.gz"
  sha256 "dbbaa32633372370738b36052cf67bb039b8a57defe0de43eedc3aabd640ebe3"
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
