class Kraken < Formula
  desc "Command line interface for kraken"
  homepage "https://github.com/samsung-cnct/kraken"
  url "https://github.com/samsung-cnct/kraken/releases/download/1.1.0/kraken-rel_1.1.0_darwin_amd64.tar.gz"
  sha256 "f64964c6326bc9bdcde4b1c17e37ad48ae4a606adc582c41b9d6fb0cba427573"

  depends_on "docker"

  def install
    bin.install "kraken"
  end

  test do
    # test that we can generate a config file.
    system bin/"kraken", "generate", (testpath/"config.yaml")
  end
end
