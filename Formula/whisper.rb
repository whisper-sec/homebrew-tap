# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.130.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.130.0/whisper-darwin-arm64"
      sha256 "c1107229157e51fddbe331c7e5a641a4f98081698f80f540861bd1b3e50fe1ae"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.130.0/whisper-darwin-amd64"
      sha256 "c48a6ef5a771b1a61e9b9efc1bb12e551ff767516ebfc6e2c31cc69dbae46e96"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.130.0/whisper-linux-arm64"
      sha256 "8ea5ef9fc0957d06be312b05af3ae853ce764ca5a1eaf35b747a523b1cacd9fc"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.130.0/whisper-linux-amd64"
      sha256 "db74a82c875c88e89ab17ed8a48e5521ba34263a99383733e8a5206c22f06bcb"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
