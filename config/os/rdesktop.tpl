unique template config/os/rdesktop;

'/software/packages' = pkg_repl('rdesktop','1.6.0-8.el6','x86_64');

# Dependencies
"/software/packages"=pkg_repl("libao-devel","0.8.8-7.1.el6","x86_64");
"/software/packages"=pkg_repl("pcsc-lite","1.5.2-6.el6","x86_64");
"/software/packages"=pkg_repl("pcsc-lite-libs","1.5.2-6.el6","x86_64");
"/software/packages"=pkg_repl("pcsc-lite-openct","0.6.19-4.el6","x86_64");
"/software/packages"=pkg_repl("openct","0.6.19-4.el6","x86_64");
"/software/packages"=pkg_repl("ctapi-common","1.1-6.1.el6","x86_64");


# Re include RPM updates
include { 'config/os/updates' };

