class SlashKey < Formula
  desc "Local path completion daemon and CLI"
  homepage "https://github.com/kmatsushita1012/slash-key"
  url "https://github.com/kmatsushita1012/slash-key/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "6ca99647d7d4a63f5109b317e9ec8505d4e7f852bd4120845f4ea71d8e77d512"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/slash-key"
  end

  test do
    assert_match "usage:", shell_output("#{bin}/slash-key", 1)
  end
end
