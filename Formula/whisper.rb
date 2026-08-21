# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.210.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.210.1/whisper-darwin-arm64"
      sha256 "5800eb4a71e5fc4349010b099f6650c9cccb4775d6b9c3cc20229637fc34aec8"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.210.1/whisper-darwin-amd64"
      sha256 "9ca89aab3c8191303904e22222a7e9ee8a0cf1a168fa2438068c3022b304d4b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.210.1/whisper-linux-arm64"
      sha256 "b0d8f55ae6b081aa93698085760902ec383768b5c3094f2aab9409b2ac2a0dc4"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.210.1/whisper-linux-amd64"
      sha256 "5d8374a625a05b45f81bb0bbf2a8fc380006cb824ad29de2a6c3d8519eaa1bc4"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
