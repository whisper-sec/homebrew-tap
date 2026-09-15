# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.215.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.215.0/whisper-darwin-arm64"
      sha256 "899357ad92568dff7eca9a3d97a0a5850265da918f719d428a74ee346e937827"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.215.0/whisper-darwin-amd64"
      sha256 "5269f00fbc48dddb3b92c184aa6c960607ee2da011e5953eb8ce21e32a26663b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.215.0/whisper-linux-arm64"
      sha256 "f8b9bc9b3e8f44dd2d306b54f5c77c7d13c75ba27c5330839252a4cebd3e7e38"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.215.0/whisper-linux-amd64"
      sha256 "4fe085ac0e09169e945e6c2f81b1bb506089e6e74155a16d4e7bbfe9ea438f7b"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
