class TMeter < Formula
  desc "A terminal-based day progress bar showing elapsed time and user markers"
  homepage "https://github.com/jordan-jakisa/t-meter"
  url "https://github.com/jordan-jakisa/t-meter/releases/download/v0.3.4/t-meter-x86_64-apple-darwin.tar.gz"
  sha256 "5e1572b2ee25d31e753f3697c016f45134df6d650f2a9c47364b2cbea1a4aeda"
  version "0.3.4"
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
