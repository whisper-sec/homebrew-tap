# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.132.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.132.0/whisper-darwin-arm64"
      sha256 "83c9daa2eef3c0319ee9fca7522eba0fa4a213590aaf86326b65840d91a9f636"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.132.0/whisper-darwin-amd64"
      sha256 "abf3b115bd3682828604dff22823335975d0bbacdf9a67268bed9f8a954c65e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.132.0/whisper-linux-arm64"
      sha256 "9788dad6d906871f163cb51fbfdd1f6fcd7907de50ba358d9fe4b09b7f6f617a"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.132.0/whisper-linux-amd64"
      sha256 "d9e356c42efc17e22b4cfdefbae428957ffd80df7f7b46deba4e0ec56d1d7b8b"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
