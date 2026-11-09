# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.260.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.260.1/whisper-darwin-arm64"
      sha256 "f68c41a74a9b73d81667155a438347fb0531b57dd0626429af2c9394d8ce2eb2"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.260.1/whisper-darwin-amd64"
      sha256 "7da69799c1134b33884b5987815d5e2ba54099f1204fd362c8f0e69b21937052"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.260.1/whisper-linux-arm64"
      sha256 "95f95dffce97150e726ef32b342cb78ac1af436fc9e93f1874bec5aa8dbd7b88"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.260.1/whisper-linux-amd64"
      sha256 "5596be4d3c6c0226b082eb3371622df47b58ea6fca99df83335d1fe3e7019fed"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
