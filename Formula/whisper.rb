# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.119.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.119.0/whisper-darwin-arm64"
      sha256 "80dc1bf77257a7224f7861b369c84cb5c2debdbfd3e62a36a8fd9a0a98ab08f9"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.119.0/whisper-darwin-amd64"
      sha256 "64384988c81546b7cc86fb8d169d1fab5cf74b7752f23a97f59bcb08953bf8ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.119.0/whisper-linux-arm64"
      sha256 "061599351e6f62635ab8fa21fa6b166b31f6964b85eb39742a5b257c6531edb0"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.119.0/whisper-linux-amd64"
      sha256 "f4580a48f4afdc01852fa2ec05d621acae0ade230a9cae784a04dbcabd826792"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
