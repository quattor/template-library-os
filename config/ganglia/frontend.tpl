unique template config/ganglia/frontend;

'/software/packages' = {
  pkg_repl('libconfuse', '2.6-2.el6.rf', 'x86_64');
  pkg_repl('php', '5.3.3-3.el6', 'x86_64');
  pkg_repl('php-cli', '5.3.3-3.el6', 'x86_64');
  pkg_repl('php-gd', '5.3.3-3.el6', 'x86_64');
  pkg_repl('php-common', '5.3.3-3.el6', 'x86_64');
  pkg_repl('rrdtool', '1.3.8-6.el6', 'x86_64');
  pkg_repl('rrdtool-perl', '1.3.8-6.el6', 'x86_64');
  pkg_repl('ruby','1.8.7.352-3.el6','x86_64');
  pkg_repl('ruby-libs','1.8.7.352-3.el6','x86_64');
};

include { 'config/os/updates' };
