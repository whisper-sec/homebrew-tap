# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.260.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.260.2/whisper-darwin-arm64"
      sha256 "52cb00737b9ae8945d7cd33f0ecfe32e44b621ac11efbe8d2ed4f22396ca4092"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.260.2/whisper-darwin-amd64"
      sha256 "05f11d24cfd438d0f066d8689ed317dbeed0903197363ffb66bc95cbd4e0da60"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.260.2/whisper-linux-arm64"
      sha256 "4d54fc8944afee0dac999a985a1f0dc629988eabcc0c4cff141cf92181e94c41"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.260.2/whisper-linux-amd64"
      sha256 "a75321840f90bb62555912e94dff17ffe7901f006d8fc23d53f4df6e345bdef1"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
