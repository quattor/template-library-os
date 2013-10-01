unique template config/lal/glite_ui;

# Force i386 architecture until x86_64 distribution is ready
variable PKG_ARCH_GLITE = 'i386';


#
# Add some RPMs normally part of SLC but not included in any group in SL
#

'/software/packages' = pkg_repl('perl-SOAP-Lite','0.69-1.el4.rf','noarch');
# Dependencies for perl-SOAP-Lite
'/software/packages'=pkg_repl('perl-Authen-SASL','2.10-1.el4.rf','noarch');
'/software/packages'=pkg_repl('perl-IO-Socket-SSL','1.05-1.el4.rf','noarch');
'/software/packages'=pkg_repl('perl-Net-Jabber','2.0-1.2.el4.rf','noarch');
'/software/packages'=pkg_repl('perl-MIME-Lite','3.01-2.2.el4.rf','noarch');
'/software/packages'=pkg_repl('perl-GSSAPI','0.23-1.el4.rf',PKG_ARCH_GLITE);
'/software/packages'=pkg_repl('perl-Net-SSLeay','1.25-3.2.el4.rf',PKG_ARCH_GLITE);
'/software/packages'=pkg_repl('perl-Net-XMPP','1.0-1.2.el4.rf','noarch');
'/software/packages'=pkg_repl('perl-XML-Stream','1.22-1.2.el4.rf','noarch');

'/software/packages' = pkg_repl('perl-Digest-HMAC','1.01-13','noarch');
'/software/packages' = pkg_repl('perl-Digest-SHA1','2.07-5',PKG_ARCH_DEFAULT);

# Required by edg-job-xxx commands
'/software/packages' = pkg_repl('tk','8.4.7-2',PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('tkinter','2.3.4-14.3',PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('tix','8.1.4-98',PKG_ARCH_DEFAULT);

# May be useful
'/software/packages' = pkg_repl('sharutils','4.2.1-22.2',PKG_ARCH_DEFAULT);

#May fix some ui issue
'/software/packages' = pkg_repl('ORBit','0.5.17-14','i386');
'/software/packages' = pkg_repl('itcl','3.2-92.4','i386');
'/software/packages' = pkg_repl('curl-compat-7.10.6-6','1.0.0-1','i386');
'/software/packages' = pkg_repl('compat-libcom_err','1.0-5','i386');

# Site specific updates
# Always reinclude updates
include { 'config/os/updates' };





