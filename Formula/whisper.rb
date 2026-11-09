# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.261.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.261.3/whisper-darwin-arm64"
      sha256 "c44a9c8220a6f41a94f30499b7ce44e7a9166db4d5e664bff652ff1428cc458a"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.261.3/whisper-darwin-amd64"
      sha256 "fe70f16e77bc2e6aff3f819765baed75d838855cc0e09b556c6c8d232acaaa50"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.261.3/whisper-linux-arm64"
      sha256 "e3312eb996cb13ccb7ce55f1bc2e4999ee6d5a854cb5b89a9d5a6caffd1d7d9e"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.261.3/whisper-linux-amd64"
      sha256 "92917245db720b25ed07165ea2dfcbddf32e96290c884cc3e65e12ff7e719570"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
