require "formula"

class Serve < Formula
  homepage "https://github.com/kidoman/serve"
  url "https://github.com/kidoman/serve/releases/download/v0.2.2/serve_0.2.2_darwin_amd64.zip"
  sha1 "1768ada55d21e0c1b0227bd1f8ae2625819afac5"

  def install
    system "cp", "serve_0.2.2_darwin_amd64/serve", "#{bin}/serve"
  end

  test do
    output = `#{bin}/serve -v`
    assert_equal 0, $?.exitstatus
  end
end
