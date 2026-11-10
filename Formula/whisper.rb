# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.264.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.264.2/whisper-darwin-arm64"
      sha256 "6fd58a3727c9dd53dca712e094aaa629fd512ea17237578a39ef17999e5fa510"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.264.2/whisper-darwin-amd64"
      sha256 "921a21fe2f25d871f680ab9363aefce0b1b83f248edd300c5b5422af791c1599"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.264.2/whisper-linux-arm64"
      sha256 "6fbc7951ab8029a5c8e9f378aadde4340200ab41a572dcbd7a970f9f15822ea2"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.264.2/whisper-linux-amd64"
      sha256 "d97f7087c30343922dec59faea8335492f4b3f3bacf13ad19c533efc47cd58dc"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
