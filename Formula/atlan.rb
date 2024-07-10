# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Atlan < Formula
  desc "Atlan CLI"
  homepage "https://developer.atlan.com/sdks/cli/?h=cli"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/rittikdasgupta/releases/releases/download/v0.1.8/atlan_Darwin_amd64.tar.gz"
      sha256 "6445a41eab4609f7ab65c93b79e173b61d4093d64105e7dd988dea142530be1e"

      def install
        bin.install "atlan"
      end
    end
    on_arm do
      url "https://github.com/rittikdasgupta/releases/releases/download/v0.1.8/atlan_Darwin_arm64.tar.gz"
      sha256 "da18c8f9b14ee2d98313cd01a95c6b1f45cdb0ee3db95ee83ed502c32cf5037b"

      def install
        bin.install "atlan"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/rittikdasgupta/releases/releases/download/v0.1.8/atlan_Linux_amd64.tar.gz"
        sha256 "b69c8c374f48fefba855a5feafe6623664192e40032fc1c38e9fd4c253b18e7b"

        def install
          bin.install "atlan"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/rittikdasgupta/releases/releases/download/v0.1.8/atlan_Linux_arm64.tar.gz"
        sha256 "cb81073dfb8b9e0c3a5df0f5e0a19b518c2866f6c4a1336cab4f03c136219851"

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
