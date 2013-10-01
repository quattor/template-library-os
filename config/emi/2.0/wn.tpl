unique template config/emi/2.0/wn;

# Add some scientific libraries from OS, remove conflicting and very
# obsolete ones and add some 32-bit versions
#include { "rpms/engineering_and_scientific" };

# CHECKED PACKAGE-BY-PACKAGE engineering_and_scientific
"/software/packages"=pkg_repl("device-mapper-multipath","","x86_64");
"/software/packages"=pkg_repl("gd","","x86_64");
"/software/packages"=pkg_repl("gnuplot","","x86_64");
"/software/packages"=pkg_repl("lapack","","x86_64");
"/software/packages"=pkg_repl("compat-libtermcap","","x86_64");
"/software/packages"=pkg_repl("mcstrans","","x86_64");
"/software/packages"=pkg_repl("units","","x86_64");
"/software/packages"=pkg_repl("util-linux-ng","","x86_64");
"/software/packages"=pkg_repl("gnuplot-common","","x86_64");
"/software/packages"=pkg_repl("device-mapper-multipath-libs","","x86_64");

"/software/packages" = pkg_repl("lapack","","i686");
"/software/packages" = pkg_repl("pcre","","i686");
"/software/packages" = pkg_repl("boost");
"/software/packages" = pkg_repl("boost-devel","","i686");
"/software/packages" = pkg_repl("libicu","","i686");
"/software/packages" = pkg_del("lam");
"/software/packages" = pkg_del("lam-libs");
"/software/packages" = pkg_del("pvm");

# Atlas Requirements
"/software/packages" = pkg_repl("libxml2","","i686");
"/software/packages" = pkg_repl("libxml2-devel","","i686");
"/software/packages" = pkg_repl("libxml2-devel","","x86_64");
"/software/packages" = pkg_repl("blas","","i686");
"/software/packages" = pkg_repl("blas","","x86_64");
"/software/packages" = pkg_repl("blas-devel","","i686");
"/software/packages" = pkg_repl("blas-devel","","x86_64");
 

# Blas dependencies
"/software/packages"=pkg_repl("cloog-ppl","","x86_64");
"/software/packages"=pkg_repl("mpfr","","x86_64");
"/software/packages"=pkg_repl("libgfortran","","x86_64");
"/software/packages"=pkg_repl("gcc-gfortran","","x86_64");
"/software/packages"=pkg_repl("cpp","","x86_64");
"/software/packages"=pkg_repl("ppl","","x86_64");
"/software/packages"=pkg_repl("gcc","","x86_64");


# OS errata and site specific updates
# Always reinclude updates

"/software/packages"=pkg_repl("libuuid-devel","","x86_64");
"/software/packages"=pkg_repl("glibc-devel","","i686");
"/software/packages"=pkg_repl("openssl098e","","i686");
"/software/packages"=pkg_repl("libaio","","i686");
"/software/packages"=pkg_repl("compat-libtermcap","","i686");
"/software/packages"=pkg_repl("ncurses-devel","","i686");
"/software/packages"=pkg_repl("ncurses-devel","","x86_64");
"/software/packages"=pkg_repl("freetype-devel","","i686");
"/software/packages"=pkg_repl("freetype-devel","","x86_64");
"/software/packages"=pkg_repl("libpng-devel","","i686");
"/software/packages"=pkg_repl("libpng-devel","","x86_64");
"/software/packages"=pkg_repl("compat-readline5","","i686");
"/software/packages"=pkg_repl("mesa-libGL-devel","","x86_64");
"/software/packages"=pkg_repl("mesa-libGL","","x86_64");
"/software/packages"=pkg_repl("mesa-libGLU-devel","","x86_64");
"/software/packages"=pkg_repl("mesa-libGLU","","x86_64");
"/software/packages"=pkg_repl("mesa-libGL-devel","","x86_64");
"/software/packages"=pkg_repl("mesa-libGL","","x86_64");
"/software/packages"=pkg_repl("mesa-libGLU-devel","","x86_64");
"/software/packages"=pkg_repl("mesa-libGLU","","x86_64");
"/software/packages"=pkg_repl("libXext-devel","","i686");
"/software/packages"=pkg_repl("libXext-devel","","x86_64");
"/software/packages"=pkg_repl("libXpm","","i686");
"/software/packages"=pkg_repl("libXpm","","x86_64");
"/software/packages"=pkg_repl("pam","","i686");
"/software/packages"=pkg_repl("compat-db43","","i686");
"/software/packages"=pkg_repl("compat-db43","","x86_64");
"/software/packages"=pkg_repl("compat-expat1","","i686");
"/software/packages"=pkg_repl("expat","","i686");
"/software/packages"=pkg_repl("compat-expat1","","x86_64");
"/software/packages"=pkg_repl("libuuid-devel","","x86_64");


include { "config/os/updates" };


