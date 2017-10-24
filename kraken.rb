class Kraken < Formula
  desc "Command line interface for kraken"
  homepage "https://github.com/samsung-cnct/kraken"

  url "https://github.com/samsung-cnct/kraken/releases/download/1.2.2/kraken_1.2.2_darwin_amd64.tar.gz"
  sha256 "7c5d6aec244384fbb9d43ee212ae950fca9ed6e20254159eed8a485cc0e7fe5c"

  depends_on "docker"

  def install
    bin.install "kraken"
  end

  test do
    # test that we can generate a config file.
    system bin/"kraken", "generate", (testpath/"config.yaml")
  end
end
