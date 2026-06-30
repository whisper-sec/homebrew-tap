# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.124.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.124.3/whisper-darwin-arm64"
      sha256 "671593b83ace73bf49d029b0ae1d765344e3bf52829e267f56e61a3746a24e9e"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.124.3/whisper-darwin-amd64"
      sha256 "c0dd27bf832f972f49b35a4cfa2717d309476552b25bfcd4b9e967719ffd5f92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.124.3/whisper-linux-arm64"
      sha256 "867ccaa81dbf61d8aab302487727fab3aded87a1caf16c19569b36a431601f31"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.124.3/whisper-linux-amd64"
      sha256 "8daa60555d81cbd804d32f9309c78f50db017a67b17de88178e2e53e0d51406a"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
