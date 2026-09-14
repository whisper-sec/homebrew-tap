# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.214.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.214.0/whisper-darwin-arm64"
      sha256 "ef38481fe301cb0e4700c55b1831e139bf15be87a7c5c6c9008bd24c69dcf314"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.214.0/whisper-darwin-amd64"
      sha256 "c3855b67ca41ba1a7abd0cec49a0e722498024a9cfa25769916df230adafb236"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.214.0/whisper-linux-arm64"
      sha256 "2deedbb261e029fd705b5f0758acc5f8d5569761870fe240d63d6744afcab727"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.214.0/whisper-linux-amd64"
      sha256 "967f434dab52d2917972acbd285c9083104637f2c744dbf049ed8ecfe3cce9be"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
