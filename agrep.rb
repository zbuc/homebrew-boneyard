require 'formula'

class Agrep < Formula
  homepage 'http://en.wikipedia.org/wiki/Agrep'
  url 'ftp://ftp.cs.arizona.edu/agrep/agrep-2.04.tar.Z'
  sha1 '862fa60832b175b9b0c3f43d792f7663a43902b7'

  def install
    system "make", "CFLAGS=#{ENV.cflags}"
    bin.install "agrep"
    man1.install "agrep.1"
  end
end
