unique template config/emi/2.0/ui;

'/software/packages' = pkg_repl('uberftp','2.4-5.el5','x86_64');

###########
# Myproxy #
###########
'/software/packages' = pkg_repl('myproxy',     '5.5-1.el5','x86_64');
'/software/packages' = pkg_repl('myproxy-libs','5.5-1.el5','x86_64');

##################
# Python 2.4/2.6 #
##################
'/software/packages' = pkg_repl('python-fpconst','0.7.3-3.el5.1','noarch');
'/software/packages' = pkg_repl('python26',      '2.6.5-6.el5',  'x86_64');
'/software/packages' = pkg_repl('libffi',        '3.0.5-1.el5',  'x86_64');
'/software/packages' = pkg_repl('python26-libs', '2.6.5-6.el5',  'x86_64');
'/software/packages' = pkg_repl('boost-python',  '1.39.0-9.el5', 'x86_64');

##############
# CGSI-gSOAP #
##############
'/software/packages' = pkg_repl('gsoap',     '2.7.13-4.el5', 'x86_64');
'/software/packages' = pkg_repl('gsoap',     '2.7.13-4.el5', 'i386');
'/software/packages' = pkg_repl('CGSI-gSOAP','1.3.4.2-2.el5','x86_64');
'/software/packages' = pkg_repl('CGSI-gSOAP','1.3.4.2-2.el5','i386');
'/software/packages' = pkg_repl('SOAPpy',    '0.11.6-12.el5','noarch');

##########
# Globus #
##########
'/software/packages' = pkg_repl('openssl-devel',           '0.9.8e-12.el5_4.6', 'x86_64');
'/software/packages' = pkg_repl('openssl',                 '0.9.8e-12.el5_4.6', 'i686');
'/software/packages' = pkg_repl('openssl-devel',           '0.9.8e-12.el5_4.6', 'i386');
'/software/packages' = pkg_repl('krb5-devel',              '1.6.1-36.el5_5.2','x86_64');
'/software/packages' = pkg_repl('e2fsprogs-devel',         '1.39-23.el5',     'x86_64');
'/software/packages' = pkg_repl('keyutils-libs-devel',     '1.2-1.el5',       'x86_64');
'/software/packages' = pkg_repl('libselinux-devel',        '1.33.4-5.5.el5',  'x86_64');
'/software/packages' = pkg_repl('libsepol-devel',          '1.15.2-3.el5',    'x86_64');
'/software/packages' = pkg_repl('globus-gass-copy-progs',  '8.6-1.el5',       'x86_64');
'/software/packages' = pkg_repl('globus-gass-copy',        '8.6-1.el5',       'x86_64');
'/software/packages' = pkg_repl('globus-gass-copy',        '8.6-1.el5',       'i386');
'/software/packages' = pkg_repl('globus-ftp-client',       '7.4-1.el5',       'x86_64');
'/software/packages' = pkg_repl('globus-ftp-client',       '7.4-1.el5',       'i386');
'/software/packages' = pkg_repl('globus-openssl',          '5.1-2.el5',       'x86_64');
'/software/packages' = pkg_repl('globus-openssl-module',   '3.2-1.el5',       'i386');
'/software/packages' = pkg_repl('globus-xio-popen-driver', '2.3-1.el5',       'x86_64');
'/software/packages' = pkg_repl('globus-xio-popen-driver', '2.3-1.el5',       'i386');
'/software/packages' = pkg_repl('globus-gass-transfer',    '7.2-1.el5',       'x86_64');
'/software/packages' = pkg_repl('globus-gass-transfer',    '7.2-1.el5',       'i386');
'/software/packages' = pkg_repl('globus-common',           '14.7-1.el5',      'i386');
'/software/packages' = pkg_repl('globus-gsi-sysconfig',    '5.3-1.el5',       'i386');
'/software/packages' = pkg_repl('globus-gsi-openssl-error','2.1-2.el5',       'i386');
'/software/packages' = pkg_repl('globus-gsi-proxy-ssl',    '4.1-2.el5',       'i386');
'/software/packages' = pkg_repl('globus-gsi-proxy-core',   '6.2-1.el5',       'i386');
'/software/packages' = pkg_repl('globus-callout',          '2.2-1.el5',       'i386');
'/software/packages' = pkg_repl('globus-gsi-callback',     '4.3-1.el5',       'i386');
'/software/packages' = pkg_repl('globus-rls-client',       '5.2-6.el5',       'x86_64');
'/software/packages' = pkg_repl('globus-rls-client',       '5.2-6.el5',       'i386');
'/software/packages' = pkg_repl('globus-gssapi-gsi',       '10.2-2.el5',      'i386');
'/software/packages' = pkg_repl('globus-gss-assist',       '8.6-1.el5',       'i386');
'/software/packages' = pkg_repl('globus-gsi-credential',   '5.1-2.el5',       'i386');
'/software/packages' = pkg_repl('globus-gsi-cert-utils',   '8.3-1.el5',       'i386');
'/software/packages' = pkg_repl('globus-ftp-control',      '4.4-1.el5',       'i386');
'/software/packages' = pkg_repl('globus-xio',              '3.3-1.el5',       'i386');
'/software/packages' = pkg_repl('globus-gssapi-error',     '4.1-2.el5',       'i386');
'/software/packages' = pkg_repl('globus-io',               '9.3-1.el5',       'i386');
'/software/packages' = pkg_repl('globus-rsl',              '9.1-2.el5',       'x86_64');


##############
# Java stuff #
##############
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


##########
# XMLsec #
##########
'/software/packages' = pkg_repl('xmlsec1',        '1.2.9-8.1.1','x86_64');
'/software/packages' = pkg_repl('xmlsec1-openssl','1.2.9-8.1.1','x86_64');

########################
# 32 bits dependencies #
########################
'/software/packages' = pkg_repl('glibc',              '2.5-49',            'i686');
'/software/packages' = pkg_repl('glib2',              '2.12.3-4.el5_3.1',  'i386');
'/software/packages' = pkg_repl('openldap',           '2.3.43-12.el5',     'i386');
'/software/packages' = pkg_repl('e2fsprogs-libs',     '1.39-23.el5',       'i386');
'/software/packages' = pkg_repl('libgcc',             '4.1.2-48.el5',      'i386');
'/software/packages' = pkg_repl('libstdc++',          '4.1.2-48.el5',      'i386');
'/software/packages' = pkg_repl('libtool-ltdl',       '1.5.22-7.el5_4',    'i386');
'/software/packages' = pkg_repl('expat',              '1.95.8-8.3.el5_4.2','i386');
'/software/packages' = pkg_repl('cyrus-sasl-lib',     '2.1.22-5.el5_4.3',  'i386');
'/software/packages' = pkg_repl('device-mapper',      '1.02.39-1.el5',     'i386');
'/software/packages' = pkg_repl('zlib',               '1.2.3-3',           'i386');
'/software/packages' = pkg_repl('libsepol',           '1.15.2-3.el5',      'i386');
'/software/packages' = pkg_repl('krb5-libs',          '1.6.1-36.el5_5.2',  'i386');
'/software/packages' = pkg_repl('krb5-devel',         '1.6.1-36.el5_5.2',  'i386');
'/software/packages' = pkg_repl('keyutils-libs-devel','1.2-1.el5',         'i386');
'/software/packages' = pkg_repl('keyutils-libs',      '1.2-1.el5',         'i386');
'/software/packages' = pkg_repl('libselinux',         '1.33.4-5.5.el5',    'i386');

include { 'config/os/updates' };
