cask "remote-sim" do
  version "2.1.0"
  sha256 "e12ab28cb09d267f440e5960073838b882b6cf9a85101925d0a6071d08798573"

  url "https://github.com/kmatsushita1012/RemoteSim/releases/download/v#{version}/RemoteSim-#{version}.dmg"
  name "RemoteSim"
  desc "View and control Mac simulators from a smartphone"
  homepage "https://github.com/kmatsushita1012/RemoteSim"

  app "RemoteSim.app"
end
