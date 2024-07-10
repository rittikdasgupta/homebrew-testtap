# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Atlan < Formula
  desc "Atlan CLI"
  homepage "https://developer.atlan.com/sdks/cli/?h=cli"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/rittikdasgupta/releases/releases/download/v0.1.6/atlan_Darwin_amd64.tar.gz"
      sha256 "8640c5e60e01a8d9ab6f2af7a8976a489ec1ca8ceef81e0fafdf0fa38a9539ff"

      def install
        bin.install "atlan"
      end
    end
    on_arm do
      url "https://github.com/rittikdasgupta/releases/releases/download/v0.1.6/atlan_Darwin_arm64.tar.gz"
      sha256 "5af2a4f3dd0018310a92abe64b377fb3e7fb097a15c61495196e022a7866b4cf"

      def install
        bin.install "atlan"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/rittikdasgupta/releases/releases/download/v0.1.6/atlan_Linux_amd64.tar.gz"
        sha256 "ab5bccdda69f7012c73260b6408be81a5415a68bdbe34e04a308b5dc0819cd43"

        def install
          bin.install "atlan"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/rittikdasgupta/releases/releases/download/v0.1.6/atlan_Linux_arm64.tar.gz"
        sha256 "a07e9e86ffadeff447bd2b883b73e81a7ab7b03fff9bf4e73b14af2b164d7322"

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
