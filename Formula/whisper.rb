# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.130.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.130.0/whisper-darwin-arm64"
      sha256 "f70187a7db74c4e3c4bd55404bf9c801724b883548091518fe4bbabf11896ed3"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.130.0/whisper-darwin-amd64"
      sha256 "ed743d1d3be944efe62dd69d07c3ed61ac61815ba1838ae6c36b854657b121a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.130.0/whisper-linux-arm64"
      sha256 "a6c5d48953f4c98ec945d90df7e6c1c9cbc632f5ed0856b1cc49a177f9253a74"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.130.0/whisper-linux-amd64"
      sha256 "73c1efc7962400c8f46baa25ab3a75bbbf6f84e7567998ad75d1646a2bcbde5c"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
