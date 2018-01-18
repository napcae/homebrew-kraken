class Kraken < Formula
  desc "Command line interface for kraken"
  homepage "https://github.com/samsung-cnct/kraken"

  url "https://github.com/samsung-cnct/kraken/releases/download/1.2.5/kraken_1.2.5_darwin_amd64.tar.gz"
  sha256 "a648a10d8c430b883d188f0b666e887b161276fe2bde33da842efcd14f010a3a"

  depends_on "docker"

  def install
    bin.install "kraken"
  end

  test do
    # test that we can generate a config file.
    system bin/"kraken", "generate", (testpath/"config.yaml")
  end
end
