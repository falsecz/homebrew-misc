require "formula"

class Dlc < Formula
  url "https://github.com/falsecz/dlc/archive/0.0.4.zip"
  sha1 "2c24380e0bfcfe4526933cd711048c79d8ad9ef5"


  def install
	system "ls"
	prefix.install Dir["*"]
	bin.install_symlink "#{prefix}/dlc" => "dlc"
	bash_completion.install "#{prefix}/dlc-autocomplete" => "dlc"
  end
end
