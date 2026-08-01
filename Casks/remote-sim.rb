cask "remote-sim" do
  version "2.0.1"
  sha256 "23c529bd68a3e12bd681781a404b5f60a71a07a3077ad455731a41987c349189"

  url "https://github.com/kmatsushita1012/RemoteSim/releases/download/v#{version}/RemoteSim-#{version}.dmg"
  name "RemoteSim"
  desc "View and control Mac simulators from a smartphone"
  homepage "https://github.com/kmatsushita1012/RemoteSim"

  app "RemoteSim.app"
end
