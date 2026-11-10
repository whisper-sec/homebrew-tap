# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.263.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.263.0/whisper-darwin-arm64"
      sha256 "e75b64bc5dc7a58badae4a20986867c834b15baae549bef211d588f2e20e543b"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.263.0/whisper-darwin-amd64"
      sha256 "e1c87c679f58268bd57633c81dc146a0b365445f5827f4de6e032b0b990e12b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.263.0/whisper-linux-arm64"
      sha256 "f3375576d954292cc65014cb7b20a87830bbf1872e487b6b13f88c86502e93d2"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.263.0/whisper-linux-amd64"
      sha256 "7b44890f52f81e1fbe95c1f32aca78a759a4599191a90be8076aba4c2b9c0ea6"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
