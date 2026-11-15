# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.268.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.268.2/whisper-darwin-arm64"
      sha256 "b5c938da6aebaa99db216754e300f628ae3bfe3e127556c24dfe3862be1d665a"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.268.2/whisper-darwin-amd64"
      sha256 "8662421ba339154ef6183d9223cd43818d788233423c51b661377655897f0a8f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.268.2/whisper-linux-arm64"
      sha256 "6c9b09490afb6d60960f9b44bbc2e2d301d0c8a103138044ca67b274b856a562"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.268.2/whisper-linux-amd64"
      sha256 "bd390363420156c2c22a9f1ac1f6131bd8b18015a9a4ab5ccd9d2ac0b8bfaec0"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
