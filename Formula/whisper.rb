# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.257.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.257.0/whisper-darwin-arm64"
      sha256 "60e2d3b1d539e6b6cef55373448ca2353449d084f09246de4914986ad9d7fd8e"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.257.0/whisper-darwin-amd64"
      sha256 "ff8f076764723ab0ee963764540335c0ba886fa6538b924ee2b3183440578f18"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.257.0/whisper-linux-arm64"
      sha256 "01407f5e1a7ca33a3bd21500ddfe457bb68da30a63d4c7e6153542ac57d661d0"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.257.0/whisper-linux-amd64"
      sha256 "44b387bb50c04c8ec938d27dd2d8df566b713e57dfadbfe7d1ec5c69158d3041"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
