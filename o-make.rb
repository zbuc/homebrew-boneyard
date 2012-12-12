require 'formula'

class OMake < Formula
  url 'http://omake.metaprl.org/downloads/omake-0.9.8.6-0.rc1.tar.gz'
  homepage 'http://omake.metaprl.org/'
  sha1 'f714fa992bf391b8bac49a488bc654128962d1cc'

  depends_on 'objective-caml'

  def patches
    # skip all warnings that can happen with newer versions of ocamlc
    DATA
  end

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end

__END__
diff --git a/OMakefile b/OMakefile
index 9b77a25..1d61d70 100644
--- a/OMakefile
+++ b/OMakefile
@@ -57,7 +57,7 @@ if $(not $(defined CAMLLIB))
 #
 # OCaml options
 #
-OCAMLFLAGS[] += -w Ae$(if $(OCAML_ACCEPTS_Z_WARNING), z)
+OCAMLFLAGS[] += -warn-error -a
 if $(THREADS_ENABLED)
     OCAMLFLAGS += -thread
     export
