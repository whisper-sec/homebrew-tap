# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.262.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.262.1/whisper-darwin-arm64"
      sha256 "3c7b5a5764d981198f3c291783bc14c9fb8e543274fdd6083311812730713a70"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.262.1/whisper-darwin-amd64"
      sha256 "1ea6d5748f64383290a36a3065d34a3da18078fe4e36012e82cd4aad83311054"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.262.1/whisper-linux-arm64"
      sha256 "a7c42c5bba760fd0cc5a29e35682d5605f378bd7f77e306a2de077a9267f81d6"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.262.1/whisper-linux-amd64"
      sha256 "086516136d23e2802a992b544f69ac78f21d52a885f159ece6cddf40306714fe"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
