# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.265.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.265.1/whisper-darwin-arm64"
      sha256 "34874d98aa25d4cedff08cdc03771532b23d1dc0eee2402bd6c800e496ac2642"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.265.1/whisper-darwin-amd64"
      sha256 "02a85ca369f14a046c36efa47301561aad19085ed4f6bb790c7fc27c63b47e4c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.265.1/whisper-linux-arm64"
      sha256 "4d956c7db571ad159bdb8c7819f97ff8cb8e2781a2bb1bc3c144af8392c4411e"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.265.1/whisper-linux-amd64"
      sha256 "7f8c90063c49f1492d24101642608f6da00ee77d638713bb797b4710fe9a52d9"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
