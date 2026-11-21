class Dedalus < Formula
  desc "Official CLI for Dedalus"
  homepage "https://docs.dedaluslabs.ai"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dedalus-labs/dedalus-cli/releases/download/v0.9.0/dedalus-darwin-arm64.tar.gz"
      sha256 "374b60573ef87db3e2b5b7ecd6c538a915f1b72804475b362c993f86770ca550"
    end
    on_intel do
      url "https://github.com/dedalus-labs/dedalus-cli/releases/download/v0.9.0/dedalus-darwin-x64.tar.gz"
      sha256 "9c54054198796f3485035acb7783e42a2e89ada1f7e33ffc6925a9a0cc8711e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dedalus-labs/dedalus-cli/releases/download/v0.9.0/dedalus-linux-arm64.tar.gz"
      sha256 "e1fe64756cfc2ef121f0df84d83ff7f78926c8e9ed7b77da32a20238cc0282d7"
    end
    on_intel do
      url "https://github.com/dedalus-labs/dedalus-cli/releases/download/v0.9.0/dedalus-linux-x64.tar.gz"
      sha256 "ebaf43f8b35c58ae0e3357a8b00446fa3a2fae1310c719b3337657e9841d426e"
    end
  end

  def install
    bin.install "dedalus"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dedalus --version")
  end
end
