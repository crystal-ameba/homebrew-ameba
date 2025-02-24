class Ameba < Formula
  desc "Static code analysis tool for Crystal"
  homepage "https://github.com/crystal-ameba/ameba"

  url "https://github.com/crystal-ameba/ameba/archive/refs/tags/v1.6.4.tar.gz"
  sha256 "b6bfe1206aa3eec31d95bc60dfea4b8b9d316be6ff4130c4a55fb48f61a7f918"

  license "MIT"
  head "https://github.com/crystal-ameba/ameba.git", branch: "master"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on "crystal" => :build

  def install
    ENV["CRFLAGS"] = "--release -Dpreview_mt"

    system "make"

    bin.install "bin/ameba"

    ohai "Thanks for using Ameba. Happy linting 🐞"
    ohai "Please support: https://www.patreon.com/veelenga"
  end
end
