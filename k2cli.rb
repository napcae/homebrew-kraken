class K2cli < Formula
  desc "CLI for K2"
  homepage "https://github.com/samsung-cnct/k2cli"
  url "https://github.com/samsung-cnct/k2cli/releases/download/1.0.8/k2cli_1.0.8_darwin_amd64.tar.gz"
  sha256 "95b98df9ff3e461c7373f19b704635f71e5b9e27c955e8cbfe819c8812128350"

  depends_on "docker"

  def install
    bin.install "k2cli"
  end

  test do
    # test that we can generate a config file.
    system bin/"k2cli", "generate", (testpath/"config.yaml")
  end
end
