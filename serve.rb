require "formula"

class Serve < Formula
  homepage "https://github.com/kidoman/serve"
  url "https://github.com/kidoman/serve/archive/v0.1.3.tar.gz"
  sha1 "c7115d2212c740ee157ac86aa60e1ba27bdd1552"

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
