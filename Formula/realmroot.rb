class Realmroot < Formula
  desc "Agent-native CLI for Realmroot resources and authorization"
  homepage "https://github.com/realmroot/cli"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realmroot/cli/releases/download/v0.4.2/realmroot_0.4.2_darwin_arm64.tar.gz"
      sha256 "1fa095c34dfbca876309931b988961ddcefa3a308f13cf2be1e3d85babffaec9"
    else
      url "https://github.com/realmroot/cli/releases/download/v0.4.2/realmroot_0.4.2_darwin_amd64.tar.gz"
      sha256 "23bec6da00568313276df730182933a77cfb81f63c7ee1f6a78aca15bc2e78c9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/realmroot/cli/releases/download/v0.4.2/realmroot_0.4.2_linux_arm64.tar.gz"
      sha256 "57935d061df2b487ad6fac7d69f89aeef5ba1bcef1acaaab803a5f580bd131d6"
    else
      url "https://github.com/realmroot/cli/releases/download/v0.4.2/realmroot_0.4.2_linux_amd64.tar.gz"
      sha256 "51a7d0d8c99a748a4bec8b8778f34659f621952d70756151d726c8c4d480e5da"
    end
  end

  def install
    bin.install "realmroot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/realmroot version")
  end
end
