# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.267.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.267.0/whisper-darwin-arm64"
      sha256 "461a177461ccd841ed181268bf1b07e574d7f7d0c43ce49ca4907fc38d4e4368"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.267.0/whisper-darwin-amd64"
      sha256 "0b8ea9e19975d756d2e9de9ebe7c8b0c8924298e6c68a5246802706bedd2f361"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.267.0/whisper-linux-arm64"
      sha256 "54916548591d370010f23bde7bc79ba508edc2ab6c5f30976f400a7ad92e6115"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.267.0/whisper-linux-amd64"
      sha256 "f27f1f9c50b1885d0e7b73fe07091c96cdf86643ce4b112cb120eb7431f9d1cc"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
