class AmebaLs < Formula
  desc "Language Server for Ameba - a static code analysis tool for Crystal"
  homepage "https://github.com/crystal-ameba/ameba-ls"

  url "https://github.com/crystal-ameba/ameba-ls/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "adb7470bfc2d3e698f71ba88f5e45b01a1074184e4eb5459d2117c3f14bdc0c7"

  license "MIT"
  head "https://github.com/crystal-ameba/ameba-ls.git", branch: "master"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on "crystal" => :build

  def install
    system "make"

    bin.install "bin/ameba-ls"

    ohai "Thanks for using Ameba. Happy linting 🐞"
  end
end
