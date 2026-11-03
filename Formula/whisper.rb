# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.244.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.244.0/whisper-darwin-arm64"
      sha256 "78b7f60f2ea1b7a83c5a913579688bac47e65b6ab76f68544cd1ed889d820f40"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.244.0/whisper-darwin-amd64"
      sha256 "480e463bf5ddca346e2438238bd1412990fc923fec9072fc9e98a307c293f887"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.244.0/whisper-linux-arm64"
      sha256 "b964350a9331702c2755da2c10bfdc295d26f39106d102fa734204aa37203fc0"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.244.0/whisper-linux-amd64"
      sha256 "65057226a4ae71aa4383d49e6d19442ffe4117806f1cfe2c49066a1983fe41dd"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
