# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.249.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.249.0/whisper-darwin-arm64"
      sha256 "924472a8e5025a6ccd619a793571f8ed468b37b95f25715feae2197f47c59f35"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.249.0/whisper-darwin-amd64"
      sha256 "8c059db6de69c1f3ff7a2b3599cc33b862b44cb49f8daceaf7ce4f0a69a53378"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.249.0/whisper-linux-arm64"
      sha256 "01000e8d9961afd19146d13a48e596e30ecacbc6c65855322598a23c6d019103"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.249.0/whisper-linux-amd64"
      sha256 "6f17b6fbe44cfb4cd2c47da54a166a942b72a9cd97e737834b6bcf669a4be839"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
