unique template config/os/mail/razor;

'/software/packages'=pkg_repl('perl-Razor-Agent','2.84-1.el5.rf','x86_64');
'/software/packages'=pkg_repl('razor-agents','2.84-1.el5.rf','x86_64');

include { 'config/os/updates' };
