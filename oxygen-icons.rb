require 'formula'

class OxygenIcons < Formula
  homepage 'http://www.oxygen-icons.org/'
  url 'ftp://ftp.kde.org/pub/kde/stable/4.6.0/src/oxygen-icons-4.6.0.tar.bz2'
  sha1 'a5c9cdfd2ead610b3b7d763006802ee90afdb580'

  depends_on 'cmake' => :build

  def install
    system "cmake #{std_cmake_parameters} ."
    system "make install"
  end
end
