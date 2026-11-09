# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.262.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.262.2/whisper-darwin-arm64"
      sha256 "23e07f6730709bf4172fa1c016400e3eb14b21b0d7b6aa5e1ac3fea01a0b202a"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.262.2/whisper-darwin-amd64"
      sha256 "67f05ec570904e60e86af61558023ffa69b1e60ef637f5fda4af6804a9a6b242"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.262.2/whisper-linux-arm64"
      sha256 "8c5924f4d03de96d78c1f51f3abb78b237d6b0a318bd4f5a6ce395fe10f082c2"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.262.2/whisper-linux-amd64"
      sha256 "b14d2c89f5636af4f0c9ca7db5d56a9bd03d888273281bcc8381e168a9d0d469"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
