class K2cli < Formula
  desc "CLI for K2"
  homepage "https://github.com/samsung-cnct/k2cli"
  url "https://github.com/samsung-cnct/k2cli/releases/download/1.0.9/k2cli_1.0.9_darwin_amd64.tar.gz"
  sha256 "61a9342a84655d41f7530975a5411b4c895c8fa905402f6d8a7b56aeb6d8ae27"

  depends_on "docker"

  def install
    bin.install "k2cli"
  end

  test do
    # test that we can generate a config file.
    system bin/"k2cli", "generate", (testpath/"config.yaml")
  end
end
