# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.256.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.256.0/whisper-darwin-arm64"
      sha256 "120a1088fb6d480825cd4d768a83bb449a1d6cade3e0dd4b1ed665d93ce6814e"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.256.0/whisper-darwin-amd64"
      sha256 "cf81c9eb0a9087f52e8d7ef406e375333d158bbc100bff91ea9690ab6a61610b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.256.0/whisper-linux-arm64"
      sha256 "af632700ad83c431db27dfaf2e63c7beb2c871419504b89b7853007d4ff332a7"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.256.0/whisper-linux-amd64"
      sha256 "604328d8c528597c8372a9b60bacc0632177ec6011928baf938a8bd2a2382e61"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
