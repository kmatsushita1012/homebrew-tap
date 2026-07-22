cask "remote-sim" do
  version "0.1.0"
  sha256 "18ea13b27cef5ab1ccb463d95a49ed14570eb84a21c3606602f200640c4f3c56"

  url "https://github.com/kmatsushita1012/RemoteSim/releases/download/v#{version}/Remote.Sim-#{version}.dmg"
  name "Remote Sim"
  desc "PCとスマホを連携してシミュレータを確認・操作するアプリ"
  homepage "https://github.com/kmatsushita1012/RemoteSim"

  app "Remote Sim.app"
end
