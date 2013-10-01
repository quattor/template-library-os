unique template config/os/dovecot;

'/software/packages'=pkg_repl('dovecot','2.0.9-2.el6_1.1','x86_64');
'/software/packages'=pkg_repl('postfix','2.6.6-2.2.el6_1','x86_64');

'/software/packages'=pkg_del('sendmail');

include { 'config/os/updates' };
