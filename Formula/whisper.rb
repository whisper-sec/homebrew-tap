# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.262.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.262.0/whisper-darwin-arm64"
      sha256 "cabb27fb2d12e4c2686f293f9b061e534f4748b81607b61154662e03dba5f5b4"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.262.0/whisper-darwin-amd64"
      sha256 "fe0a8d2056ed7f739cf9e7e87b32e9b13ffff8f39a9647fce3dcae0951739710"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.262.0/whisper-linux-arm64"
      sha256 "ffbf86ee777ab571e2910391dea7f67cb16aa8652199e9a81e0d89e0cc29c114"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.262.0/whisper-linux-amd64"
      sha256 "c5120a99c9d2a1ed33ed52f45bedcbd813875eb904687b36eb83a7f438e55574"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
