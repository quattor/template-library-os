unique template config/misc/hepixvmilsubscriber;

'/software/packages' = pkg_repl('python-sqlalchemy','0.5.5-2.1.el6','noarch');

# Reapply updates
include { 'config/os/updates' };
