class Dedalus < Formula
  desc "Official CLI for Dedalus"
  homepage "https://docs.dedaluslabs.ai"
  version "0.9.3"
  license "Apache-2.0"
  url "https://github.com/dedalus-labs/dedalus-cli/releases/download/v0.9.3/dedalus-cli-0.9.3.tgz"
  sha256 "d3f8a8ace2b1e1ff64a8866a053ded1935aa4e402ceb73328fd4da5b03edb840"
  depends_on "node"
  depends_on "pnpm" => :build

  def install
    libexec.mkpath
    system "pnpm", "add", "--dir", libexec, "--prod", "--ignore-scripts", cached_download.to_s
    (bin/"dedalus").write_env_script libexec/"node_modules/.bin/dedalus", PATH: "#{Formula["node"].opt_bin}:$PATH"
    man1.install Dir[libexec/"node_modules/dedalus-cli/man/*.1"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dedalus --version")
  end
end
