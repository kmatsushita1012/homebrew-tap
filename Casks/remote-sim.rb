cask "remote-sim" do
  version "2.0.0"
  sha256 "e109f722e4932746efffaf1e6b77d15aaa1e04770b20b4e4ae977cd496538763"

  url "https://github.com/kmatsushita1012/RemoteSim/releases/download/v#{version}/RemoteSim-#{version}.dmg"
  name "RemoteSim"
  desc "PCとスマホを連携してシミュレータを確認・操作するアプリ"
  homepage "https://github.com/kmatsushita1012/RemoteSim"

  app "RemoteSim.app"
end
