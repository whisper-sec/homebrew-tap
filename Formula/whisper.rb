# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.265.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.265.0/whisper-darwin-arm64"
      sha256 "0655d3edab865b5c7df495062ab661e94972359122abb902301132b49a356840"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.265.0/whisper-darwin-amd64"
      sha256 "357d88ac0a4034fa593543c74ff17474de9bc8f000bb098fb1e845a9f1d9450a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.265.0/whisper-linux-arm64"
      sha256 "41c7c9468280df39cdfb56c5c8bcd638342a1b1980e84fc16104789eea333cb0"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.265.0/whisper-linux-amd64"
      sha256 "303eef9d14e05657199a0414b61619b0e2bb433c5b2ce1485d44203a4d65b854"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
