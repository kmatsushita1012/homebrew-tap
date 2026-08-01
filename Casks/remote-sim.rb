cask "remote-sim" do
  version "2.0.1"
  sha256 "9ea12d8a074f6723cba2690b201f184ca190811542608ea167ef44e1e7f90c40"

  url "https://github.com/kmatsushita1012/RemoteSim/releases/download/v#{version}/RemoteSim-#{version}.dmg"
  name "RemoteSim"
  desc "View and control Mac simulators from a smartphone"
  homepage "https://github.com/kmatsushita1012/RemoteSim"

  app "RemoteSim.app"
end
