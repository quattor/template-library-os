unique template config/os/vsftpd;

"/software/packages"=pkg_repl("vsftpd","2.2.2-6.el6_0.1","x86_64");

include { 'config/os/updates' };
