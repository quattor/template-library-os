unique template config/os/php;

'/software/packages'=pkg_repl('php','5.1.6-27.el5','i386');
'/software/packages'=pkg_repl('php-cli','5.1.6-27.el5','i386');

include { 'config/os/updates' };
