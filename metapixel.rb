require 'formula'

class Metapixel < Formula
  homepage 'http://www.complang.tuwien.ac.at/schani/metapixel/'
  url 'http://www.complang.tuwien.ac.at/schani/metapixel/files/metapixel-1.0.2.tar.gz'
  sha1 'f917aec91430b1bdbcc7b3dea29cb93f15a04c77'

  depends_on 'jpeg'
  depends_on 'giflib'

  def install
    man1.mkpath
    # separate steps
    system "make", "CC=#{ENV.cc}",
                   "MACOS_LDOPTS=-L#{HOMEBREW_PREFIX}/lib",
                   "MACOS_CCOPTS=#{ENV.cflags} -I#{HOMEBREW_PREFIX}/include"
    system "make", "PREFIX=#{prefix}", "install"
  end
end
