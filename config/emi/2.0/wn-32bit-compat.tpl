# RPMs for HEP SL4 compatibility provided by OS

unique template config/emi/2.0/wn-32bit-compat;

"/software/packages/"=pkg_repl("alsa-lib","","i686");
"/software/packages/"=pkg_repl("compat-db","","i686");
"/software/packages/"=pkg_repl("compat-db","","x86_64");
"/software/packages/"=pkg_repl("compat-libf2c-34","","i686");
"/software/packages/"=pkg_repl("cyrus-sasl-lib","","i686");
"/software/packages/"=pkg_repl("gdbm","","i686");
"/software/packages/"=pkg_repl("giflib","","i686");
"/software/packages/"=pkg_repl("glib2","","i686");
"/software/packages/"=pkg_repl("gmp","","i686");
"/software/packages/"=pkg_repl("libICE","","i686");
"/software/packages/"=pkg_repl("libSM","","i686");
"/software/packages/"=pkg_repl("libXcursor","","i686");
"/software/packages/"=pkg_repl("libXext","","i686");
"/software/packages/"=pkg_repl("libXi","","i686");
"/software/packages/"=pkg_repl("libXinerama","","i686");
"/software/packages/"=pkg_repl("libXmu","","i686");
"/software/packages/"=pkg_repl("libXmu","","x86_64");
"/software/packages/"=pkg_repl("libXp","","i686");
"/software/packages/"=pkg_repl("libXp","","x86_64");
"/software/packages/"=pkg_repl("libXrandr","","i686");
"/software/packages/"=pkg_repl("libXt","","i686");
"/software/packages/"=pkg_repl("libXt","","x86_64");
"/software/packages/"=pkg_repl("libXtst","","i686");
"/software/packages/"=pkg_repl("libidn","","i686");
#"/software/packages/"=pkg_repl("libjpeg","","i686");
"/software/packages/"=pkg_repl("libtiff","","i686");


"/software/packages"= {
                        pkg_repl("compat-glibc-headers","","x86_64");
                        pkg_repl("libXmu","","i686");
                        pkg_repl("libXmu","","x86_64");
                        pkg_repl("compat-libf2c-34","","x86_64");
                        pkg_repl("compat-readline5","","x86_64");
                        pkg_repl("compat-libstdc++-33","","x86_64");
                        pkg_repl("openmotif","","x86_64");
                        pkg_repl("openmotif22","","x86_64");
                        pkg_repl("device-mapper","","x86_64");
                        pkg_repl("compat-glibc","","x86_64");
                        pkg_repl("popt","","i686");
};

# Atlas request
"/software/packages"=pkg_repl("compat-gcc-34","","x86_64");
"/software/packages"=pkg_repl("compat-gcc-34-c++","","x86_64");
"/software/packages"=pkg_repl("compat-gcc-34-g77","","x86_64");
"/software/packages"=pkg_repl("compat-libstdc++-296","","i686");
"/software/packages"=pkg_repl("ghostscript","","i686");
"/software/packages"=pkg_repl("ghostscript","","x86_64");
"/software/packages"=pkg_repl("giflib","","i686");
"/software/packages"=pkg_repl("cups-libs","","i686");
"/software/packages"=pkg_repl("gnutls","","i686");
"/software/packages"=pkg_repl("libgcrypt","","i686");
"/software/packages"=pkg_repl("libgpg-error","","i686");


# OS errata and site specific updates
# Always reinclude updates
include { "config/os/updates" };

