class Dedalus < Formula
  desc "Official CLI for Dedalus"
  homepage "https://docs.dedaluslabs.ai"
  version "0.9.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dedalus-labs/dedalus-cli/releases/download/v0.9.1/dedalus-darwin-arm64.tar.gz"
      sha256 "9c0a74d7a1d4d51930407318bf1e426e125e6128deda8ffcc5320f863f1066f7"
    end
    on_intel do
      url "https://github.com/dedalus-labs/dedalus-cli/releases/download/v0.9.1/dedalus-darwin-x64.tar.gz"
      sha256 "eb97757c1ecc27f078ca9ab0be977922b9de6cab059fd98caf6f3dfbda4412e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dedalus-labs/dedalus-cli/releases/download/v0.9.1/dedalus-linux-arm64.tar.gz"
      sha256 "495922eac20ce842818475fc91298afad6f00a0d3f8aeb842714e0fdb851558f"
    end
    on_intel do
      url "https://github.com/dedalus-labs/dedalus-cli/releases/download/v0.9.1/dedalus-linux-x64.tar.gz"
      sha256 "b42568d501133f27b95ea7a546028e3ce5a145f93df7606fcf255ff6afa278cf"
    end
  end

  def install
    bin.install "dedalus"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dedalus --version")
  end
end
