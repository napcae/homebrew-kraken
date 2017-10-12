class Kraken < Formula
  desc "Command line interface for kraken"
  homepage "https://github.com/samsung-cnct/kraken"
  url "https://github.com/samsung-cnct/kraken/releases/download/1.2.0/kraken_1.2.0_darwin_amd64.tar.gz"
  sha256 "c204ad337a2648e7075c80ae163b59f927d7558d7506e99ab8312bfcda9f3832"

  depends_on "docker"

  def install
    bin.install "kraken"
  end

  test do
    # test that we can generate a config file.
    system bin/"kraken", "generate", (testpath/"config.yaml")
  end
end
