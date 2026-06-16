class SlashKey < Formula
  desc "Local path completion daemon and CLI"
  homepage "https://github.com/kmatsushita1012/slash-key"
  url "https://github.com/kmatsushita1012/slash-key/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "8867ce8840fe4741e1ac1250721b371bce6e96d76dd88bc708532bf3812f6644"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/slash-key"
  end

  test do
    assert_match "usage:", shell_output("#{bin}/slash-key", 1)
  end
end
