class EnborRunner < Formula
  desc "Self-hosted runtime runner for Enbor"
  homepage "https://github.com/realmroot/agency"
  license "Apache-2.0"
  version "0.10.1"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realmroot/agency/releases/download/v0.10.1/enbor-runner_0.10.1_darwin_arm64.tar.gz"
      sha256 "c44ea12ddae23c73eb0d20f157936136d44ad7470503048e8855b66e118a5e5d"
    else
      url "https://github.com/realmroot/agency/releases/download/v0.10.1/enbor-runner_0.10.1_darwin_amd64.tar.gz"
      sha256 "d32c1c22150e0c5f1abf955f22bfc5460261e58fde28b206e3037c4419d349e9"
    end
  end
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/realmroot/agency/releases/download/v0.10.1/enbor-runner_0.10.1_linux_arm64.tar.gz"
      sha256 "afef2a54d2d58ff8f49ea025c7c8a2fa962717f29feafdfbbd41d548b9538e25"
    else
      url "https://github.com/realmroot/agency/releases/download/v0.10.1/enbor-runner_0.10.1_linux_amd64.tar.gz"
      sha256 "78703613b709364b98f4109954e5cc8db092b415a7ee69660ca0a030c4535aae"
    end
  end

  def install
    bin.install "enbor-runner"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enbor-runner version")
  end
end
