unique template config/os/mail/mailzu;

'/software/packages'=pkg_repl('php','5.3.3-3.el6_1.3','x86_64');
'/software/packages'=pkg_repl('php-cli','5.3.3-3.el6_1.3','x86_64');
'/software/packages'=pkg_repl('php-imap','5.3.3-3.el6_1.3','x86_64');
'/software/packages'=pkg_repl('php-mysql','5.3.3-3.el6_1.3','x86_64');
'/software/packages'=pkg_repl('php-devel','5.3.3-3.el6_1.3','x86_64');
'/software/packages'=pkg_repl('php-pear','1.9.4-4.el6','noarch');
'/software/packages'=pkg_repl('libc-client','2007e-11.el6','x86_64');
'/software/packages'=pkg_repl('php-pear-DB','1.7.13-1.el5.centos','noarch');
'/software/packages'=pkg_repl('php-pear-Mail-Mime','1.4.0-1.el5.centos','noarch');
'/software/packages'=pkg_repl('distcache','1.4.5-14.1','x86_64');
'/software/packages'=pkg_repl('mod_ssl','2.2.15-15.sl6','x86_64');

include { 'config/os/updates' };
