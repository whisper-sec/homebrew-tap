# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.273.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.273.0/whisper-darwin-arm64"
      sha256 "4d60b38c13e076080c6a18a725964b46a687505aadae427a3842795922f37678"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.273.0/whisper-darwin-amd64"
      sha256 "a4538c1c30f8e98f26f81fe1a924898bbb11aa55ce5ace3163167fc5e984d2ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.273.0/whisper-linux-arm64"
      sha256 "4864078bcfde862654109d9da129dd790961a15c8e0086ce379889241c4786a1"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.273.0/whisper-linux-amd64"
      sha256 "dbbe6e7df6ff7be55616e155ca55493e9c3e9455d74e5d23cd117fcc1a7e151c"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
