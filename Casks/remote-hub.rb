cask "remote-hub" do
  version "0.1.0"
  sha256 "47a75f326f306b5607d65d2d7da939ddc785712bcd6337755d1bc8829d59aa1a"

  url "https://github.com/kmatsushita1012/RemoteHub/releases/download/v#{version}/RemoteHub-#{version}.dmg"
  name "RemoteHub"
  desc "PCとスマホを連携してシミュレータを確認・操作するアプリ"
  homepage "https://github.com/kmatsushita1012/RemoteHub"

  app "RemoteHub.app"
end
