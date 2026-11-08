# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.258.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.258.2/whisper-darwin-arm64"
      sha256 "085cbe2089f3c352301f6bf582e6c7fa6adabae6523d80482c46eb004f417eef"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.258.2/whisper-darwin-amd64"
      sha256 "f4fe2f9c24e8d97348d04fca13685840a45d8a0b09d9a459a5f6adc7a4d539ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.258.2/whisper-linux-arm64"
      sha256 "4dae522fc019e0606eaec271ee5d89ef48aa303f51921f609b6216e40b363f65"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.258.2/whisper-linux-amd64"
      sha256 "e68fae3ad03af29d9b74a5d10e4e81718a1f7abbc95c72fabb83bddc5c831e6b"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
