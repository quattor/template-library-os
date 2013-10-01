unique template config/os/mail/spf;

'/software/packages'=pkg_repl('perl-Mail-SPF-Query','1.999.1-2.el5.rf','noarch');
'/software/packages'=pkg_repl('perl-Net-CIDR-Lite','0.20-1.2.el5.rf','noarch');
'/software/packages'=pkg_repl('perl-Sys-Hostname-Long','1.4-1.2.el5.rf','noarch');

include { 'config/os/updates' };
