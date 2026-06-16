class SlashKey < Formula
  desc "Local path completion daemon and CLI"
  homepage "https://github.com/kmatsushita1012/slash-key"
  url "https://github.com/kmatsushita1012/slash-key/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "b73b523ff9adf35d6deace9d51bbc6a7bd920f6a8ce69113ad5d6dee92f372f5"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/slash-key"
  end

  test do
    assert_match "usage:", shell_output("#{bin}/slash-key", 1)
  end
end
