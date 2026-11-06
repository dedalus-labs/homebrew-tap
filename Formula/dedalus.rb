class Dedalus < Formula
  desc "Official CLI for Dedalus"
  homepage "https://docs.dedaluslabs.ai"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dedalus-labs/dedalus-cli/releases/download/v0.7.0/dedalus-darwin-arm64.tar.gz"
      sha256 "678aa65e6bfc9db30216e59b8d11d7d78b9dfd87b50530c8ab56ca8efcb50f48"
    end
    on_intel do
      url "https://github.com/dedalus-labs/dedalus-cli/releases/download/v0.7.0/dedalus-darwin-x64.tar.gz"
      sha256 "9f9de986c562d2cc4f8c9d4e48ed8b3a91a728d1e6ecc87400e7c581f09eb48d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dedalus-labs/dedalus-cli/releases/download/v0.7.0/dedalus-linux-arm64.tar.gz"
      sha256 "c9c9f7debd3d65b204601b1bbe8a1083a0d588be98297872bf48fdec839bdef7"
    end
    on_intel do
      url "https://github.com/dedalus-labs/dedalus-cli/releases/download/v0.7.0/dedalus-linux-x64.tar.gz"
      sha256 "48db16e57e47d697cde07bb42150b5137389f7c16c164d5d63fdd059876790a8"
    end
  end

  def install
    bin.install "dedalus"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dedalus --version")
  end
end
