class OblvDev < Formula
  desc "Brew formula for oblv client proxy"
  homepage "https://docs.oblivious.ai/cli/introduction"
  if Hardware::CPU.intel?
      url "https://oblv-cli-binary.oblivious.ai/nightly/brew/oblv-ccli-0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "1b9cf750d823b2b2ce5a2f5c957b841d3bd7ffc0571a7eb8a8a1177ac8efce09"
  elsif Hardware::CPU.arm?
      url "https://oblv-cli-binary.oblivious.ai/nightly/brew/oblv-ccli-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "debf799166b8754cb34f9cf13a268c0f65489331b929c61ca3e3001beead6309"
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
