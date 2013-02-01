require 'formula'

class Kdepimlibs < Formula
  homepage 'http://www.kde.org/'
  url 'ftp://ftp.kde.org/pub/kde/stable/4.6.0/src/kdepimlibs-4.6.0.tar.bz2'
  sha1 '14624960410d270077df530d70d34e270260b3c4'

  depends_on 'cmake' => :build
  depends_on 'gpgme'
  depends_on 'akonadi'
  depends_on 'libical'
  depends_on 'kdelibs'

  def install
    system "cmake #{std_cmake_parameters} -DBUNDLE_INSTALL_DIR=#{bin} ."
    system "make install"
  end
end
