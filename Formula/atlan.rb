# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Atlan < Formula
  desc "Atlan CLI"
  homepage "https://developer.atlan.com/sdks/cli/?h=cli"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/rittikdasgupta/releases/releases/download/v0.1.4/atlan_Darwin_amd64.tar.gz"
      sha256 "8e2f87a5b290c1fd247b3c67e09f9f772c096ad0bde8a79a6e5a331e522c3f9a"

      def install
        bin.install "atlan"
      end
    end
    on_arm do
      url "https://github.com/rittikdasgupta/releases/releases/download/v0.1.4/atlan_Darwin_arm64.tar.gz"
      sha256 "bb47574c7c1c7c47567b14ed67bd4851f5307a2d21b5bbf37e71ddc894d32113"

      def install
        bin.install "atlan"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/rittikdasgupta/releases/releases/download/v0.1.4/atlan_Linux_amd64.tar.gz"
        sha256 "5eb95df753689684a57d405620489504315355c9a9c299cad065ed9a79c121cc"

        def install
          bin.install "atlan"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/rittikdasgupta/releases/releases/download/v0.1.4/atlan_Linux_arm64.tar.gz"
        sha256 "e8fa052aab62e32372ac72f8bb9580f193e883f5f22ec5a954226f60c8add39f"

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
