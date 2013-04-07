require 'formula'

class Flusspferd < Formula
  homepage 'http://flusspferd.github.io/'
  url 'https://github.com/Flusspferd/flusspferd/archive/v0.9.tar.gz'
  sha1 '4d32bbd4e398ef12bd14f9347130a44733e7bb7d'

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
