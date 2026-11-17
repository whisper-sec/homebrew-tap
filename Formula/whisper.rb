# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.269.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.269.2/whisper-darwin-arm64"
      sha256 "f424e29903fdf94d007e8b105451ee70f7707d9a19c145d3a1bc3e76e9b8b73c"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.269.2/whisper-darwin-amd64"
      sha256 "04dd74d7f7399c8a11e83efb8c02de886678565cc1f8468e5a0ccdce00ffceb6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.269.2/whisper-linux-arm64"
      sha256 "2be2a54a8a8a65b2379cd0ec9dda67703b5f88eefe87ffdcfdf125e92eee915b"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.269.2/whisper-linux-amd64"
      sha256 "0c0485d490b3f2e5212f3e2401deaf566bb09dc4d3e6b6ec11613df8fe6ac6c1"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
