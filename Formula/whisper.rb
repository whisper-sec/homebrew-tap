# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.267.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.267.3/whisper-darwin-arm64"
      sha256 "657f0e45fbc9279c056e9ac6e0a115e1bf4e92258b90d58de9413ac3fe2dbabe"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.267.3/whisper-darwin-amd64"
      sha256 "99e1fd4b2cca19c942f549486934d6d0a6f6e1abc5b51ffdb4fb4c00e2398422"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.267.3/whisper-linux-arm64"
      sha256 "63b8ecaa107e0ff98984baddb73091565008a6c9f67928c39434a5b54fac9ba1"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.267.3/whisper-linux-amd64"
      sha256 "e8077b5e813c9a3bf5b836f67c978401369b6a752fe59a3b254187c26ce92a90"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
