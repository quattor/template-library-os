unique template config/emi/2.0/ui;

# Add some scientific libraries from OS, remove conflicting and very
# obsolete ones and add some 32-bit versions
include { 'rpms/engineering_and_scientific' };

'/software/packages' = pkg_repl('lapack','3.0-38.el5','i386');
'/software/packages' = pkg_repl('pcre','6.6-6.el5_6.1','i386');
'/software/packages' = pkg_repl('boost','1.33.1-15.el5','i386');
'/software/packages' = pkg_repl('boost-devel','1.33.1-15.el5','i386');
'/software/packages' = pkg_repl('libicu','3.6-5.16.1','i386');

# UI
'/software/packages' = pkg_repl('log4cpp', '1.0-9.el5', PKG_ARCH_GLITE);
'/software/packages' = pkg_repl('libtar', '1.2.11-13.el5', 'x86_64');

# Atlas Requirements
'/software/packages' = pkg_repl('libxml2','2.6.26-2.1.15.el5_8.6','i386');
'/software/packages' = pkg_repl('libxml2-devel','2.6.26-2.1.15.el5_8.6','i386');
'/software/packages' = pkg_repl('libxml2','2.6.26-2.1.15.el5_8.6','x86_64');
'/software/packages' = pkg_repl('libxml2-devel','2.6.26-2.1.15.el5_8.6','x86_64');
'/software/packages' = pkg_repl('blas','3.0-38.el5','i386');
'/software/packages' = pkg_repl('blas-devel','3.0-38.el5','i386');
'/software/packages' = pkg_repl('blas','3.0-38.el5','x86_64');
'/software/packages' = pkg_repl('blas-devel','3.0-38.el5','x86_64');

# Blas dependencies
'/software/packages' = pkg_repl('libgfortran','4.1.2-54.el5','i386');
'/software/packages' = pkg_repl('libgfortran','4.1.2-54.el5','x86_64');

# Required by superb
'/software/packages' = pkg_repl('yum-utils','1.1.16-21.el5','noarch');

# Java dependencies
'/software/packages' = pkg_repl('axis',                       '1.4-4.jpp5',       'noarch');
'/software/packages' = pkg_repl('bcel',                       '5.1-16.jpp5',      'noarch');
'/software/packages' = pkg_repl('bouncycastle',               '1.45-3.jpp6',      'noarch');
'/software/packages' = pkg_repl('geronimo-jaf-1.0.2-api',     '1.2-13.jpp5',      'noarch');
'/software/packages' = pkg_repl('geronimo-javamail-1.3.1-api','1.2-13.jpp5',      'noarch');
'/software/packages' = pkg_repl('geronimo-javamail-1.4-api',  '1.2-13.jpp5',      'noarch');
'/software/packages' = pkg_repl('geronimo-jms-1.1-api',       '1.2-13.jpp5',      'noarch');
'/software/packages' = pkg_repl('geronimo-specs-poms',        '1.2-13.jpp5',      'noarch');
'/software/packages' = pkg_repl('jakarta-commons-cli',        '1.1-1.jpp5',       'noarch');
'/software/packages' = pkg_repl('jakarta-commons-lang',       '2.1-7.jpp5',       'noarch');
'/software/packages' = pkg_repl('jakarta-commons-discovery',  '0.4-6.jpp5',       'noarch');
'/software/packages' = pkg_repl('jakarta-commons-httpclient', '3.0.1-3.jpp5',     'noarch');
'/software/packages' = pkg_repl('jakarta-commons-logging',    '1.1-8.jpp5',       'noarch');
'/software/packages' = pkg_repl('jpackage-utils',             '5.0.0-7.jpp6',     'noarch');
'/software/packages' = pkg_repl('log4j',                      '1.2.14-15.jpp5',   'noarch');
'/software/packages' = pkg_repl('mx4j',                       '3.0.1-9.jpp5',     'noarch');
'/software/packages' = pkg_repl('regexp',                     '1.5-1.jpp5',       'noarch');
'/software/packages' = pkg_repl('wsdl4j',                     '1.6.2-6.jpp5',     'noarch');
'/software/packages' = pkg_repl('xml-commons',                '1.3.04-5.jpp5',    'noarch');
'/software/packages' = pkg_repl('xml-commons-jaxp-1.3-apis',  '1.3.04-5.jpp5',    'noarch');
'/software/packages' = pkg_repl('xml-commons-resolver12',     '1.3.04-5.jpp5',    'noarch');
'/software/packages' = pkg_repl('sun-jaf',                    '1.1-3jpp',         'noarch');
'/software/packages' = pkg_repl('sun-mail',                   '1.4-2jpp',         'noarch');

