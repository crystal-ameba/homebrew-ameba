class Ameba < Formula
  desc "Static code analysis tool for Crystal"
  homepage "https://github.com/crystal-ameba/ameba"

  url "https://github.com/crystal-ameba/ameba/archive/refs/tags/v1.7.0.tar.gz"
  sha256 "b4bc22946285befd1571dfadff78e258180e10e7912fb7a91af53f6896c5e512"

  license "MIT"
  head "https://github.com/crystal-ameba/ameba.git", branch: "master"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on "crystal" => :build

  def install
    ENV["CRFLAGS"] = "--release"

    system "make"

    bin.install "bin/ameba"

    ohai "Thanks for using Ameba. Happy linting 🐞"
  end
end
