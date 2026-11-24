class Dedalus < Formula
  desc "Official CLI for Dedalus"
  homepage "https://docs.dedaluslabs.ai"
  version "0.9.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dedalus-labs/dedalus-cli/releases/download/v0.9.2/dedalus-darwin-arm64.tar.gz"
      sha256 "22045ce5812513448866387b954766dc097e93e30ebb884f04364a5b1047d7a9"
    end
    on_intel do
      url "https://github.com/dedalus-labs/dedalus-cli/releases/download/v0.9.2/dedalus-darwin-x64.tar.gz"
      sha256 "5cc82813471a2e4b0ef9d39e2b12f25e408dce9a8ede21a6ca81cab80367405a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dedalus-labs/dedalus-cli/releases/download/v0.9.2/dedalus-linux-arm64.tar.gz"
      sha256 "ffb7351b77677734e848478eef7941fb0f0f2c69f2915e30fd542c808a077b0a"
    end
    on_intel do
      url "https://github.com/dedalus-labs/dedalus-cli/releases/download/v0.9.2/dedalus-linux-x64.tar.gz"
      sha256 "03d4d45f8c149078d4192671b77ff63c27a0d6c1351ff239449709e558cff02d"
    end
  end

  def install
    bin.install "dedalus"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dedalus --version")
  end
end
