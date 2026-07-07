# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.129.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.129.0/whisper-darwin-arm64"
      sha256 "f4d8997dec7f4af86dadcfb53a0ffa548cba53d4de4941f6127b4327bda1d751"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.129.0/whisper-darwin-amd64"
      sha256 "f2113837032e72962334dd5f467befba3efd57907c8b5de4abed68620d6e9822"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.129.0/whisper-linux-arm64"
      sha256 "e598195bd1d15716acd6d59acd25debe2ce7208ff35861877bb36504c57afd41"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.129.0/whisper-linux-amd64"
      sha256 "2737c18e1453440de01bdebe8c87a54a69eb91e63e0817e89f2e5aebcbc3d414"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
