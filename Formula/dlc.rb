require "formula"

class Dlc < Formula
  url "https://github.com/falsecz/dlc/archive/0.0.5.zip"
  sha1 "96afa8686581fe414eec144c18c235d897c19104"


  def install
	system "ls"
	prefix.install Dir["*"]
	bin.install_symlink "#{prefix}/dlc" => "dlc"
	bash_completion.install "#{prefix}/dlc-autocomplete" => "dlc"
  end
end
