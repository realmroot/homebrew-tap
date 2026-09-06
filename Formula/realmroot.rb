class Realmroot < Formula
  desc "Agent-native CLI for Realmroot resources and authorization"
  homepage "https://github.com/realmroot/cli"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realmroot/cli/releases/download/v0.5.3/realmroot_0.5.3_darwin_arm64.tar.gz"
      sha256 "0636c3a2c56f2d151408325b94dcb23dfdcbde0b63e21b4df6733e6c157f6341"
    else
      url "https://github.com/realmroot/cli/releases/download/v0.5.3/realmroot_0.5.3_darwin_amd64.tar.gz"
      sha256 "41784bc8b39bf9ab9a06a476c98b6da3de44115df57b976542bf3ce46e5d2f7d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/realmroot/cli/releases/download/v0.5.3/realmroot_0.5.3_linux_arm64.tar.gz"
      sha256 "379976b5a4b6fd4190f88363e359802fbc0c1a3a2d2288290c388566dbe725e9"
    else
      url "https://github.com/realmroot/cli/releases/download/v0.5.3/realmroot_0.5.3_linux_amd64.tar.gz"
      sha256 "f2e0cc427cfad808deca9bb31e14e6b94d479d8d48fff279fe2c35807461feb8"
    end
  end

  def install
    bin.install "realmroot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/realmroot version")
  end
end
