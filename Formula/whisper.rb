# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.269.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.269.0/whisper-darwin-arm64"
      sha256 "20910d04f762d0a2270f1c6f82e906b1ffed38012d6706687f92d5c9e2ab15d7"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.269.0/whisper-darwin-amd64"
      sha256 "b1191de552e662df66fb28f321f52c7fcb80feca93b852e32aa128626aa8fded"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.269.0/whisper-linux-arm64"
      sha256 "512d5f0e5daffd499ee41ceaaab678ac9d61f64b054bb130340332da1817b8d1"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.269.0/whisper-linux-amd64"
      sha256 "2daf007ed78bed38918896df1d4220be62bed37716abf5f97471310c595a7bdc"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
