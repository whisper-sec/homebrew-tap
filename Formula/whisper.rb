# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.217.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.217.2/whisper-darwin-arm64"
      sha256 "cfe6bc4da27c2796811e02ef33d57163c0a83ca61848cd89abd1d1014909bffe"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.217.2/whisper-darwin-amd64"
      sha256 "70165cd13586dde716ef5e6860e5e285e2947f9cbdbdfc45f5575981faef7063"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.217.2/whisper-linux-arm64"
      sha256 "2dfb953d6a05ebe0d5594eca4f134041fdbe3b0639f018b41a5c153b37081832"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.217.2/whisper-linux-amd64"
      sha256 "76bb7a322023f30170e3152cdfab8ed039acc08fa6298e02c4bc9fcfbe0968de"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
