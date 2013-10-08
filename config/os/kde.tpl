template config/os/kde;

include { 'rpms/kde_desktop' };

'/software/packages'=pkg_repl('festvox-slt-arctic-hts','0.20061229-18.el6','noarch');

# Re include RPM updates
include { 'config/os/updates' };


