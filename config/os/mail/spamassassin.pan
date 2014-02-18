unique template config/os/mail/spamassassin;

'/software/packages'=pkg_repl('spamassassin','3.3.1-2.el5','x86_64');
'/software/packages'=pkg_repl('perl-IO-Socket-INET6','2.51-2.fc6','noarch');
'/software/packages'=pkg_repl('perl-IO-Zlib','1.04-4.2.1','noarch');
'/software/packages'=pkg_repl('perl-Socket6','0.19-3.fc6','x86_64');

include { 'config/os/updates' };
