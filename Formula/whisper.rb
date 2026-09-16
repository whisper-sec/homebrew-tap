# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.218.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.218.2/whisper-darwin-arm64"
      sha256 "2a5bf0b14a5f629d30e8c7e8613d11277e1ec88bb9877c945ea652569fb150d2"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.218.2/whisper-darwin-amd64"
      sha256 "c843493cc23d2441fb341234142e9acbbadc491246d7e84f0121a6947c39f519"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.218.2/whisper-linux-arm64"
      sha256 "d8e3cb1e88020e9b32f185c16e6afbe3b52c1dcb968eb190ab301a797bd944d9"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.218.2/whisper-linux-amd64"
      sha256 "2a7f7af15ab7aae0fdd4ffccf27cd7cc84d685412cadb8e9c38e677caa6a2eaa"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
