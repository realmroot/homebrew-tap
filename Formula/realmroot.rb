class Realmroot < Formula
  desc "Agent-native CLI for Realmroot resources and authorization"
  homepage "https://github.com/realmroot/cli"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realmroot/cli/releases/download/v0.5.0/realmroot_0.5.0_darwin_arm64.tar.gz"
      sha256 "4084ce4cb4124b15ca76ba8764eafe393b14e585d2b70f52bf1f6ec4abd56419"
    else
      url "https://github.com/realmroot/cli/releases/download/v0.5.0/realmroot_0.5.0_darwin_amd64.tar.gz"
      sha256 "63f16c2cef679562c4adf17eb571a4c11a178a919f01a758c62b016716e3deea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/realmroot/cli/releases/download/v0.5.0/realmroot_0.5.0_linux_arm64.tar.gz"
      sha256 "7c27dd27f8a420ff9157d8e7234191d18d149541607d84df5d1060cb0e294ad9"
    else
      url "https://github.com/realmroot/cli/releases/download/v0.5.0/realmroot_0.5.0_linux_amd64.tar.gz"
      sha256 "b9df1eec992bdad36fd42331470cffe214e9dd9273f07acbacd96c9217cf2ed9"
    end
  end

  def install
    bin.install "realmroot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/realmroot version")
  end
end
