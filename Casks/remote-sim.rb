cask "remote-sim" do
  version "2.1.0"
  sha256 "30261ca61dd61fe5e920ddafd77ef5abfcc6d1197282f03a7a40acc8a3f7de14"

  url "https://github.com/kmatsushita1012/RemoteSim/releases/download/v#{version}/RemoteSim-#{version}.dmg"
  name "RemoteSim"
  desc "View and control Mac simulators from a smartphone"
  homepage "https://github.com/kmatsushita1012/RemoteSim"

  app "RemoteSim.app"
end
