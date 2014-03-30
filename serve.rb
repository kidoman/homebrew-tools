require "formula"

class Serve < Formula
  homepage "https://github.com/kidoman/serve"
  url "https://github.com/kidoman/serve/archive/v0.1.2.tar.gz"
  sha1 "fe280dbd8369f86df5d7f68c0327a1ea300e3b8d"

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
