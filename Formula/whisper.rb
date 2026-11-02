# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.242.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.242.0/whisper-darwin-arm64"
      sha256 "6d2fe3d383b78c5446819602d58fc5db96f966fdfb1c40351c058e39ad00ab7f"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.242.0/whisper-darwin-amd64"
      sha256 "7e7ed02c865460a8ac3887d60b11dff4a695b925e57bb66e87868ba1816ee3a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.242.0/whisper-linux-arm64"
      sha256 "c4d6c17f7ac05cfedc3dd2545bc3ac06c44268750e9e0651e08273a6488bbcf1"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.242.0/whisper-linux-amd64"
      sha256 "df8679cfdfda595fdad89136264a67806d29cca8ca7d54bac7b499916e54797f"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
