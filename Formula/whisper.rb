# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.270.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.270.0/whisper-darwin-arm64"
      sha256 "981b35b46528b7a04b0d0830c10a6412afd79ac8cf2ce90138540514ff769eaf"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.270.0/whisper-darwin-amd64"
      sha256 "3d39138d1857bff7a478708a0a3c89d0813980c7fe695e4f2dfbd31b0e981178"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.270.0/whisper-linux-arm64"
      sha256 "bada3c305a2314b0f3668cc3684a08058cb6541205e5eeaddb337effb822bb71"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.270.0/whisper-linux-amd64"
      sha256 "fb42fb7d687ba799734758669dddb7ad97749d6cd76efe24c885ba9e8f185f79"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
