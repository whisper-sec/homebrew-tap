# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.219.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.219.0/whisper-darwin-arm64"
      sha256 "e8b0600020a1cf4bd774a1c146aa1799602d3a2adee84a6f7f907f5ce2caf130"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.219.0/whisper-darwin-amd64"
      sha256 "da6a2bf0cf354780911a4e65069d2896077fbb5f1e46a1cd1b8f72726b538151"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.219.0/whisper-linux-arm64"
      sha256 "7a4fa4ca21bd32edf9145f7ed6d19ee3ff85c9b31dffe8f7f1ba794ba2dd9d82"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.219.0/whisper-linux-amd64"
      sha256 "ac09263e5f3fafff942e0d36cd0810515e026935df7d330162d5420a49101413"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
