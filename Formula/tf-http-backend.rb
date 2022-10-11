# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TfHttpBackend < Formula
  desc "A http backend for Terraform to proxy to a Git repository"
  homepage "https://github.com/sunnhas/tf-http-backend"
  version "0.0.1"
  license "Apache-2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sunnhas/tf-http-backend/releases/download/v0.0.1/tf-http-backend_0.0.1_Darwin_arm64.tar.gz"
      sha256 "0453722bd8d5f9872adff93d2dad5201bddd82b9b87904f8a64498c5df501303"

      def install
        bin.install "tf-http-backend"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sunnhas/tf-http-backend/releases/download/v0.0.1/tf-http-backend_0.0.1_Darwin_x86_64.tar.gz"
      sha256 "448b2b3e23c2656c35aaa08cc46382b720afce5b224aa10c8bceedd98a1ddfaf"

      def install
        bin.install "tf-http-backend"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sunnhas/tf-http-backend/releases/download/v0.0.1/tf-http-backend_0.0.1_Linux_arm64.tar.gz"
      sha256 "5aec88ddfeec689c63d3df8960e19ef483375a3b38e641861872e93fdecca80c"

      def install
        bin.install "tf-http-backend"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sunnhas/tf-http-backend/releases/download/v0.0.1/tf-http-backend_0.0.1_Linux_x86_64.tar.gz"
      sha256 "253c686f74100168d9ee2ad13c2be8f482f2dbaaf24aeeefaeae002357862d37"

      def install
        bin.install "tf-http-backend"
      end
    end
  end

  test do
    system "#{bin} --version"
  end
end
