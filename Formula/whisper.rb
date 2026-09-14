# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.213.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.213.1/whisper-darwin-arm64"
      sha256 "68f40c9deb5ee0b1fb01706263e962b3e8c46a48249eb644e070d26143254df4"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.213.1/whisper-darwin-amd64"
      sha256 "f05025b77daaa78885850b0e50896d05cc18af6ac299c69e3280036201831095"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.213.1/whisper-linux-arm64"
      sha256 "f4be09d284b84df38e1a811e53971adb144389764b2644e3153f57ed5c226434"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.213.1/whisper-linux-amd64"
      sha256 "9dd050e631a298ec3645936800e55cf645f5cea8e5dfe8417dee288fce95b712"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
