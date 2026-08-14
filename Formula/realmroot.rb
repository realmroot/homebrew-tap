class Realmroot < Formula
  desc "Agent-native CLI for Realmroot resources and authorization"
  homepage "https://github.com/realmroot/cli"
  url "https://github.com/realmroot/cli/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "b2daaeb995b81fd658db1eb78f498503e19a4b0e24f9b8351422c53a07772c3c"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X github.com/realmroot/toolbox/internal/buildinfo.Version=v#{version}
    ]
    system "go", "build", *std_go_args(ldflags:)
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/realmroot version")
  end
end
