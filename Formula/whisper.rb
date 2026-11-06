# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.251.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.251.0/whisper-darwin-arm64"
      sha256 "37a7c0a517ef9b995954f03860806938cd454dc67fa6e8156afea2c7c6d3167c"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.251.0/whisper-darwin-amd64"
      sha256 "9ec513e2f0e2735139a8998f731ca8e81044caa331fa63ea8224afcc8613e271"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.251.0/whisper-linux-arm64"
      sha256 "2ad925896cfa5dd859664981462b37d98bca3fa6b4800f31bc116ed6a41ae70c"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.251.0/whisper-linux-amd64"
      sha256 "62daac543a422ceff36cea20154efa9c208ebcc33fea3cc5c0fc3c306d8fab4f"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
