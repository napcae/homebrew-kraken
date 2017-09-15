class Kraken < Formula
  desc "Command line interface for kraken"
  homepage "https://github.com/samsung-cnct/kraken"
  url "https://github.com/samsung-cnct/kraken/releases/download/1.1.0/kraken-rel_1.1.0_darwin_amd64.tar.gz"
  sha256 "84356a61d9b6a069e7f0edc72bc7d626f91f43a10865ec90f29cf1adb34ba647"

  depends_on "docker"

  def install
    bin.install "kraken"
  end

  test do
    # test that we can generate a config file.
    system bin/"kraken", "generate", (testpath/"config.yaml")
  end
end
