# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v1.0.0/whisper-darwin-arm64"
      sha256 "4e56f226027566eaacc95fd7897ef12212fa8098f6427bafed099c77da4affaa"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v1.0.0/whisper-darwin-amd64"
      sha256 "2f61f972a63904bb371549404fc284e4b4280d7ad24deae20a2971ce9530ed60"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v1.0.0/whisper-linux-arm64"
      sha256 "3c66c6eef75a7867d92dddf632262b830ed373f517de5677466044182e358265"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v1.0.0/whisper-linux-amd64"
      sha256 "7c1d94b10a642c2484bdec1ecaee7abd652d38fed5f9d0134c6b903e96585b45"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
