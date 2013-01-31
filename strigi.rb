require 'formula'

class Strigi < Formula
  homepage 'http://strigi.sourceforge.net/'
  url 'http://www.vandenoever.info/software/strigi/strigi-0.7.2.tar.bz2'
  sha1 'b4c1472ef068536acf9c5c4c8f033a97f9c69f9f'

  depends_on 'cmake' => :build
  depends_on 'clucene'
  depends_on 'exiv2' => :optional

  def install
    ENV['CLUCENE_HOME'] = HOMEBREW_PREFIX
    ENV['EXPAT_HOME'] = '/usr/'

    system "cmake #{std_cmake_parameters} -DENABLE_EXPAT:BOOL=ON -DENABLE_DBUS:BOOL=OFF ."
    system "make install"
  end
end
