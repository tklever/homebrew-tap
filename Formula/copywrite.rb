# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Copywrite < Formula
  desc "copywrite -- utilities for managing copyright headers and license files for GitHub repos"
  homepage "https://github.com/hashicorp/copywrite"
  version "0.13.2"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hashicorp/copywrite/releases/download/v0.13.2/copywrite_0.13.2_darwin_arm64.tar.gz"
      sha256 "653c575948d4e8e0b9865cbc8c8ef2458f5d0f5b4a3e97c44725d57b1c4d2b83"

      def install
        bin.install "copywrite"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hashicorp/copywrite/releases/download/v0.13.2/copywrite_0.13.2_darwin_x86_64.tar.gz"
      sha256 "eada1c365197134e3e45ca34225019b38c8b157ecb8a4a885581b2c999b29010"

      def install
        bin.install "copywrite"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hashicorp/copywrite/releases/download/v0.13.2/copywrite_0.13.2_linux_arm64.tar.gz"
      sha256 "ce74418d66b6c25cf29f5b38debc1100254cfecaf19a6a030586f16c3c5f742a"

      def install
        bin.install "copywrite"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hashicorp/copywrite/releases/download/v0.13.2/copywrite_0.13.2_linux_x86_64.tar.gz"
      sha256 "caead3fe205d63144f3b4fd9e6a31eebacb08befcdc3632e7b040bf4b13fc34e"

      def install
        bin.install "copywrite"
      end
    end
  end

  test do
    system "#{bin}/copywrite --version"
  end
end