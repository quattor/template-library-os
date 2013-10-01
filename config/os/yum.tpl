unique template config/os/yum;


'/software/packages' = pkg_repl('yum','3.2.19-3','noarch');
'/software/packages' = pkg_repl('createrepo','0.9.5-2','noarch');

# Re include RPM updates
include { 'config/os/updates' };


