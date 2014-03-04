require 'formula'

class Jad < Formula
  url 'http://www.varaneckas.com/jad/jad158g.mac.intel.zip'
  version '1.5.8g'
  homepage 'http://www.varaneckas.com/jad/'
  sha1 '25bf73676eec21d4cf02f110cb7a06d37cb52f16'

  def install
    bin.install 'jad'
  end

  def test
    system "#{bin}/jad"
  end
end
