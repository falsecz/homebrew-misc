require "formula"

class Dlc < Formula
  url "https://github.com/falsecz/dlc/archive/0.0.2.zip"
  sha1 "4ca2650ef7027efa2896d1264b1554ed5caef215"


  def install
	system "ls"
	prefix.install Dir["*"]
	bin.install_symlink "#{prefix}/dlc" => "dlc"
	bash_completion.install "#{prefix}/dlc-autocomplete" => "dlc"
  end
end
