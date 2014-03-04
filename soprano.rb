require 'formula'

class Soprano < Formula
  homepage 'http://soprano.sourceforge.net/'
  url 'https://downloads.sourceforge.net/project/soprano/Soprano/2.6.0/soprano-2.6.0.tar.bz2'
  sha1 '72cc2e55597adbf9d2d0b416171d854fddbde503'

  depends_on 'cmake' => :build
  depends_on 'qt'
  depends_on 'clucene' => :optional
  depends_on 'raptor' => :optional
  depends_on 'redland' => :optional

  def install
    ENV['CLUCENE_HOME'] = HOMEBREW_PREFIX

    system "cmake #{std_cmake_parameters} ."
    system "make install"
  end
end
