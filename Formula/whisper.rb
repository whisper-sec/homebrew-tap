# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.254.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.254.0/whisper-darwin-arm64"
      sha256 "66f8dbaa585eaf2546de6227a2c7326a511a916638fdf98b0ca19bdeafb514ed"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.254.0/whisper-darwin-amd64"
      sha256 "9a7d485c7f51310b5211270e4c88badbc2bdd09b3135cf433ac962e828e737b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.254.0/whisper-linux-arm64"
      sha256 "edbb09b026bf9bf5d1a05f64f06323e1d9397745302c01ac3e36c9fb40ae81d8"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.254.0/whisper-linux-amd64"
      sha256 "2720212a254bfce8151b85d1f0db669244eb7a83dcef709bd756383225ec390f"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
