# Template to add update RPMs to base configuration

template rpms/errata/20110110-fix;

# Ensure the right version of Java (as specified by
# JAVA_JDK_DEFAULT_VERSION) is used, when defined.
"/software/packages"= if ( is_defined(JAVA_JDK_DEFAULT_VERSION) ) {
                        pkg_ronly("jdk",JAVA_JDK_DEFAULT_VERSION+"-fcs",PKG_ARCH_JAVA);
                      } else {
                        SELF;
                      };

# New in errata but required by some other installed RPMs or replacing
# other ones
'/software/packages'=pkg_del('seamonkey-nss');
'/software/packages'=pkg_repl('nss','3.12.8-1.el4','i386');
'/software/packages'=pkg_repl('nss','3.12.8-1.el4','x86_64');
'/software/packages'=pkg_del('seamonkey-nspr');
'/software/packages'=pkg_repl('nspr','4.8.6-1.el4','i386');
'/software/packages'=pkg_repl('nspr','4.8.6-1.el4','x86_64');
'/software/packages'=pkg_repl('libsmi','0.4.5-5.el4','x86_64');

# Required by firefox
'/software/packages'=pkg_repl('evolution28-atk','1.12.2-4.el4',PKG_ARCH_DEFAULT); 
'/software/packages'=pkg_repl('evolution28-cairo','1.2.4-6.el4',PKG_ARCH_DEFAULT);
'/software/packages'=pkg_repl('evolution28-glib2','2.12.3-6.el4',PKG_ARCH_DEFAULT);
'/software/packages'=pkg_repl('evolution28-gtk2','2.10.4-22.el4',PKG_ARCH_DEFAULT);
'/software/packages'=pkg_repl('evolution28-pango','1.14.9-13.el4_8',PKG_ARCH_DEFAULT);
