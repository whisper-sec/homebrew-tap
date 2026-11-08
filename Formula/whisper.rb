# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.259.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.259.0/whisper-darwin-arm64"
      sha256 "2aa899a1dc1d271a68f52155baf804a810161f1e04b59aab2140cbb050485949"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.259.0/whisper-darwin-amd64"
      sha256 "c618fa40e45ff544a694cad9941ae44d5edbea696561d09f05e05dc393655fa8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.259.0/whisper-linux-arm64"
      sha256 "79b5bd0e09c2f6f1160c01d51c6732eb8e56c7cacf9b5d003a81787a1a9cd7c3"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.259.0/whisper-linux-amd64"
      sha256 "d29e03b9cbf1f289e59e5b108364bbdfab697177a78922b582e2be71e5a65abf"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
