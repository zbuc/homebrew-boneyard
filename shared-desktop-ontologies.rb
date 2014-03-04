require 'formula'

class SharedDesktopOntologies < Formula
  homepage 'http://sourceforge.net/apps/trac/oscaf/'
  url 'https://downloads.sourceforge.net/project/oscaf/shared-desktop-ontologies/0.5/shared-desktop-ontologies-0.5.tar.bz2'
  sha1 '672e10ba113314083b43702d9456a9c92e4f501f'

  depends_on 'cmake' => :build

  def install
    system "cmake #{std_cmake_parameters} ."
    system "make install"
  end
end
