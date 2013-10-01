unique template config/os/mail/postfix;

'/software/packages'=pkg_del('sendmail');
'/software/packages'=pkg_repl('postfix','2.3.3-2.1.el5_2','x86_64');

'/software/packages'=pkg_repl('perl-Archive-Tar','1.30-1.fc6','noarch');
'/software/packages'=pkg_repl('perl-Net-DNS','0.59-3.el5','x86_64');
'/software/packages'=pkg_repl('perl-Digest-SHA1','2.11-1.2.1','x86_64');
'/software/packages'=pkg_repl('perl-Net-IP','1.25-2.fc6','noarch');

'/software/packages'=pkg_repl('cyrus-sasl-md5','2.1.22-5.el5','x86_64');

'/software/packages'=pkg_repl('pam_imap','0.3.8-2.el5.ircam','x86_64');

include { 'config/os/updates' };
