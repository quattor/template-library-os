unique template config/glite/3.2/atlas-sl4;

#'/software/packages'=pkg_repl('compat-gcc-34','3.4.6-4','x86_64');
#'/software/packages'=pkg_repl('compat-gcc-34-c++','3.4.6-4','x86_64');
#'/software/packages'=pkg_repl('compat-gcc-34-g77','3.4.6-4','x86_64');
#'/software/packages'=pkg_repl('compat-libgcc-296','2.96-138','i386');
#'/software/packages'=pkg_repl('compat-libstdc++-296','2.96-138','i386');
#'/software/packages'=pkg_repl('libgfortran','4.1.2-44.el5','i386');
#'/software/packages'=pkg_repl('ghostscript','8.15.2-9.4.el5','i386');
#'/software/packages'=pkg_repl('libXpm','3.5.5-3','i386');
#'/software/packages'=pkg_repl('glibc-devel','2.5-34','i386');
#'/software/packages'=pkg_repl('giflib','4.1.3-7.1.el5.1','i386');
#'/software/packages'=pkg_repl('compat-db','4.2.52-5.1','i386');
#'/software/packages'=pkg_repl('cups-libs','1.3.7-8.el5','i386');
#'/software/packages'=pkg_repl('gnutls','1.4.1-3.el5_2.1','i386');
#'/software/packages'=pkg_repl('libgcrypt','1.2.4-1.el5','i386');
#'/software/packages'=pkg_repl('libgpg-error','1.4-2','i386');

include { 'config/os/updates' };
