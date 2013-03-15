require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class GitWtf < Formula
  homepage ''
  version '1.0.0'
  url 'https://git.gitorious.org/willgit/mainline.git'
  sha1 'b5ac91384b7b9b51cc39aa3a899dbf5ec3671469'

  # depends_on 'cmake' => :build
 
  def install
   system "mkdir", "#{prefix}/bin/"
    system "cp", "bin/git-wtf", "#{prefix}/bin/"
  #   # ENV.j1  # if your formula's build system can't parallelize
  # 
  #   system "./configure", "--disable-debug", "--disable-dependency-tracking",
  #                         "--prefix=#{prefix}"
  #   # system "cmake", ".", *std_cmake_args
  #   system "make install" # if this fails, try separate make/make install steps
  end

  # test do
  #   # `test do` will create, run in and delete a temporary directory.
  #   #
  #   # This test will fail and we won't accept that! It's enough to just replace
  #   # "false" with the main program this formula installs, but it'd be nice if you
  #   # were more thorough. Run the test with `brew test git-wtf`.
  #   system "false"
  # end
end
