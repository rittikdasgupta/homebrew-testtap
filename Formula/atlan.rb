# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Atlan < Formula
  desc "Atlan CLI"
  homepage "https://developer.atlan.com/sdks/cli"
  version "0.1.9"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rittikdasgupta/releases/releases/download/v0.1.9/atlan_Darwin_amd64.tar.gz"
      sha256 "e330adb729309e2afb461256b537a58bd62134f8d29bfda560c6aa83b2d3535a"

      def install
        bin.install "atlan"
      end
    end
    on_arm do
      url "https://github.com/rittikdasgupta/releases/releases/download/v0.1.9/atlan_Darwin_arm64.tar.gz"
      sha256 "aa62e028025c772974605f6a1884319b214d29eb57bf917e8f87fc967b10c346"

      def install
        bin.install "atlan"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/rittikdasgupta/releases/releases/download/v0.1.9/atlan_Linux_amd64.tar.gz"
        sha256 "ab39436ade318fcb76bd0799af475b220d1bed1c5d7c957010d57794cc072f7f"

        def install
          bin.install "atlan"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/rittikdasgupta/releases/releases/download/v0.1.9/atlan_Linux_arm64.tar.gz"
        sha256 "e5efa84ca8b0ca3682f6333de1fbec85c3a868d19babe6c2d1a6d2c70a69ac0a"

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
