unique template config/glite/3.2/vobox;

"/software/packages"=pkg_repl("boost","1.33.1-10.el5",PKG_ARCH_GLITE);
"/software/packages"=pkg_repl("guile","1.8.0-8.20060831cvs",PKG_ARCH_GLITE);
"/software/packages"=pkg_repl("gv","3.6.2-2.sl5",PKG_ARCH_DEFAULT);
#"/software/packages"=pkg_repl("ggv","2.8.0-1",PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-Compress-Raw-Bzip2', '2.021-1.el5.rf', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-Compress-Raw-Zlib', '2.021-1.el5.rf', 'x86_64');
'/software/packages' = pkg_repl('perl-Crypt-SSLeay', '0.57-1.el5.rf', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-Date-Manip', '5.54-2.el5.rf', 'noarch');
'/software/packages' = pkg_repl('perl-HTML-Parser', '3.62-1.el5.rf', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-HTML-Tagset', '3.20-1.el5.rf', 'noarch');
#'/software/packages' = pkg_repl('perl-IO-Compress', '2.021-1.el5.rf', 'noarch');
'/software/packages' = pkg_repl('perl-XML-DOM', '1.44-2.el5.rf', 'noarch');
'/software/packages' = pkg_repl('perl-XML-Parser', '2.36-1.el5.rf', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-XML-RegExp', '0.03-1.2.el5.rf', 'noarch');
'/software/packages'=pkg_repl('perl-TermReadKey','2.30-3.el5.rf',PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('python-fpconst', '0.7.3-1.el5.rf', 'noarch');
'/software/packages' = pkg_repl('python-soap', '0.11.6-1.el5.rf', 'noarch');


# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };

