require "formula"

class Boom < Formula
  homepage "https://github.com/rakyll/boom"
  head "https://github.com/rakyll/boom.git"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "#{bin}/boom"
  end

  test do
    output = `#{bin}/boom`
    assert_equal 0, $?.exitstatus
  end
end
