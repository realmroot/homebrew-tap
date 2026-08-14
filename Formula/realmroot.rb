class Realmroot < Formula
  desc "Agent-native CLI for Realmroot resources and authorization"
  homepage "https://github.com/realmroot/cli"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realmroot/cli/releases/download/v#{version}/realmroot_#{version}_darwin_arm64.tar.gz"
      sha256 "a7a20c613a40a6126661e02810895d0f550d366c30aa197bf0fa08ec3491136a"
    else
      url "https://github.com/realmroot/cli/releases/download/v#{version}/realmroot_#{version}_darwin_amd64.tar.gz"
      sha256 "8314849ad9735546a2922a21af663c14a64765c1ee48842c33a3530436fe2e9f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/realmroot/cli/releases/download/v#{version}/realmroot_#{version}_linux_arm64.tar.gz"
      sha256 "9d9ebb9fa0ed4aa51ae207ca70da613a14a6a67ecd1704df9687ecf82db441bf"
    else
      url "https://github.com/realmroot/cli/releases/download/v#{version}/realmroot_#{version}_linux_amd64.tar.gz"
      sha256 "ec8b3c6f460aed9bc69eea7702363255139c169fb297240a9dda5977e1f86018"
    end
  end

  def install
    bin.install "realmroot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/realmroot version")
  end
end
