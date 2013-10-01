unique template config/glite/3.2/atlas-sl4;

#'/software/packages'=pkg_repl('compat-gcc-34','3.4.6-4.1','x86_64');
#'/software/packages'=pkg_repl('compat-gcc-34-c++','3.4.6-4.1','x86_64');
#'/software/packages'=pkg_repl('compat-gcc-34-g77','3.4.6-4.1','x86_64');
#'/software/packages'=pkg_repl('compat-libgcc-296','2.96-138','i386');
#'/software/packages'=pkg_repl('compat-libstdc++-296','2.96-138','i386');
#'/software/packages'=pkg_repl('libgfortran','4.1.2-52.el5','i386');
#'/software/packages'=pkg_repl('ghostscript','8.70-14.el5','i386');
#'/software/packages'=pkg_repl('libXpm','3.5.5-3','i386');
#'/software/packages'=pkg_repl('glibc-devel','2.5-81.el5_8.1','i386');
#'/software/packages'=pkg_repl('giflib','4.1.3-7.3.3.el5','i386');
#'/software/packages'=pkg_repl('compat-db','4.2.52-5.1','i386');
#'/software/packages'=pkg_repl('cups-libs','1.3.7-30.el5','i386');
#'/software/packages'=pkg_repl('gnutls','1.4.1-7.el5_8.2','i386');
#'/software/packages'=pkg_repl('libgcrypt','1.4.4-5.el5','i386');
#'/software/packages'=pkg_repl('libgpg-error','1.4-2','i386');

include { 'config/os/updates' };
