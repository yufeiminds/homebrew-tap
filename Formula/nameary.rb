class Nameary < Formula
  desc "Find a name before you commit"
  homepage "https://github.com/yufeiminds/nameary"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/yufeiminds/nameary/releases/download/v0.1.1/nameary_0.1.1_darwin_arm64.tar.gz"
      sha256 "76d2ad4adf24c8bfc891e05010d2e949fd05a38683a2320652397f4955e46e2d"
    end

    on_intel do
      url "https://github.com/yufeiminds/nameary/releases/download/v0.1.1/nameary_0.1.1_darwin_amd64.tar.gz"
      sha256 "5885b36c5a7650e71a8004a689ca2f5b1a0242740ccf9afa90cc117512bf7d04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yufeiminds/nameary/releases/download/v0.1.1/nameary_0.1.1_linux_arm64.tar.gz"
      sha256 "17ab0a4d2051161e059d47b983a575a55f825d87f5971ecdcd658d236482eb5f"
    end

    on_intel do
      url "https://github.com/yufeiminds/nameary/releases/download/v0.1.1/nameary_0.1.1_linux_amd64.tar.gz"
      sha256 "c3bb4c5272feb611d34813bbc4cf32c36cc2ec85e3d2b47324ff24deed12ef7c"
    end
  end

  def install
    bin.install "nameary"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nameary version")
  end
end
