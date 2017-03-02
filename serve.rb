require "formula"

class Serve < Formula
  homepage "https://github.com/kidoman/serve"
  url "https://github.com/kidoman/serve/archive/v0.2.3.tar.gz"
  sha256 "f80fafcee55f168a6bbd052e2870e208f7a193233de503fed739d5a6529853ac"

  head "https://github.com/kidoman/serve.git"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "#{bin}/serve"
  end

  test do
    system "#{bin}/serve", "-v"
  end
end
