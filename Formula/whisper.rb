# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.261.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.261.1/whisper-darwin-arm64"
      sha256 "7b18d542a824bdd735cc101bbf2ee0f2fb1aa88a898b49b2cb7b3ebcbf7cae8b"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.261.1/whisper-darwin-amd64"
      sha256 "bd5f9c9e3d741040a187b191af06b1dead30e466ee11d9aea89c0b5bf3cf802e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.261.1/whisper-linux-arm64"
      sha256 "912d3961fadec9095368220be27b82348d0c33a8bffba9034415a7972a4a3277"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.261.1/whisper-linux-amd64"
      sha256 "eb77189af323180a6b655d486dc3ae1df607edfe9ed5670a7141311495bc923f"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