'/software/packages' = pkg_repl('gnu-crypto-sasl-jdk1.4','2.1.0-2jpp.1',PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('glibmm24',   '2.12.10-1.el5',   'x86_64');
'/software/packages' = pkg_repl('libsigc++20','2.0.18-1.el5',    'x86_64');
'/software/packages' = pkg_repl('log4cpp', '1.0-9.el5', 'x86_64');
'/software/packages' = pkg_repl('glib2-devel','2.12.3-4.el5_3.1','x86_64');
'/software/packages' = pkg_repl('xerces-c',   '2.7.0-8.el5',     'x86_64');
'/software/packages' = pkg_repl('c-ares',  '1.6.0-2.el5','x86_64');
'/software/packages' = pkg_repl('classads','1.0.8-1.el5','x86_64');
'/software/packages' = pkg_repl('libtar','1.2.11-13.el5','x86_64');

# Nordugrid requirements
'/software/packages' = pkg_repl('xmlsec1','1.2.9-8.1.2','x86_64');
'/software/packages' = pkg_repl('xmlsec1-openssl','1.2.9-8.1.2','x86_64');

# GFAL requirements
'/software/packages' = pkg_repl('gsoap','2.7.13-4.el5','i386');
'/software/packages' = pkg_repl('gsoap','2.7.13-4.el5','x86_64');

# XROOTD requirements

# Needed by EMI 2 WN
# Required by the EMI WN
'/software/packages' = pkg_repl('boost141-python','1.41.0-2.el5','x86_64');
'/software/packages' = pkg_repl('e2fsprogs-devel','1.39-35.el5','x86_64');
'/software/packages' = pkg_repl('glibmm24','2.12.10-1.el5','x86_64');
'/software/packages' = pkg_repl('krb5-devel','1.6.1-70.el5','x86_64');
'/software/packages' = pkg_repl('libffi','3.0.5-1.el5','x86_64');
'/software/packages' = pkg_repl('libselinux-devel','1.33.4-5.7.el5','x86_64');
'/software/packages' = pkg_repl('libsigc++20','2.0.18-1.el5','x86_64');
'/software/packages' = pkg_repl('libtool-ltdl','1.5.22-7.el5_4','i386');
'/software/packages' = pkg_repl('openssl-devel','0.9.8e-22.el5_8.4','x86_64');
'/software/packages' = pkg_repl('python26','2.6.8-1.el5','x86_64');
'/software/packages' = pkg_repl('python26-libs','2.6.8-1.el5','x86_64');

# 32bit deep dependencies
'/software/packages' = pkg_repl('bzip2-libs', '1.0.3-6.el5_5', 'i386');
'/software/packages' = pkg_repl('cyrus-sasl-lib', '2.1.22-7.el5_8.1', 'i386');
'/software/packages' = pkg_repl('device-mapper', '1.02.67-2.el5', 'i386');
'/software/packages' = pkg_repl('e2fsprogs-libs', '1.39-33.el5', 'i386');
'/software/packages' = pkg_repl('expat', '1.95.8-11.el5_8', 'i386');
'/software/packages' = pkg_repl('glib2', '2.12.3-4.el5_3.1', 'i386');
'/software/packages' = pkg_repl('glib2-devel', '2.12.3-4.el5_3.1', 'x86_64');
'/software/packages' = pkg_repl('glibc', '2.5-81.el5_8.7', 'i686');
'/software/packages' = pkg_repl('keyutils-libs', '1.2-1.el5', 'i386');
'/software/packages' = pkg_repl('keyutils-libs-devel', '1.2-1.el5', 'x86_64');
'/software/packages' = pkg_repl('krb5-libs', '1.6.1-70.el5', 'i386');
'/software/packages' = pkg_repl('libgcc', '4.1.2-52.el5', 'i386');
'/software/packages' = pkg_repl('libselinux', '1.33.4-5.7.el5', 'i386');
'/software/packages' = pkg_repl('libsepol', '1.15.2-3.el5', 'i386');
'/software/packages' = pkg_repl('libsepol-devel', '1.15.2-3.el5', 'x86_64');
'/software/packages' = pkg_repl('libstdc++', '4.1.2-52.el5', 'i386');
'/software/packages' = pkg_repl('openldap', '2.3.43-25.el5', 'i386');
'/software/packages' = pkg_repl('openssl', '0.9.8e-22.el5_8.4', 'i686');
'/software/packages' = pkg_repl('zlib', '1.2.3-4.el5', 'i386');

# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };
