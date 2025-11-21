class TMeter < Formula
  desc "A terminal-based day progress bar showing elapsed time and user markers"
  homepage "https://github.com/jordan-jakisa/t-meter"
  url "https://github.com/jordan-jakisa/t-meter/releases/download/v0.3.2/t-meter-0.3.2-x86_64-apple-darwin.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  version "0.3.2"
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
