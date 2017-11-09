class Kraken < Formula
  desc "Command line interface for kraken"
  homepage "https://github.com/samsung-cnct/kraken"

  url "https://github.com/samsung-cnct/kraken/releases/download/1.2.3/kraken_1.2.3_darwin_amd64.tar.gz"
  sha256 "81595b9973f3087889e220d48105da3dec717fd30a54466ddd0be798ed85355e"

  depends_on "docker"

  def install
    bin.install "kraken"
  end

  test do
    # test that we can generate a config file.
    system bin/"kraken", "generate", (testpath/"config.yaml")
  end
end
