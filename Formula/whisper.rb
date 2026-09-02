# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.211.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.211.0/whisper-darwin-arm64"
      sha256 "e4db18efa2781696f5efc63059b220e01e06d93c6b10e83b25d890078404eb8c"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.211.0/whisper-darwin-amd64"
      sha256 "ab3420ae7dced181325134537e1131d3fd5ed22a44b91c8c0ddc75783c2e20b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.211.0/whisper-linux-arm64"
      sha256 "8685ede4f99eb1507e7cfe034e2eb5158d9634ae578c1e4a9e5e9b8d177410a1"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.211.0/whisper-linux-amd64"
      sha256 "60a7bc9f8bd34394d515ceb03c320c6a99bd23204d274d37a9b3cef560936afc"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
