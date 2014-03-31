require "formula"

class Serve < Formula
  homepage "https://github.com/kidoman/serve"
  url "https://github.com/kidoman/serve/archive/v0.2.0.tar.gz"
  sha1 "f184bf996f970a87e9873d454689d43d79e4165f"

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
