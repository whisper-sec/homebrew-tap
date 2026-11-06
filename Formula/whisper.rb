# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.250.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.250.0/whisper-darwin-arm64"
      sha256 "8d4f47d562b7cfb0ce42609f91da423e9f9444ce5153c65ecb48067aaae20801"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.250.0/whisper-darwin-amd64"
      sha256 "29a5464ca9ffe17be34daf21434a8b39200ed3401af77acb85c3d5c08eb21daf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.250.0/whisper-linux-arm64"
      sha256 "b6e211c490a918885787e5a49e0439c2aea3fb941d38974568fe6af356851d04"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.250.0/whisper-linux-amd64"
      sha256 "48e408205f5001eeb852b66cea57401a829839fcd079d0df6545891b626f72d4"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
