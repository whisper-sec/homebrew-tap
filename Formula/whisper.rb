# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.260.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.260.0/whisper-darwin-arm64"
      sha256 "faaa722e34383c0bacd1bbfb768dea8ecbbf6661c4002f2f1f53ce840367f49a"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.260.0/whisper-darwin-amd64"
      sha256 "ac8fce83d5ef829d98b967e0ea34908a0b1c704369b6e768036293c69341fc06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.260.0/whisper-linux-arm64"
      sha256 "7cdde0beb9a0ae5c19dbee8673973e11a3ea6d3d110714b908933e8e2f19b67e"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.260.0/whisper-linux-amd64"
      sha256 "d52bb17726222eebf071a7f0a5cc4330a6db527d9731130134636534afb11328"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
