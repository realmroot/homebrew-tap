cask "realmroot" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.0"
  sha256 arm:   "a7a20c613a40a6126661e02810895d0f550d366c30aa197bf0fa08ec3491136a",
         intel: "8314849ad9735546a2922a21af663c14a64765c1ee48842c33a3530436fe2e9f"

  url "https://github.com/realmroot/cli/releases/download/v#{version}/realmroot_#{version}_darwin_#{arch}.tar.gz"
  name "Realmroot CLI"
  desc "Agent-native CLI for Realmroot resources and authorization"
  homepage "https://github.com/realmroot/cli"

  binary "realmroot"
end
