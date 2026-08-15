class Realmroot < Formula
  desc "Agent-native CLI for Realmroot resources and authorization"
  homepage "https://github.com/realmroot/cli"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realmroot/cli/releases/download/v0.4.1/realmroot_0.4.1_darwin_arm64.tar.gz"
      sha256 "af2cf1b99bb2efb24a3f22454a9617e36d432ff091aeabf196b8b94c144e5a02"
    else
      url "https://github.com/realmroot/cli/releases/download/v0.4.1/realmroot_0.4.1_darwin_amd64.tar.gz"
      sha256 "50514c811ab94681bff7bd19d6036e3885833e615242ba7f94259e6561a99ce3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/realmroot/cli/releases/download/v0.4.1/realmroot_0.4.1_linux_arm64.tar.gz"
      sha256 "9196df843e1655dc20a7eab426d1bca08e6d96b97a0ba8802d29f140ee45fdcc"
    else
      url "https://github.com/realmroot/cli/releases/download/v0.4.1/realmroot_0.4.1_linux_amd64.tar.gz"
      sha256 "5a09adac29b9eadc76dd21b28a001c98849dd9045274590783379549bd15be41"
    end
  end

  def install
    bin.install "realmroot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/realmroot version")
  end
end
