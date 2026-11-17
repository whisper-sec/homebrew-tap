# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.271.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.271.0/whisper-darwin-arm64"
      sha256 "11f3d8acfa9b2c37aeaa58d22118176663e5abccdac5bc516a48abed24ddffa6"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.271.0/whisper-darwin-amd64"
      sha256 "dcc81846f137a81980be23cff07f8376ad343f94065d180675a5a5c219373a0c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.271.0/whisper-linux-arm64"
      sha256 "fcd20e7e0571fe1570e3fbe76330f3f48c6f9bbc4cfcee7bc1b24e39612e6e6e"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.271.0/whisper-linux-amd64"
      sha256 "990c06593ff7f895b0a6779ec9a680e3d7347c930f6257130ee6e5f539c16047"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
