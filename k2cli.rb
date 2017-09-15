class K2cli < Formula
  desc "CLI for K2"
  homepage "https://github.com/samsung-cnct/k2cli"
  url "https://github.com/samsung-cnct/k2cli/releases/download/1.1.0/k2cli_1.1.0_darwin_amd64.tar.gz"
  sha256 "f64964c6326bc9bdcde4b1c17e37ad48ae4a606adc582c41b9d6fb0cba427573"

  depends_on "docker"

  def install
    bin.install "k2cli"
  end

  test do
    # test that we can generate a config file.
    system bin/"k2cli", "generate", (testpath/"config.yaml")
  end
end
