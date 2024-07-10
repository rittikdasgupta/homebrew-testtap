# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Atlan < Formula
  desc "Atlan CLI"
  homepage "https://developer.atlan.com/sdks/cli/?h=cli"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/rittikdasgupta/releases/releases/download/v0.1.9/atlan_Darwin_amd64.tar.gz"
      sha256 "0da2600f21858f5bc3af830f6575c086062f00641b49ab752d64a139b835a2b5"

      def install
        bin.install "atlan"
      end
    end
    on_arm do
      url "https://github.com/rittikdasgupta/releases/releases/download/v0.1.9/atlan_Darwin_arm64.tar.gz"
      sha256 "f653d67356dda3a3a720b6c615621df48461001b1bbac43916e01fafa6a4f955"

      def install
        bin.install "atlan"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/rittikdasgupta/releases/releases/download/v0.1.9/atlan_Linux_amd64.tar.gz"
        sha256 "ec7f6875c7fb55ede5d7891e45f43cb49be6b6269819318d3b1055fb77241b63"

        def install
          bin.install "atlan"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/rittikdasgupta/releases/releases/download/v0.1.9/atlan_Linux_arm64.tar.gz"
        sha256 "db2bc93a042b5c95e6471dfc2a5be6ab0de648d1395fcf6e1315250d2898cd37"

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
