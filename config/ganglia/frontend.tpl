unique template config/ganglia/frontend;

'/software/packages' = pkg_repl('perl-Readonly','1.03-1.2.el5.rf','noarch');

'/software/packages' = {
  pkg_repl('libconfuse', '2.6-2.el5.rf', 'x86_64');
  pkg_repl('php-gd', '5.1.6-27.el5', 'x86_64');
  pkg_repl('php-common', '5.1.6-27.el5', 'x86_64');
  pkg_repl('rrdtool', '1.4.5-0.20', 'x86_64');
  pkg_repl('rrdtool-perl', '1.4.5-0.20', 'x86_64');
  pkg_repl('ruby','1.8.5-5.el5_4.8','x86_64');
  pkg_repl('ruby-libs','1.8.5-5.el5_4.8','x86_64');
};

include { 'config/os/updates' };
