# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Atlan < Formula
  desc "Atlan CLI"
  homepage "https://developer.atlan.com/sdks/cli/?h=cli"
  version "0.1.12"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/rittikdasgupta/releases/releases/download/v0.1.12/atlan_Darwin_amd64.tar.gz"
      sha256 "024a55d1c4f76cf97048e6d253ed218855d376f812f36e2a0aa956ec41686829"

      def install
        bin.install "atlan"
      end
    end
    on_arm do
      url "https://github.com/rittikdasgupta/releases/releases/download/v0.1.12/atlan_Darwin_arm64.tar.gz"
      sha256 "2d5f8477c638f1c9039f453a22b2649fb7f0b2e42da77ce4a13d348b54e6955e"

      def install
        bin.install "atlan"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/rittikdasgupta/releases/releases/download/v0.1.12/atlan_Linux_amd64.tar.gz"
        sha256 "1d6107313f5e4642df15e5370575fc96d5a227c04de4b678721a1460a26854b2"

        def install
          bin.install "atlan"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/rittikdasgupta/releases/releases/download/v0.1.12/atlan_Linux_arm64.tar.gz"
        sha256 "e1c5f13a3147b89790c23f63691d327840b4279454804d68429524912651f567"

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
