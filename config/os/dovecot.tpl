unique template config/os/dovecot;

'/software/packages'=pkg_repl('dovecot','2.0.9-2.el6','x86_64');
'/software/packages'=pkg_repl('postfix','2.6.6-2.1.el6_0','x86_64');

'/software/packages'=pkg_del('sendmail');

include { 'config/os/updates' };
