# typed: false
# frozen_string_literal: true

class Glreporter < Formula
  desc "CLI tool for validating, comparing, and manipulating semantic versions"
  homepage "https://github.com/andreygrechin/glreporter"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/andreygrechin/glreporter/releases/download/v0.2.0/glreporter_0.2.0_darwin_x86_64.tar.gz"
      sha256 "8a700f17dd65dda1904acca5c4c9c21bb9293c6336f1b6be380eb0d41834272f"

      def install
        bin.install "glreporter"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/andreygrechin/glreporter/releases/download/v0.2.0/glreporter_0.2.0_darwin_arm64.tar.gz"
      sha256 "b445e90d9c0f5a6f0af61b566523f0691e97e7228093a559414556a43e5023db"

      def install
        bin.install "glreporter"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/andreygrechin/glreporter/releases/download/v0.2.0/glreporter_0.2.0_linux_x86_64.tar.gz"
      sha256 "5130ea5ff9647d73441f688e29b1fa696a3dfce54241932d6903cb00c4fae4d0"

      def install
        bin.install "glreporter"
      end
    end
  end

  test do
    system bin/"glreporter", "-v"
  end
end
