require 'formula'

class Pngwriter < Formula
  url 'https://downloads.sourceforge.net/project/pngwriter/pngwriter/pngwriter-0.5.4/pngwriter-0.5.4.zip'
  homepage 'http://pngwriter.sourceforge.net/'
  sha1 '9dc7275ec1320eb8d5d02db3d7cb04a3d40c9619'

  def install
    # the zip file contains one more directory
    cd("pngwriter-0.5.4")
    # use the OSX specific makefile
    ln_sf("make.include.osx", "make.include")
    system "make PREFIX=#{prefix}"
    system "make install PREFIX=#{prefix}"
  end
end
