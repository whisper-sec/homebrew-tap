# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.256.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.256.1/whisper-darwin-arm64"
      sha256 "1714dc0992c5caf726c85b0b5b05a4463618cd2ac49dfaf4cc40c05dc1114bc4"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.256.1/whisper-darwin-amd64"
      sha256 "a7f3192fdf045d88143455cd29a1b536629f0070c509d8000e43894c3d46f03b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.256.1/whisper-linux-arm64"
      sha256 "029f6f481939d4724d6472d6e60ec1fa9091160891b47e422253def9ec6bb3b0"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.256.1/whisper-linux-amd64"
      sha256 "ff12af29b98d94d3264e85cbf6f0d34be06706bef6e61f6d6de93423d5f50e8f"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
