cask "remote-sim" do
  version "2.1.0"
  sha256 "6a89c6f73eda517ca768578ddf4c478486eb17f0fdc85f0c71130e43cf064003"

  url "https://github.com/kmatsushita1012/RemoteSim/releases/download/v#{version}/RemoteSim-#{version}.dmg"
  name "RemoteSim"
  desc "View and control Mac simulators from a smartphone"
  homepage "https://github.com/kmatsushita1012/RemoteSim"

  app "RemoteSim.app"
end
