require 'formula'

class Memcachedb < Formula
  url 'http://memcachedb.googlecode.com/files/memcachedb-1.2.1-beta.tar.gz'
  homepage 'http://memcachedb.org'
  sha1 '6a87ee981808cefc5c1189f08e209be4e85834fd'

  depends_on 'berkeley-db4'
  depends_on 'libevent'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--enable-threads"
    system "make install"
  end
end
