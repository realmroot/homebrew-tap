class EnborRunner < Formula
  desc "Self-hosted runtime runner for Enbor"
  homepage "https://github.com/realmroot/agency"
  license "Apache-2.0"
  version "0.10.0"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realmroot/agency/releases/download/v0.10.0/enbor-runner_0.10.0_darwin_arm64.tar.gz"
      sha256 "e505f1d8a15aefa3d0d5f2348ba891293e5de0e7ed7892b2f67f6d9bd030324f"
    else
      url "https://github.com/realmroot/agency/releases/download/v0.10.0/enbor-runner_0.10.0_darwin_amd64.tar.gz"
      sha256 "32673dcc1369ae3c5c664357bdab1bea16336d8580848357c7dab583f8b7a9d1"
    end
  end
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/realmroot/agency/releases/download/v0.10.0/enbor-runner_0.10.0_linux_arm64.tar.gz"
      sha256 "97bdc1bda20cb2a9cf904a0fd4f1e496c1ad441c7a1b3b2c38e198e870c8e808"
    else
      url "https://github.com/realmroot/agency/releases/download/v0.10.0/enbor-runner_0.10.0_linux_amd64.tar.gz"
      sha256 "2c975fe6c7e4c884f414422b05e76351e49ab1b70d3dd333ae68c2835284916a"
    end
  end

  def install
    bin.install "enbor-runner"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enbor-runner version")
  end
end
