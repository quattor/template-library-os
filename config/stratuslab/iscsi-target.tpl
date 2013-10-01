unique template config/stratuslab/iscsi-target;

'/software/packages'=pkg_repl('scsi-target-utils','1.0.14-2.el5','x86_64');

include { 'config/os/updates' };
