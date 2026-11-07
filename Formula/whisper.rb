# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.255.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.255.0/whisper-darwin-arm64"
      sha256 "13f1f9557eccc538e99780c37660eed8f87f95caafd9821b030a98f0166abb63"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.255.0/whisper-darwin-amd64"
      sha256 "bf88b40991896532e49fa9c0a631bf216295ffd00717189aa326e2b279e42930"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.255.0/whisper-linux-arm64"
      sha256 "3a745230c657de6f80bc3d92d51d7b5fab815396a71f21ec4d762396d03c2340"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.255.0/whisper-linux-amd64"
      sha256 "1f5dc5097b01697a6ef3ee797305363e3881222313f0afb975bb3c14a1770fdf"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
