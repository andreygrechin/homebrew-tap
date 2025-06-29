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
      sha256 "a5312aa3b7a48394a27991108814e063bbd1820c2c1c699798fe7185d713273e"

      def install
        bin.install "glreporter"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/andreygrechin/glreporter/releases/download/v0.1.0/glreporter_0.1.0_darwin_arm64.tar.gz"
      sha256 "581432dac24b77581a63dc2d8c752bd430bad213708ae367418c357cdaa271af"

      def install
        bin.install "glreporter"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/andreygrechin/glreporter/releases/download/v0.1.0/glreporter_0.1.0_linux_x86_64.tar.gz"
      sha256 "5bba9a475e70f07ab226cddd582e1120cae2af5a752c5c6d9f87878ca91d61c5"

      def install
        bin.install "glreporter"
      end
    end
  end

  test do
    system bin/"glreporter", "-v"
  end
end
