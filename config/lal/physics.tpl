
template config/lal/physics;

include { 'rpms/x_software_development' };
include { 'rpms/development_tools' };	# Required by UI components
include { 'rpms/engineering_and_scientific' };	# GNUplot
include { 'rpms/mysql_client' };
include { 'rpms/sql_client' };

# Include some RPM's for -m32 compatibility (ME)
#include { 'rpms/compat_arch_development' };

# Add pine
"/software/packages"=pkg_repl('alpine','2.00-2.el5',PKG_ARCH_DEFAULT);

# Add APT
#"/software/packages"=pkg_repl("apt","0.5.15cnc6-9.SL",PKG_ARCH_DEFAULT);
 
# Add gv
# by Marec erwan (3/7/07)
"/software/packages"=pkg_repl("gv","3.6.2-2.sl5",PKG_ARCH_DEFAULT);

#
# Add some RPMs not included in any group but required by gLite MW
#'/software/packages' = pkg_repl('tk','8.4.7-2',PKG_ARCH_DEFAULT);
#'/software/packages' = pkg_repl('sharutils','4.2.1-22.2',PKG_ARCH_DEFAULT);
#'/software/packages' = pkg_repl('tkinter','2.3.4-14.4',PKG_ARCH_DEFAULT);
#'/software/packages' = pkg_repl('tix','8.1.4-98',PKG_ARCH_DEFAULT);
#'/software/packages' = pkg_repl('perl-Digest-HMAC','1.01-13','noarch');
#'/software/packages' = pkg_repl('perl-Digest-SHA1','2.07-5',PKG_ARCH_DEFAULT);

# Add XEmacs
include { 'config/os/xemacs' };

# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };



