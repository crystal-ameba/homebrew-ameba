class Ameba < Formula
  desc "Static code analysis tool for Crystal"
  homepage "https://github.com/crystal-ameba/ameba"
  license "MIT"

  stable do
    url "https://github.com/crystal-ameba/ameba/archive/v1.4.3.tar.gz"
    sha256 "c42209a2e39f2f954776befc2a9ff441250390df1bcf8368a17150270ccf5c27"
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
