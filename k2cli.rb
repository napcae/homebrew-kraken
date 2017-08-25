class K2cli < Formula
  desc "CLI for K2"
  homepage "https://github.com/samsung-cnct/k2cli"
  url "https://github.com/samsung-cnct/k2cli/releases/download/1.0.9/k2cli_1.0.9_darwin_amd64.tar.gz"
  sha256 "8be7f7d7771115ed8c2c4a5c5ba50551f93734a4d5b199a71de0b24e7a4ee805"

  depends_on "docker"

  def install
    bin.install "k2cli"
  end

  test do
    # test that we can generate a config file.
    system bin/"k2cli", "generate", (testpath/"config.yaml")
  end
end
