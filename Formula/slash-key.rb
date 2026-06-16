class SlashKey < Formula
  desc "Local path completion daemon and CLI"
  homepage "https://github.com/kmatsushita1012/slash-key"
  url "https://github.com/kmatsushita1012/slash-key/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "adf2ede8487df3d8866fb321abc5f78b17d3ddc3d6045eae99fc0814de17c6d0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/slash-key"
  end

  test do
    assert_match "usage:", shell_output("#{bin}/slash-key", 1)
  end
end
