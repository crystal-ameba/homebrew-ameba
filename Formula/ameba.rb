class Ameba < Formula
  desc "Static code analysis tool for Crystal"
  homepage "https://github.com/crystal-ameba/ameba"
  license "MIT"

  stable do
    url "https://github.com/crystal-ameba/ameba/archive/refs/tags/v1.6.2.tar.gz"
    sha256 "e05de5b5fa6f2c394fcf4cdeb1b1c2ff99f06a7663256acd759c50f2c1251b48"
  end

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  head do
    url "https://github.com/crystal-ameba/ameba.git", branch: "master"
  end

  depends_on "crystal"

  def install
    system "make"

    bin.install "bin/ameba"

    ohai "Thanks for using Ameba. Happy linting 🐞"
    ohai "Please support: https://www.patreon.com/veelenga"
  end
end
