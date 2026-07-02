# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.128.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.128.0/whisper-darwin-arm64"
      sha256 "f2df1b2ef8308db17159abe3d5291cec3c39647434de2823a832029061a927cd"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.128.0/whisper-darwin-amd64"
      sha256 "71aee639348d7603b0008f95257deab0182b78f91fa530c9218d63e40374a831"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.128.0/whisper-linux-arm64"
      sha256 "571f7d478c23b50698190d2d22c8c89b258e65fff015b6cee5c3d23b2591f554"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.128.0/whisper-linux-amd64"
      sha256 "0b278d943be307d026dca221310d4341f4451801f5ee31fc23bf9284dbdfe153"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
