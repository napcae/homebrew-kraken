class Kraken < Formula
  desc "Command line interface for kraken"
  homepage "https://github.com/samsung-cnct/kraken"
  url "https://github.com/samsung-cnct/kraken/releases/download/1.1.2/kraken-rel_1.2.0_darwin_amd64.tar.gz"
  sha256 "b77d4148b0b3bbdc3a34b4758dc37fbd5fb67cb8cbade608f719ea80ee0cb35b"

  depends_on "docker"

  def install
    bin.install "kraken"
  end

  test do
    # test that we can generate a config file.
    system bin/"kraken", "generate", (testpath/"config.yaml")
  end
end
