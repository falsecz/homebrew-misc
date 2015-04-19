class SwiftProtobuf < Formula
  homepage "https://github.com/alexeyxo/protobuf-swift"
  version "1.6"
  url "https://github.com/alexeyxo/protobuf-swift/archive/1.6.tar.gz"
  sha256 "5b8f2c47cd05da2c1c3ca0a96b77e5bd5422933de5d36245ee603c0c6d707bc5"

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
