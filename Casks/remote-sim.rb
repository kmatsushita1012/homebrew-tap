cask "remote-sim" do
  version "2.0.0"
  sha256 "aac9b274d33e9bbb7cfb108e054863d2a3510db238ed3a7d3c29784368e3576f"

  url "https://github.com/kmatsushita1012/RemoteSim/releases/download/v#{version}/RemoteSim-#{version}.dmg"
  name "RemoteSim"
  desc "View and control Mac simulators from a smartphone"
  homepage "https://github.com/kmatsushita1012/RemoteSim"

  app "RemoteSim.app"
end
