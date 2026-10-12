# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.222.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.222.0/whisper-darwin-arm64"
      sha256 "2f720c81936be73907a430fb69db724a18b49fe2ecf278af327fdf815a1b215e"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.222.0/whisper-darwin-amd64"
      sha256 "93dc4cbe456da168b76071ce6887bdf4f9de3426dd17a2b81d2eb0e7b5692373"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.222.0/whisper-linux-arm64"
      sha256 "c565d19c3367d765114850a64295ad895712af592451af0d2ee35187bd1b6ac2"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.222.0/whisper-linux-amd64"
      sha256 "04ef9d16a6d87c88e96378e477599fd5324ac96d8f9c141a625cb4ad200f8457"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
