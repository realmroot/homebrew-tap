class Realmroot < Formula
  desc "Agent-native CLI for Realmroot resources and authorization"
  homepage "https://github.com/realmroot/cli"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realmroot/cli/releases/download/v0.5.1/realmroot_0.5.1_darwin_arm64.tar.gz"
      sha256 "a9d480b18da2b1083226c440990d72c4e45fa9d44353a5231a4ee9fb6e399871"
    else
      url "https://github.com/realmroot/cli/releases/download/v0.5.1/realmroot_0.5.1_darwin_amd64.tar.gz"
      sha256 "fcf4c3c5425aa31e1f0463f4283c2121d4bf549674b7da152998a6bbc5414818"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/realmroot/cli/releases/download/v0.5.1/realmroot_0.5.1_linux_arm64.tar.gz"
      sha256 "30fb872456a66a97da84bc2f3c3e508dce6725eb6df5bbd6fcdc1cff9d58e679"
    else
      url "https://github.com/realmroot/cli/releases/download/v0.5.1/realmroot_0.5.1_linux_amd64.tar.gz"
      sha256 "e2091f4aa7ab20aa29c757b79775cce3d28434a60455effba7c6c8026f4a8399"
    end
  end

  def install
    bin.install "realmroot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/realmroot version")
  end
end
