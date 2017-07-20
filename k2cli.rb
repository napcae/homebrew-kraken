class K2cli < Formula
  desc "CLI for K2"
  homepage "https://github.com/samsung-cnct/k2cli"
  url "https://github.com/samsung-cnct/k2cli/releases/download/1.0.6/k2cli_1.0.6_darwin_amd64.tar.gz"
  sha256 "f1a98fa2e77169fb9cd983c8f882ffc7429afafb84122a5b592eb29054ac0f9a"

  depends_on "docker"

  def install
    bin.install "k2cli"
  end

  test do
    # test that we can generate a config file.
    system bin/"k2cli", "generate", (testpath/"config.yaml")
  end
end
