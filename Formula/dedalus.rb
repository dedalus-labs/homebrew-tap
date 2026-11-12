class Dedalus < Formula
  desc "Official CLI for Dedalus"
  homepage "https://docs.dedaluslabs.ai"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dedalus-labs/dedalus-cli/releases/download/v0.8.0/dedalus-darwin-arm64.tar.gz"
      sha256 "8512e8764b34f71ce2f1728f7803b647d3b3725ea9997de1a89903a7ebbc15af"
    end
    on_intel do
      url "https://github.com/dedalus-labs/dedalus-cli/releases/download/v0.8.0/dedalus-darwin-x64.tar.gz"
      sha256 "5b8df2eadb5a4a1b10e6a26692f917688f4220e5f4e836867ba705e53456f39a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dedalus-labs/dedalus-cli/releases/download/v0.8.0/dedalus-linux-arm64.tar.gz"
      sha256 "55ae313b2b0e6ef13408454f72d3920eeb8c113e794ee0b82b4465def07c89f4"
    end
    on_intel do
      url "https://github.com/dedalus-labs/dedalus-cli/releases/download/v0.8.0/dedalus-linux-x64.tar.gz"
      sha256 "59b5ae3dd1f46e90e166ce97c52b95bc9f087ca9f602842caa0f567456d59e56"
    end
  end

  def install
    bin.install "dedalus"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dedalus --version")
  end
end
