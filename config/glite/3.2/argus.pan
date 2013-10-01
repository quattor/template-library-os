unique template config/glite/3.2/argus;

'/software/packages' = pkg_repl('perl-DateManip', '5.44-1.2.1', 'noarch');
'/software/packages' = pkg_repl('perl-TermReadKey','2.30-5.el5',PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-XML-DOM', '1.44-2.el5.rf', 'noarch');
'/software/packages' = pkg_repl('perl-XML-RegExp', '0.03-1.2.el5.rf', 'noarch');

include { 'config/os/updates' };
