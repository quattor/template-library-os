unique template config/stratuslab/iscsi-target;

'/software/packages'=pkg_repl('scsi-target-utils','1.0.1-3.fc13','x86_64');

include { 'config/os/updates' };
