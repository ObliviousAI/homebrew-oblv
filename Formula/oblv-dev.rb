class OblvDev < Formula
  desc "Brew formula for oblv client proxy"
  homepage "https://docs.oblivious.ai/cli/introduction"

  if Hardware::CPU.intel?
    url "https://oblv-cli-binary.oblivious.ai/nightly/brew/oblv-ccli-0.6.0-x86_64-apple-darwin.tar.gz"
    sha256 "775ca8fdd15d439bb8080f5b0fbf0e9962a353f4644a26d5913ac5689787084f"
  elsif Hardware::CPU.arm?
    url "https://oblv-cli-binary.oblivious.ai/nightly/brew/oblv-ccli-0.6.0-aarch64-apple-darwin.tar.gz"
    sha256 "f48b6f0a63c045320501f1a9346361d93811f0314a44ffdaddf647a37dbfb46f"
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
