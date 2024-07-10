# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AtlanAT014 < Formula
  desc "Atlan CLI"
  homepage "https://developer.atlan.com/sdks/cli/?h=cli"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/rittikdasgupta/releases/releases/download/v0.1.4/atlan_Darwin_amd64.tar.gz"
      sha256 "0b9047b8b3cc76ffac48c479eee9b624d68dcfa036357e5ec3fa84d81106ec8b"

      def install
        bin.install "atlan"
      end
    end
    on_arm do
      url "https://github.com/rittikdasgupta/releases/releases/download/v0.1.4/atlan_Darwin_arm64.tar.gz"
      sha256 "b48dc46e9066f0a67c6bc7de6187f94e06fb3f4ffabb6f484ca65a30671e7f16"

      def install
        bin.install "atlan"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/rittikdasgupta/releases/releases/download/v0.1.4/atlan_Linux_amd64.tar.gz"
        sha256 "b94cf31117dc9c796660fe2209e40ffc454bb2322324b49742a389c85289f3a2"

        def install
          bin.install "atlan"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/rittikdasgupta/releases/releases/download/v0.1.4/atlan_Linux_arm64.tar.gz"
        sha256 "1dc4e5b9a0fa6da881ce0a25c1cf0ab54632f89848110e87066343001d0bba3b"

        def install
          bin.install "atlan"
        end
      end
    end
  end

  def post_install
    system "#{bin}/atlan"
  end
end
