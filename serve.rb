require "formula"

class Serve < Formula
  homepage "https://github.com/kidoman/serve"
  url "https://github.com/kidoman/serve/archive/v0.1.4.tar.gz"
  sha1 "c1d2432155c42a295a7f3c892f2159f15516eee1"

  head "https://github.com/kidoman/serve.git"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "#{bin}/serve"
  end

  test do
    output = `#{bin}/serve -v`
    assert_equal 0, $?.exitstatus
  end
end
