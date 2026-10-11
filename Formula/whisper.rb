# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.221.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.221.0/whisper-darwin-arm64"
      sha256 "d52bb0d1be5219f6457e12de4fac20c8f8d6e9d900c8a8060018d39d51fa3ee9"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.221.0/whisper-darwin-amd64"
      sha256 "ba1e3dfaa3e129eef56352ceaee22363793d9d7ba38d6a4a16bcdb3ae61078b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.221.0/whisper-linux-arm64"
      sha256 "73ae838b857f5c774c52e19a916b0a54cbc11f77e263afa9dac5046c1a254022"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.221.0/whisper-linux-amd64"
      sha256 "fdac6839f66513f0717ab72f1e155485d566efd2469adeb10b002c36b8cb25bc"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
