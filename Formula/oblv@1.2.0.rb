class OblvAT120 < Formula
  desc "Brew formula for oblv client proxy"
  homepage "https://www.oblivious.com/oblv"

  if Hardware::CPU.intel?
    url "https://cli.oblivious.com/dev/brew/oblv-ccli-1.2.0-r1-x86_64-apple-darwin.tar.gz"
    sha256 "b51e0fc4f102c2cb3e8ad5482462a62e6b048f6886773f0afa21bd18e578e982"
  elsif Hardware::CPU.arm?
    url "https://cli.oblivious.com/dev/brew/oblv-ccli-1.2.0-r1-aarch64-apple-darwin.tar.gz"
    sha256 "f8773dc210f7cec9a71dbcb6aea6373275f94dc120cdf9cc6e111e5ab90ad5ff"
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
