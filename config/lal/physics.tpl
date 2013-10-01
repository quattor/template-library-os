
template config/lal/physics;

include { 'rpms/scientific' };	# GNUplot
include { 'rpms/mysql_client' };
#include { 'rpms/sql_client' };

# Include some RPM's for -m32 compatibility (ME)
#include { 'rpms/compat_arch_development' };

# Add pine
"/software/packages"=pkg_repl('alpine','2.02-2.el6',PKG_ARCH_DEFAULT);


#
# Add some RPMs not included in any group but required by gLite MW
#'/software/packages' = pkg_repl('tk','8.5.7-5.el6',PKG_ARCH_DEFAULT);
#'/software/packages' = pkg_repl('sharutils','4.7-6.1.el6',PKG_ARCH_DEFAULT);
#'/software/packages' = pkg_repl('tkinter','2.6.6-29.el6',PKG_ARCH_DEFAULT);
#'/software/packages' = pkg_repl('tix','8.4.3-5.el6',PKG_ARCH_DEFAULT);
#'/software/packages' = pkg_repl('perl-Digest-HMAC','1.01-22.el6','noarch');
#'/software/packages' = pkg_repl('perl-Digest-SHA1','2.12-2.el6',PKG_ARCH_DEFAULT);

# Add XEmacs
#include { 'config/os/xemacs' };

# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };



