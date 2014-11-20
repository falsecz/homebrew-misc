require "formula"

class Dlc < Formula
  url "https://github.com/falsecz/dlc/archive/0.0.3.zip"
  sha1 "67d65a808cad7346b913738aca544ee6a348bdd7"


  def install
	system "ls"
	prefix.install Dir["*"]
	bin.install_symlink "#{prefix}/dlc" => "dlc"
	bash_completion.install "#{prefix}/dlc-autocomplete" => "dlc"
  end
end
