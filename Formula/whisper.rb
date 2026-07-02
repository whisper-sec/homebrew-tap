# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.127.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.127.1/whisper-darwin-arm64"
      sha256 "f0345121ce56b15fdd66a3ca7807ca7a81b90e1dd2a8ee9f3d2ed8fd1bd0fb15"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.127.1/whisper-darwin-amd64"
      sha256 "acb45ac6b8f45d92537e57f548789e65e2dd068c9fd0a45a51083d9b001de07b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.127.1/whisper-linux-arm64"
      sha256 "bc8f17f0d489a7eef2c7a61a39a818ebcc71efdf87efc7168e4ec5404b91209c"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.127.1/whisper-linux-amd64"
      sha256 "8074c5c48c0e49bcc3dffacbcd608df77c2992a837a95ea00182f4ccd8443790"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
