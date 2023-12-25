class Ameba < Formula
  desc "Static code analysis tool for Crystal"
  homepage "https://github.com/crystal-ameba/ameba"
  license "MIT"

  stable do
    url "https://github.com/crystal-ameba/ameba/archive/v1.6.0.tar.gz"
    sha256 "a7fb3ff1805003065ee80bfca6d7474bfdaa9a2821d91dd8c5856ad2b63fbc14"
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
