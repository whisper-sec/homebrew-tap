# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.245.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.245.0/whisper-darwin-arm64"
      sha256 "f87da56690160f8ee085cb8012fd9525ed89848ef04484a818167e67dce017ad"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.245.0/whisper-darwin-amd64"
      sha256 "8e9d9dc2b595a3b0cfa26a4f4fc67bebb07cee585beef17e9ec2826032a58dcf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.245.0/whisper-linux-arm64"
      sha256 "1631328789f9080d20927c05bcfd3b6c481afa8645940e27028b7d97cd71178d"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.245.0/whisper-linux-amd64"
      sha256 "c832ab17a717b443e044e2a257729897cb46e2c08ff383387975b6971c22b396"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
