class Kraken < Formula
  desc "Command line interface for kraken"
  homepage "https://github.com/samsung-cnct/kraken"

  url "https://github.com/samsung-cnct/kraken/releases/download/1.2.1/kraken-rel_1.2.1_darwin_amd64.tar.gz"
  sha256 "18d46c785f406d6e7a9109f745547cacf1dca2fe43b0e994382e55abdc208668"

  depends_on "docker"

  def install
    bin.install "kraken"
  end

  test do
    # test that we can generate a config file.
    system bin/"kraken", "generate", (testpath/"config.yaml")
  end
end
