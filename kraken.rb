class Kraken < Formula
  desc "Command line interface for kraken"
  homepage "https://github.com/samsung-cnct/kraken"
  url "https://github.com/samsung-cnct/kraken/releases/download/1.1.1/kraken-rel_1.1.1_darwin_amd64.tar.gz"
  sha256 "3199ea22851c5cf47056d7c41e0dd009022816cb7d40273cd1eae05e95250052"

  depends_on "docker"

  def install
    bin.install "kraken"
  end

  test do
    # test that we can generate a config file.
    system bin/"kraken", "generate", (testpath/"config.yaml")
  end
end
