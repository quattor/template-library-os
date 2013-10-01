unique template config/stratuslab/iscsi-target;

'/software/packages'=pkg_repl('scsi-target-utils','1.0.8-0.el5_6.1','x86_64');

include { 'config/os/updates' };
