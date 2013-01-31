require 'formula'

class Flusspferd < Formula
  url 'https://github.com/Flusspferd/flusspferd/tarball/v0.9'
  homepage 'http://flusspferd.github.com/'
  sha1 '36a0d085bb5b9a36bdb3d62660e9134bca0f6597'

  depends_on 'cmake' => :build
  depends_on 'arabica'
  depends_on 'gmp'
  depends_on 'boost'
  depends_on 'spidermonkey'

  fails_with_llvm

  def install
    system "cmake -H. -Bbuild #{std_cmake_parameters}"
    system "make install"
  end
end
