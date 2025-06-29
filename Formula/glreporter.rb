# typed: false
# frozen_string_literal: true

class Glreporter < Formula
  desc "CLI tool for validating, comparing, and manipulating semantic versions"
  homepage "https://github.com/andreygrechin/glreporter"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/andreygrechin/glreporter/releases/download/v0.1.0/glreporter_0.1.0_darwin_x86_64.tar.gz"
      sha256 "a212624531df869b33dd20ac5fef67d94bf4edc1ce526248da119a521ea7308d"

      def install
        bin.install "glreporter"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/andreygrechin/glreporter/releases/download/v0.1.0/glreporter_0.1.0_darwin_arm64.tar.gz"
      sha256 "ae0a43da2fc9c799145feba0d1453f47432cf31f4593db7687fd03ca56ce74e6"

      def install
        bin.install "glreporter"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/andreygrechin/glreporter/releases/download/v0.1.0/glreporter_0.1.0_linux_x86_64.tar.gz"
      sha256 "da69616a346306411358a98afbcd4868c634bb0a099a2bdba1de1503ce03a90a"

      def install
        bin.install "glreporter"
      end
    end
  end

  test do
    system bin/"glreporter", "-v"
  end
end
