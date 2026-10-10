# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.220.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.220.0/whisper-darwin-arm64"
      sha256 "f2ac801aa4fb2c4313f954a1c170341f29c52da49a8a4d010157bb0c121cb584"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.220.0/whisper-darwin-amd64"
      sha256 "47f57a85846a08dbe58199cd7c8da592e13755cc28a0bdee22c928c5f97dbeed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.220.0/whisper-linux-arm64"
      sha256 "d1510e6407572020c8a700e165eeb879a0f034eb8364b951a41dcc1de7b6e884"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.220.0/whisper-linux-amd64"
      sha256 "ed6cfd0643ab8b07f7b9c26f2d28fa1ecc2b9db277d06e49525606063fd54908"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
