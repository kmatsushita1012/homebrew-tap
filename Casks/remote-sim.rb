cask "remote-sim" do
  version "0.1.0"
  sha256 "7753cdebbd5f0d05c8d38bd7761932d4926c81e96c7dc378062fde4f30f3ba70"

  url "https://github.com/kmatsushita1012/RemoteSim/releases/download/v#{version}/RemoteSim-#{version}.dmg"
  name "RemoteSim"
  desc "PCとスマホを連携してシミュレータを確認・操作するアプリ"
  homepage "https://github.com/kmatsushita1012/RemoteSim"

  app "RemoteSim.app"
end
