# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.258.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.258.0/whisper-darwin-arm64"
      sha256 "bb444b987e3c20b30c0c4bd973b7092dc52dbebd1a5ab3102ba5737180220478"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.258.0/whisper-darwin-amd64"
      sha256 "e73d8118435d136eec33366de2198c4952254e28cdd9b4c9a3e02c086ce84f16"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.258.0/whisper-linux-arm64"
      sha256 "5a0a3047ce1b76290c6d772bbabb64a1f1514ef2ae645afa6301261756656c67"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.258.0/whisper-linux-amd64"
      sha256 "f0d4667b1780e936886868ed1f80e76e4a50d72fd544f6cb1476a36e7edd5138"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
