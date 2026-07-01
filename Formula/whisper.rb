# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.127.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.127.0/whisper-darwin-arm64"
      sha256 "ac60c94af42714f2827dd6a78e086928ba7f087538873fed774ab5a24cbefaad"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.127.0/whisper-darwin-amd64"
      sha256 "6a9d8b9fdd600a49f8c1ccf97203c44b8f5084aad6f1c3d0f375f9c495cc569c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.127.0/whisper-linux-arm64"
      sha256 "c1902b76eb1c4181d99e4f96c10605a297b793887d8f5a0e8c8ba406a073f6b6"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.127.0/whisper-linux-amd64"
      sha256 "ee0497d99f319e11867d17be3272cc4920fc8e0965a358efa97abec5d15bbd7b"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
