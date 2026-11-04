# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.246.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.246.0/whisper-darwin-arm64"
      sha256 "b23688fba55bd5bd4ac031a754751609813c16b9ae281af052fe8a863a4458da"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.246.0/whisper-darwin-amd64"
      sha256 "790d6c33c0f8327da308d6217bf59027ee0ebfdb66e8f6a73d6889abdc8edc03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.246.0/whisper-linux-arm64"
      sha256 "8cc168a0f680ee3feffcfc6ec197ba3dc6984345e57afeda2d8d41abccf11f41"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.246.0/whisper-linux-amd64"
      sha256 "a8470729b7a95e033a99aca7aca3b2171f9595fcac03b2fa862339f9c2b4e145"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
