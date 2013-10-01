# Template to load PHP extensions

unique template config/lal/php_extensions;

variable PHP_VERSION ?= '5.1.6-23.2.el5_3';

"/software/packages"=pkg_repl("php-gd",PHP_VERSION,"x86_64");
"/software/packages"=pkg_repl("php-xml",PHP_VERSION,"x86_64");
"/software/packages"=pkg_repl("libc-client","2007e-11.el6","x86_64");
"/software/packages"=pkg_repl("php-imap",PHP_VERSION,"x86_64");


# Re include RPM updates
include { 'config/os/updates' };


