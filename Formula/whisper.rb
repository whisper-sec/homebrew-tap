# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.239.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.239.2/whisper-darwin-arm64"
      sha256 "4978ad63e9cc5695cc3a12d108fb5e55355a00d7989678549f5e7ae183a511a4"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.239.2/whisper-darwin-amd64"
      sha256 "0a0db5cf749b3eed363e3a5d329ab148fe5981d95b3c5433e41129464b234965"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.239.2/whisper-linux-arm64"
      sha256 "c3764d4bfcd3413aad5b4edd1deacf056c73579fa5bdfeafac69c97cb7377254"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.239.2/whisper-linux-amd64"
      sha256 "8be46978c29bc294970471d82b5a30a41d8a3982f53b672ee5a1900bfdc4e43d"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
