class Kraken < Formula
  desc "Command line interface for kraken"
  homepage "https://github.com/samsung-cnct/kraken"
  url "https://github.com/samsung-cnct/kraken/releases/download/1.1.2/kraken-rel_1.1.2_darwin_amd64.tar.gz"
  sha256 "5f9f83ac3dfcf37677bc1d575126a6f4aeca0ea7b6855b16823e3c0a62b319f4"

  depends_on "docker"

  def install
    bin.install "kraken"
  end

  test do
    # test that we can generate a config file.
    system bin/"kraken", "generate", (testpath/"config.yaml")
  end
end
