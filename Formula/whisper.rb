# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.267.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.267.4/whisper-darwin-arm64"
      sha256 "ad9f51707f4057da769bff0b1401dbfa9380b867d8e282bf817409adfb1faac5"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.267.4/whisper-darwin-amd64"
      sha256 "1a6bc9c562dbd2f2f44c36324306c3228111734440f7d4324133f8b6a9d7e43f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.267.4/whisper-linux-arm64"
      sha256 "abf105fd2578d58934fef1ca869da72bf87acace052a943e70a23427a4e400ad"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.267.4/whisper-linux-amd64"
      sha256 "af61f8ce980ade7926c3b58aba45dcf4160c97110abeabdafe16d05120cfa929"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
