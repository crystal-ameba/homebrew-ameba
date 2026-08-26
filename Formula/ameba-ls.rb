class AmebaLs < Formula
  desc "Language Server for Ameba - a static code analysis tool for Crystal"
  homepage "https://github.com/crystal-ameba/ameba-ls"

  url "https://github.com/crystal-ameba/ameba-ls/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "66b966a5c90c40e30e68002e82884048ef972a626b7a54b4dc6a4f977f93dfb0"

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
