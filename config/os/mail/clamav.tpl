unique template config/os/mail/clamav;

'/software/packages'=pkg_repl('clamav','0.95.3-46.el5','x86_64');

include { 'config/os/updates' };
