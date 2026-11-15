# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.268.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.268.1/whisper-darwin-arm64"
      sha256 "fa73e51216b64395cf297316e631d065673dd753b676d4a827db78370b5a87e7"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.268.1/whisper-darwin-amd64"
      sha256 "83174ba72a5f95054f0e8de0acfc9a87ced8325fa86d34d0e4f5295d5e497835"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.268.1/whisper-linux-arm64"
      sha256 "1e574420632bf26375406f06f06834a2580baab0effb2bf1e9d7858d316e4215"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.268.1/whisper-linux-amd64"
      sha256 "e95277ede2152e1e556d8dbd0220d949f2a92761f4b992a026999b977e1ec467"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
