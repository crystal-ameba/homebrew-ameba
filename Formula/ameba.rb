class Ameba < Formula
  desc "Static code analysis tool for Crystal"
  homepage "https://github.com/crystal-ameba/ameba"
  license "MIT"

  stable do
    url "https://github.com/crystal-ameba/ameba/archive/refs/tags/v1.6.1.tar.gz"
    sha256 "d65aed0b8e67c92fee1e9b16e54e3b79b96f089dfd33fb270ae9c71028f8c68e"
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
