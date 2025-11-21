class TMeter < Formula
  desc "A terminal-based day progress bar showing elapsed time and user markers"
  homepage "https://github.com/jordan-jakisa/t-meter"
  url "https://github.com/jordan-jakisa/t-meter/releases/download/v0.3.0/t-meter-0.3.0-x86_64-apple-darwin.tar.gz"
  sha256 "8bfad290bdac5a73102aed09428785fc52a1ce8f11d7f8274984c82180732c97"
  version "0.3.0"
  license "MIT"

  def install
    bin.install "t-meter"
  end

  test do
    system "#{bin}/t-meter", "--version"
  end
end
