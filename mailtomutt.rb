require 'formula'

class Mailtomutt < Formula
  url 'http://downloads.sourceforge.net/project/mailtomutt/MailtoMutt/v0.4.1/mailtomutt-0.4.1.tar.bz2'
  homepage 'http://mailtomutt.sourceforge.net'
  sha1 '50009431faca36dca2ef8fe61f2caf7e9dd7c3a9'

  def install
    system "xcodebuild SYMROOT=build"
    prefix.install "build/Default/MailtoMutt.app"
  end

  def caveats; <<-EOS.undent
    MaitoMutt.app was installed in:
      #{prefix}

    To symlink into ~/Applications:
      brew linkapps
    EOS
  end
end
