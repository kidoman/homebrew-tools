require "formula"

class Boom < Formula
  homepage "https://github.com/rakyll/boom"
  url "https://github.com/rakyll/boom/archive/master.tar.gz"
  sha1 "a9418ba4b6ede638d5e9970ccfb8be532c1ed40a"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "#{bin}/boom"
  end

  test do
    output = `#{bin}/boom`
    assert_equal 0, $?.exitstatus
  end
end
