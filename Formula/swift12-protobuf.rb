class Swift12Protobuf < Formula
  homepage "https://github.com/alexeyxo/protobuf-swift"
  head "https://github.com/alexeyxo/protobuf-swift.git", :sha => "2ed70fbca99ba17773be744b1c928da379e81525"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "protobuf"

  def install
    system "./autogen.sh"
    system "./configure", "--prefix=#{prefix}"
    system "make clean"
    system "make -j8"
    system "make install"
  end
end
