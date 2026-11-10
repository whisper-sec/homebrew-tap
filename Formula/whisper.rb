# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.264.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.264.1/whisper-darwin-arm64"
      sha256 "72e07156802244be5958d3e8c2cf5e538f64dc86fa1255fa6d904a41dd6c069f"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.264.1/whisper-darwin-amd64"
      sha256 "81a1cc6ba3d369abd9bdb4bb5778d6045982de84fd56fd04b02949e77fe3141e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.264.1/whisper-linux-arm64"
      sha256 "1a9232f8790421a8e35c5f9522721792566d603baa6251ea9ba544c659ccaac0"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.264.1/whisper-linux-amd64"
      sha256 "88178492afd400eab748ba6b9ca9a7f2edc5f99bfc34dd8586da5879c1876a05"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
