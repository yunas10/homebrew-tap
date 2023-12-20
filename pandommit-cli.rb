class PandommitCli < Formula
  desc "Pandommit-cli is a command-line tool designed to create Git commits using standardized naming conventions. It aims to structure commit messages in a consistent and intuitive way."
  homepage "https://github.com/yunas10/pandommit-cli"
  url "https://github.com/yunas10/pandommit-cli/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "423c4139c09343aa8fddb332c23dc2fa3ef5dfaf7da764ec395d48761a6d8f4f"
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
