unique template config/emi/2.0/wms;

# Add dependency for condor-lcg
'/software/packages' = if(exists(SELF['glibc'])) {
      pkg_repl('glibc',unescape(key(SELF[escape('glibc')], 0)),'i686');
} else {
    SELF;
};

# edg-mkgridmap dependencies
'/software/packages'=pkg_repl('perl-DateManip','5.44-1.2.1','noarch');
'/software/packages'=pkg_repl('perl-TermReadKey','2.30-5.el5','x86_64');
'/software/packages'=pkg_repl('perl-XML-DOM','1.44-2.el5','noarch');
'/software/packages'=pkg_repl('perl-XML-RegExp','0.03-2.el5','noarch');

# Other dependencies (suggested by checkdeps/YUM)
'/software/packages'=pkg_repl('antlr','2.7.6-4jpp.2','x86_64');
'/software/packages'=pkg_repl('axis','1.2.1-2jpp.6','x86_64');
'/software/packages'=pkg_repl('c-ares','1.6.0-5.el5','x86_64');
'/software/packages'=pkg_repl('classpathx-jaf','1.0-9jpp.1','x86_64');
'/software/packages'=pkg_repl('classpathx-mail','1.1.1-4jpp.2','x86_64');
'/software/packages'=pkg_repl('distcache','1.4.5-14.1','x86_64');
'/software/packages'=pkg_repl('gjdoc','0.7.7-12.el5','x86_64');
'/software/packages'=pkg_repl('jakarta-commons-codec','1.3-7jpp.2','x86_64');
'/software/packages'=pkg_repl('jakarta-commons-discovery','0.3-4jpp.1','x86_64');
'/software/packages'=pkg_repl('jakarta-commons-logging','1.0.4-6jpp.1','x86_64');
'/software/packages'=pkg_repl('jakarta-commons-lang','2.1-5jpp.1','x86_64');
'/software/packages'=pkg_repl('jakarta-commons-httpclient','3.0-7jpp.1','x86_64');
'/software/packages'=pkg_repl('java-1.4.2-gcj-compat','1.4.2.0-40jpp.115','x86_64');
'/software/packages'=pkg_repl('log4cpp','1.0-9.el5','x86_64');
'/software/packages'=pkg_repl('log4j','1.2.13-3jpp.2','x86_64');
'/software/packages'=pkg_repl('httpd','2.2.3-63.sl5.3','x86_64');
'/software/packages'=pkg_repl('mod_ssl','2.2.3-63.sl5.1','x86_64');
'/software/packages'=pkg_repl('perl-DBD-MySQL','3.0007-2.el5','x86_64');
'/software/packages'=pkg_repl('perl-HTML-Parser', '3.55-1.fc6', 'x86_64');
'/software/packages'=pkg_repl('perl-HTML-Tagset', '3.10-2.1.1', 'noarch');
'/software/packages'=pkg_repl('wsdl4j','1.5.2-4jpp.1','x86_64');

# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };

