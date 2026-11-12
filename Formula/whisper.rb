# SPDX-License-Identifier: MIT
# Copyright (c) 2026 viaGraph B.V. (Whisper Security)
class Whisper < Formula
  desc "Give any agent a routable Whisper IPv6 identity and safe egress"
  homepage "https://whisper.online"
  version "0.266.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.266.0/whisper-darwin-arm64"
      sha256 "da72bbbdd21717aaafe32aa68ec529400fe8cda4266fbee16c7f9ea0517961e2"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.266.0/whisper-darwin-amd64"
      sha256 "cc70884bc7feca6e3fca88b7342b96536ca3085ff66111ee7bebc8be0cbfe45d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.266.0/whisper-linux-arm64"
      sha256 "c150a0e4ee96829790472fceb5ab244d1e8ec7a04c7937ee79230f51b9770b82"
    end
    on_intel do
      url "https://github.com/whisper-sec/whisper-cli/releases/download/v0.266.0/whisper-linux-amd64"
      sha256 "2ec033d158853af09ed79ed34d07b791e38b5dc3cfa63b96f4639df345fca86f"
    end
  end

  def install
    bin.install Dir["whisper-*"].first => "whisper"
  end

  test do
    assert_match "whisper version", shell_output("#{bin}/whisper --version")
  end
end
