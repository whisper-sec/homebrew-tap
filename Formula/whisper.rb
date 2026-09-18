# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.219.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.219.2/whisper-darwin-arm64"
      sha256 "6dedff5561b87614dff28f0374ccd29bf8acb12fce13df89caeea9bd1a2298a0"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.219.2/whisper-darwin-amd64"
      sha256 "450d25e0f65bea1c302cfd49ed3415c0335d0fdade36f14c9a130811316c1e84"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.219.2/whisper-linux-arm64"
      sha256 "a42397af6b5d959cb68d852eb00891f7ebbcac06d36663a4819c57f936a51e13"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.219.2/whisper-linux-amd64"
      sha256 "6ff073ea001bffbdd30ca492b9bc2e615e9c8f656cd61aea0f74b19f153eedbd"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
