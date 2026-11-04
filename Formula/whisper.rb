# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.247.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.247.0/whisper-darwin-arm64"
      sha256 "b1b092ea3271a57b7895be5e0c42a2f00d2ca588ae5ea614ad188da8ef60b17f"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.247.0/whisper-darwin-amd64"
      sha256 "71a5dd3cf8aea61c8d211d40c7ef44710ec8dc8121ea510312e727525c6fb787"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.247.0/whisper-linux-arm64"
      sha256 "d8e4964473d88f5ed5b4976e03ff962d5a7163c833ba04f75cd6f31a783946fb"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.247.0/whisper-linux-amd64"
      sha256 "284a9a997b4261835348f4ad7293bd582e9faad2da6da345ed48ca6f5a0f598e"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
