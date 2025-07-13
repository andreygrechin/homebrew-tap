# typed: false
# frozen_string_literal: true

class Glreporter < Formula
  desc "CLI tool for validating, comparing, and manipulating semantic versions"
  homepage "https://github.com/andreygrechin/glreporter"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/andreygrechin/glreporter/releases/download/v0.4.0/glreporter_0.4.0_darwin_x86_64.tar.gz"
      sha256 "7119901a44b556ae1a89171237f8aac542510998cb2161795523cf754adf76fe"

      def install
        bin.install "glreporter"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/andreygrechin/glreporter/releases/download/v0.4.0/glreporter_0.4.0_darwin_arm64.tar.gz"
      sha256 "3f8338ecd8aef036a73fdd7feb1cf17bddbcbfbf230bbcc4d6e246e112d2acfe"

      def install
        bin.install "glreporter"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/andreygrechin/glreporter/releases/download/v0.4.0/glreporter_0.4.0_linux_x86_64.tar.gz"
      sha256 "5f921374d7a279053c1c34d363790a0848a5d9cb8cac110a8555d88256fbe49a"

      def install
        bin.install "glreporter"
      end
    end
  end

  test do
    system bin/"glreporter", "-v"
  end
end
