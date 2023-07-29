class Ameba < Formula
  desc "Static code analysis tool for Crystal"
  homepage "https://github.com/crystal-ameba/ameba"
  license "MIT"

  stable do
    url "https://github.com/crystal-ameba/ameba/archive/v1.5.0.tar.gz"
    sha256 "c8f9b6c7f832a8e939f8f30b83ef960c25f66a0927d6e6461f2d0b20f1880476"
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
