class TMeter < Formula
  desc "A terminal-based day progress bar showing elapsed time and user markers"
  homepage "https://github.com/jordan-jakisa/t-meter"
  url "https://github.com/jordan-jakisa/t-meter/releases/download/v0.3.1/t-meter-0.3.1-x86_64-apple-darwin.tar.gz"
  sha256 "5fa3345280f02db9311078aa8c2bed9501f5671b79a7248a1def4511d7330647"
  version "0.3.1"
  license "MIT"

  def install
    bin.install "t-meter"
  end

  def post_install
    ohai "Configuration"
    puts <<~EOS
      t-meter will automatically generate a configuration file on first run at:
        ~/.config/t-meter/config.toml

      The config file includes:
        • All available themes (default, ocean, forest, sunset, monochrome)
        • Light and dark mode options
        • Keyboard shortcuts documentation
        • Customization guide

      To customize your theme:
        1. Run t-meter once to generate the config file
        2. Edit ~/.config/t-meter/config.toml
        3. Change 'theme_name' and 'theme_mode' to your preference
        4. Restart t-meter
        5. Press 't' to cycle themes or 'd' to toggle dark mode while running
    EOS
  end

  test do
    system "#{bin}/t-meter", "--version"
  end
end
