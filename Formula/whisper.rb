# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.243.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.243.0/whisper-darwin-arm64"
      sha256 "bc185ef943798bcc7d3be2745748a1d88acac5239b529f10fed565273e287a47"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.243.0/whisper-darwin-amd64"
      sha256 "bf763eef02e7453ddee1c40ef03b9a34f52277d4b23c71ac912779fe6e2e560f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.243.0/whisper-linux-arm64"
      sha256 "8049d666029709bf7e7cf3d3d6830c4eaf58f15e9abca7eb5fb58eba3cb4760d"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.243.0/whisper-linux-amd64"
      sha256 "6e2c6b7ee9f88eecb1f681a6695736aee12eb43fcad42b021afe194220fc81fd"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
