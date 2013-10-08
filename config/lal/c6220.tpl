unique template config/lal/c6220;

###################################
# Packages needed for BIOS update #
###################################
'/software/packages'= {
  pkg_repl('compat-libstdc++-33','3.2.3-69.el6',     'i686');
  pkg_repl('glibc',              '2.12-1.80.el6_3.5','i686');
  pkg_repl('libgcc',             '4.4.6-4.el6',      'i686');
  pkg_repl('libstdc++',          '4.4.6-4.el6',      'i686');
  pkg_repl('libxml2',            '2.7.6-12.el6_4.1', 'i686');
  pkg_repl('nss-softokn-freebl', '3.12.9-11.el6',    'i686');
  pkg_repl('zlib',               '1.2.3-29.el6',     'i686');
};

include { 'config/os/updates' };
