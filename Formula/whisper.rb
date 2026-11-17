# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.272.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.272.0/whisper-darwin-arm64"
      sha256 "da318f9a723cf5fccc67e94f50caddf920f6e0463b2cbdc0969da522e315a617"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.272.0/whisper-darwin-amd64"
      sha256 "fbfe4a4ec1b4d7eb98a79fe1d00459e152dde4b015c0e2cf9c2319844a438a1c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.272.0/whisper-linux-arm64"
      sha256 "cc8771c36dba5d55f48cbfc0d04ea79108d9e6b124a8275544de7c5eba7a4567"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.272.0/whisper-linux-amd64"
      sha256 "54f95d5b21a315855ceafddcfafb6077035597b06d21f57586ea292573cd88eb"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
