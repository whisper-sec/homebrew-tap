# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.258.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.258.1/whisper-darwin-arm64"
      sha256 "25899bafa953c8f59cda068b0d3f68f605d10abfac657abb4f990a73d631e4c2"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.258.1/whisper-darwin-amd64"
      sha256 "b0be96e1cb06bfc1dea93c203f10447d98978e98865ae6cdc9b80bd53f58baa8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.258.1/whisper-linux-arm64"
      sha256 "65ddd00ab547d042886472166b52c122f127f6ec6da2997234e4bb2c27ab5f02"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.258.1/whisper-linux-amd64"
      sha256 "be71c75707ab0398692799fe4cbf74f84c71533c9af71cd6013303e8e3da7437"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
