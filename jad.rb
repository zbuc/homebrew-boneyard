require 'formula'

class Jad < Formula
  url 'http://www.varaneckas.com/jad/jad158g.mac.intel.zip'
  version '1.5.8g'
  homepage 'http://www.varaneckas.com/jad/'
  md5 '2fbb110a9e9444564d025b64a56dcd98'

  def install
    bin.install 'jad'
  end

  def test
    system "#{bin}/jad"
  end
end
