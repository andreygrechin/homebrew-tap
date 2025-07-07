# typed: false
# frozen_string_literal: true

class Glreporter < Formula
  desc "CLI tool for validating, comparing, and manipulating semantic versions"
  homepage "https://github.com/andreygrechin/glreporter"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/andreygrechin/glreporter/releases/download/v0.3.0/glreporter_0.3.0_darwin_x86_64.tar.gz"
      sha256 "d1ef6e4979ffe3092c4c30998690070c21ae94bd40bb678834a4e0d8d3ee3f4c"

      def install
        bin.install "glreporter"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/andreygrechin/glreporter/releases/download/v0.3.0/glreporter_0.3.0_darwin_arm64.tar.gz"
      sha256 "d315d73165540b22803c09b9b4610a23044019b8af421cd93cf86bd99fa2ec8a"

      def install
        bin.install "glreporter"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/andreygrechin/glreporter/releases/download/v0.3.0/glreporter_0.3.0_linux_x86_64.tar.gz"
      sha256 "a6c0fb2dd844afe5002e498c8c8932e182ce4b8839bf95f66a5f1f6fee10cbe4"

      def install
        bin.install "glreporter"
      end
    end
  end

  test do
    system bin/"glreporter", "-v"
  end
end
