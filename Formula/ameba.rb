class Ameba < Formula
  desc "Static code analysis tool for Crystal"
  homepage "https://github.com/crystal-ameba/ameba"

  url "https://github.com/crystal-ameba/ameba/archive/refs/tags/v1.6.3.tar.gz"
  sha256 "355aade793f920eeb81572f79c53c5e260ac0268d86d574f77051689af2675f2"

  license "MIT"
  head "https://github.com/crystal-ameba/ameba.git", branch: "master"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on "crystal"

  def install
    ENV["CRFLAGS"] = "--release -Dpreview_mt"

    system "make"

    bin.install "bin/ameba"

    ohai "Thanks for using Ameba. Happy linting 🐞"
    ohai "Please support: https://www.patreon.com/veelenga"
  end
end
