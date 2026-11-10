# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.264.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.264.0/whisper-darwin-arm64"
      sha256 "d603cb294f621f8b4ef1757e056e644306c617802f9c2845c5743c3c6409e303"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.264.0/whisper-darwin-amd64"
      sha256 "b9d625ab9524cafd9ff06c2f538dcbc543e46e45df84331ef0788da3289e7ee2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.264.0/whisper-linux-arm64"
      sha256 "0d47346d1a1534b210316713e6ce82ca43ff0a98b76e3001715e50e0ccbff7b9"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.264.0/whisper-linux-amd64"
      sha256 "03eae653190459535513c6228476692b187f77aeaade4a11b3970a2aef553d33"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
