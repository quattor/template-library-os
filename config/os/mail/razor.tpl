unique template config/os/mail/razor;

'/software/packages'=pkg_repl('perl-Razor-Agent','2.84-1.el5.rf','i386');
'/software/packages'=pkg_repl('razor-agents','2.84-1.el5.rf','i386');

include { 'config/os/updates' };
