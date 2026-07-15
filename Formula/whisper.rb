# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.131.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.131.0/whisper-darwin-arm64"
      sha256 "6d8a44f8a1d28e2d6bf7b9db202cf50f496e8de6ebe93f7db7852af721866989"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.131.0/whisper-darwin-amd64"
      sha256 "e1623e83b7bcdfbced58280ff0b842d0bd8eb002918a68e88055deab7e40f67f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.131.0/whisper-linux-arm64"
      sha256 "d1c293c1d5d53e317f19e963a0eff8d661dd3aca2f978cbe653ffa8ec34dac84"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.131.0/whisper-linux-amd64"
      sha256 "431336e42457cb24aa28b3f9961259314328b3f7717cca895c77f871b72d1930"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
