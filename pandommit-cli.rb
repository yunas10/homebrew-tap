class PandommitCli < Formula
  desc "Pandommit-cli is a command-line tool designed to create Git commits using standardized naming conventions. It aims to structure commit messages in a consistent and intuitive way."
  homepage "https://github.com/yunas10/pandommit-cli"
  url "https://github.com/yunas10/pandommit-cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "e5b8a7ffb265d2b64786ef6d291f038d389671ade586cd38f9d213b39797c2e1"
  version "1.0.2"
  license "Apache-2.0"

  depends_on "bash" => :run
  depends_on "git" => :run

  def install
    bin.install "src/pco"
  end

  test do
    system "#{bin}/pco", "--version"
  end
end
