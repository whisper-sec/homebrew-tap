# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.261.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.261.0/whisper-darwin-arm64"
      sha256 "6c9321fbcd7b5c1a4fbf50d4ba128a52fe78804497904c9974bebba783ce5550"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.261.0/whisper-darwin-amd64"
      sha256 "c4c9c8f0ae4ff1a4b6af8ea08dc575f02084c03900bb3b43e56cb7940fba54b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.261.0/whisper-linux-arm64"
      sha256 "0a4959e66ec19f2d9e02470ef107db7feef534ed284934bccc157cc414046c8a"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.261.0/whisper-linux-amd64"
      sha256 "139ac51ad4ecf4abd7aa212f8a7c787ab53f0e2308dbeedfc6f06225b549dc10"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
