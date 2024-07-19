# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AtlanAT021 < Formula
  desc "Atlan CLI"
  homepage "https://developer.atlan.com/sdks/cli"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/rittikdasgupta/releases/releases/download/v0.2.1/atlan_Darwin_amd64.tar.gz"
      sha256 "75a69a8ea23e571301c83d530fc175b40102b0b36bf11009e6f7af35e118425e"

      def install
        bin.install "atlan"
      end
    end
    on_arm do
      url "https://github.com/rittikdasgupta/releases/releases/download/v0.2.1/atlan_Darwin_arm64.tar.gz"
      sha256 "bac65fc7c4713a5e196bc496b478eb06d17b7f97a20068921b20cf0dd52e9efe"

      def install
        bin.install "atlan"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/rittikdasgupta/releases/releases/download/v0.2.1/atlan_Linux_amd64.tar.gz"
        sha256 "332717b48ad3e4a6ee9712c9766bc31b486238a8d055355dc0dab0c42debfd1b"

        def install
          bin.install "atlan"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/rittikdasgupta/releases/releases/download/v0.2.1/atlan_Linux_arm64.tar.gz"
        sha256 "4a92f01737cb93bc8bb0b4205455361e1225f47aeaa09a986712ef45ffa30b75"

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