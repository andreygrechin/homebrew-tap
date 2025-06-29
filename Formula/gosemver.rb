# typed: false
# frozen_string_literal: true

class Gosemver < Formula
  desc "CLI tool for validating, comparing, and manipulating semantic versions"
  homepage "https://github.com/andreygrechin/gosemver"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/andreygrechin/gosemver/releases/download/v0.4.0/gosemver_0.4.0_darwin_x86_64.tar.gz"
      sha256 "05d9f9403b995af8dbf509fd3b7c9025e7e28cf7a827fdcbc8b666c64772fc12"

      def install
        bin.install "gosemver"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/andreygrechin/gosemver/releases/download/v0.4.0/gosemver_0.4.0_darwin_arm64.tar.gz"
      sha256 "d5df86048113e09b6f91786da841ff025a4bd690a4bfd8912fc32f2db89015b7"

      def install
        bin.install "gosemver"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/andreygrechin/gosemver/releases/download/v0.4.0/gosemver_0.4.0_linux_x86_64.tar.gz"
      sha256 "1d6bcc0433369fe6edcce7d3715d04edbbd52ab75a8bfbcd2439833048c58024"

      def install
        bin.install "gosemver"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/andreygrechin/gosemver/releases/download/v0.4.0/gosemver_0.4.0_linux_arm64.tar.gz"
      sha256 "ccdbabf034137873dba710e906da701e9dc125ffd351eaa1f7361aa0c6374723"

      def install
        bin.install "gosemver"
      end
    end
  end

  test do
    system bin/"gosemver", "version"
  end
end
