# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.260.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.260.3/whisper-darwin-arm64"
      sha256 "70c303379361c159e2143f82432776a947077a14f32c5c3451553f74fd536aaa"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.260.3/whisper-darwin-amd64"
      sha256 "fe786a246878694ddec03aca7d98d46413c830544596be104bd3ee145b7d74e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.260.3/whisper-linux-arm64"
      sha256 "556c59afcc3098d208a281fb547cbd07d52daa44fec6dd1c4a94299463a02a26"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.260.3/whisper-linux-amd64"
      sha256 "790a9060b537e943a42f352aa7e46350a1dd7147d772a0a2da44d76e077f97de"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
