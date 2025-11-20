class TMeter < Formula
  desc "A terminal-based day progress bar showing elapsed time and user markers"
  homepage "https://github.com/jordan-jakisa/t-meter"
  url "https://github.com/jordan-jakisa/t-meter/releases/download/v0.1.0/t-meter-0.1.0-x86_64-apple-darwin.tar.gz"
  sha256 "00c3dcfa7b26df9977222414a4e8d79ed0d17c567ec06e39674ab27016ce0dc5"
  version "0.1.0"
  license "MIT"

  def install
    bin.install "t-meter"
  end

  test do
    system "#{bin}/t-meter", "--version"
  end
end
