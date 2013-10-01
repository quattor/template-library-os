unique template config/os/php;

'/software/packages'=pkg_repl('php','5.1.6-27.el5','x86_64');
'/software/packages'=pkg_repl('php-cli','5.1.6-27.el5','x86_64');

include { 'config/os/updates' };
