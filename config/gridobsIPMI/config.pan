unique template config/gridobsIPMI/config;

'/software/packages'=pkg_repl('perl-JSON','2.17-1.el5','noarch');
'/software/packages'=pkg_repl('perl-Net-STOMP-Client','1.7-1.el5','noarch');
'/software/packages'=pkg_repl('perl-Proc-PID-File','1.27-1.el5','noarch');

include { 'config/os/updates' };
