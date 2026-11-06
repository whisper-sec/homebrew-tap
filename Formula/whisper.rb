# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.252.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.252.0/whisper-darwin-arm64"
      sha256 "76d08de8369da4db9eede622ac387884c5298d555d953cf6ba9d9bb3b26559d7"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.252.0/whisper-darwin-amd64"
      sha256 "5d6c56c907a0532326b2a73e8543df1c8759605d5dc85d0b7f17a125e23c9b9c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.252.0/whisper-linux-arm64"
      sha256 "dd384d33381b433c064adf1817eba0a4741bd00e50ac1dbe1d7d1a59a19c4b55"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.252.0/whisper-linux-amd64"
      sha256 "ccbf6131e6ddffbb309c2c2d2ccbe2346562eb7910b42cc51c1c814d29c94e59"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
