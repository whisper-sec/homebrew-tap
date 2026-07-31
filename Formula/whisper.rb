# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.201.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.201.0/whisper-darwin-arm64"
      sha256 "353559b80448cccbff059eef545b782e417629c886d352efbeade6b38241f902"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.201.0/whisper-darwin-amd64"
      sha256 "97cc4b2e7cbf1c1438bb7fe98300d752b21e7efb189d957bc580356d65b615a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.201.0/whisper-linux-arm64"
      sha256 "fcc9bdc90fc3c8c8cfaa6330b89b517afb96988d0e684378df8436113dc7b7b4"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.201.0/whisper-linux-amd64"
      sha256 "9f7c32f21ecc4bbec7e9d56244b8d8db06b697d5f7e5a8031d611999ef61edba"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
