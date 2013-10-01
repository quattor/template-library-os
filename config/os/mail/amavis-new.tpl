unique template config/os/mail/amavis-new;

'/software/packages'=pkg_repl('amavisd-new','2.5.4-1.el5.rf','x86_64');
'/software/packages'=pkg_repl('arc','5.21o-1.el5.rf','x86_64');
'/software/packages'=pkg_repl('cabextract','1.2-1.el5.rf','x86_64');
'/software/packages'=pkg_repl('freeze','2.5.0-1.2.el5.rf','x86_64');
'/software/packages'=pkg_repl('lha','1.14i-19.2.2.el5.rf','x86_64');
'/software/packages'=pkg_repl('lzop','1.01-2.el5.rf','x86_64');
'/software/packages'=pkg_repl('lzo','1.08-4.2.el5.rf','x86_64');
'/software/packages'=pkg_repl('ncompress','4.2.4-47','x86_64');
'/software/packages'=pkg_repl('nomarch','1.4-1.el5.rf','x86_64');
'/software/packages'=pkg_repl('perl-BerkeleyDB','0.33-1.el5.rf','x86_64');
'/software/packages'=pkg_repl('perl-Convert-TNEF','0.17-3.2.el5.rf','noarch');
'/software/packages'=pkg_repl('perl-Convert-UUlib','1.051-1.2.el5.rf','x86_64');
'/software/packages'=pkg_repl('perl-Digest-HMAC','1.01-15','noarch');
'/software/packages'=pkg_repl('perl-IO-stringy','2.110-1.2.el5.rf','noarch');
'/software/packages'=pkg_repl('perl-MIME-tools','5.420-2.el5.rf','noarch');
'/software/packages'=pkg_repl('perl-Net-Server','0.97-1.el5.rf','noarch');
'/software/packages'=pkg_repl('perl-Unix-Syslog','1.0-1.el5.rf','x86_64');
'/software/packages'=pkg_repl('perl-MailTools','1.77-2.el5','noarch');
'/software/packages'=pkg_repl('perl-Convert-BinHex','1.119-2.2.el5.rf','noarch');
'/software/packages'=pkg_repl('ripole','0.2.0-1.2.el5.rf','x86_64');
'/software/packages'=pkg_repl('unarj','2.63-0.a.2.el5.rf','x86_64');
'/software/packages'=pkg_repl('unrar','3.7.4-1.el5.rf','x86_64');
'/software/packages'=pkg_repl('zoo','2.10-2.2.el5.rf','x86_64');
'/software/packages'=pkg_repl('mysql-server','5.0.77-3.el5','x86_64');

include { 'config/os/updates' };
