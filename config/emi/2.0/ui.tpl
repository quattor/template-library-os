unique template config/emi/2.0/ui;

# Add some scientific libraries from OS, remove conflicting and very
# obsolete ones and add some 32-bit versions
include { 'rpms/engineering_and_scientific' };

# Engineering & Scientific dep
"/software/packages"=pkg_repl('device-mapper-multipath-libs','0.4.9-56.el6','x86_64');

include { 'rpms/network_file_system_client' };

"/software/packages"=pkg_repl("lapack","3.2.1-4.el6",    "i686");
"/software/packages"=pkg_repl("pcre",  "7.8-4.el6",      "i686");
"/software/packages"=pkg_repl("libicu","4.2.1-9.1.el6_2","i686");
"/software/packages"=pkg_repl("PyXML", "0.8.4-19.el6",   "x86_64");

# UI
'/software/packages'=pkg_repl('log4cpp',                 '1.0-9.el5',         PKG_ARCH_GLITE);
"/software/packages"=pkg_repl("libtar",                  "1.2.11-17.el6",     "x86_64");
"/software/packages"=pkg_repl("redhat-lsb",              "4.0-3.el6",         "x86_64");
"/software/packages"=pkg_repl("redhat-lsb-printing",     "4.0-3.el6",         "x86_64");
"/software/packages"=pkg_repl("redhat-lsb-graphics",     "4.0-3.el6",         "x86_64");
'/software/packages'=pkg_repl('openldap-clients',        "2.4.23-26.el6",     "x86_64");
'/software/packages'=pkg_repl('gettext',                 '0.17-16.el6',       'x86_64');
'/software/packages'=pkg_repl('cvs',                     '1.11.23-11.el6_2.1','x86_64');
'/software/packages'=pkg_repl('patch',                   '2.6-6.el6',         'x86_64');
'/software/packages'=pkg_repl('foomatic',                '4.0.4-1.el6_1.1',   'x86_64');
'/software/packages'=pkg_repl('foomatic-db',             '4.0-7.20091126.el6','noarch');
'/software/packages'=pkg_repl('foomatic-db-filesystem',  '4.0-7.20091126.el6','noarch');
'/software/packages'=pkg_repl('foomatic-db-ppds',        '4.0-7.20091126.el6','noarch');
'/software/packages'=pkg_repl('libXxf86vm',              '1.1.0-1.el6',       'x86_64');
'/software/packages'=pkg_repl('mesa-dri-drivers',        '7.11-5.el6',        'x86_64');
'/software/packages'=pkg_repl('mesa-libGL',              '7.11-5.el6',        'x86_64');
'/software/packages'=pkg_repl('mesa-libGLU',             '7.11-5.el6',        'x86_64');
'/software/packages'=pkg_repl('phonon-backend-gstreamer','4.6.2-24.el6',      'x86_64');
'/software/packages'=pkg_repl('qt',                      '4.6.2-24.el6',      'x86_64');
'/software/packages'=pkg_repl('qt3',                     '3.3.8b-30.el6',     'x86_64');
'/software/packages'=pkg_repl('qt-sqlite',               '4.6.2-24.el6',      'x86_64');
'/software/packages'=pkg_repl('qt-x11',                  '4.6.2-24.el6',      'x86_64');

# Boost is required by a lot of component
'/software/packages'=pkg_repl('boost',                '1.41.0-11.el6_1.2','x86_64');
'/software/packages'=pkg_repl('boost-python',         '1.41.0-11.el6_1.2','x86_64');
'/software/packages'=pkg_repl('boost-regex',          '1.41.0-11.el6_1.2','x86_64');
'/software/packages'=pkg_repl('boost-iostreams',      '1.41.0-11.el6_1.2','x86_64');
'/software/packages'=pkg_repl('boost-program-options','1.41.0-11.el6_1.2','x86_64');
'/software/packages'=pkg_repl('boost-filesystem',     '1.41.0-11.el6_1.2','x86_64');
'/software/packages'=pkg_repl('boost-serialization',  '1.41.0-11.el6_1.2','x86_64');
'/software/packages'=pkg_repl('boost-system',         '1.41.0-11.el6_1.2','x86_64');
'/software/packages'=pkg_repl('boost-thread',         '1.41.0-11.el6_1.2','x86_64');
'/software/packages'=pkg_repl('boost-date-time',      '1.41.0-11.el6_1.2','x86_64');
'/software/packages'=pkg_repl('boost-graph',          '1.41.0-11.el6_1.2','x86_64');
'/software/packages'=pkg_repl('boost-signals',        '1.41.0-11.el6_1.2','x86_64');
'/software/packages'=pkg_repl('boost-test',           '1.41.0-11.el6_1.2','x86_64');
'/software/packages'=pkg_repl('boost-wave',           '1.41.0-11.el6_1.2','x86_64');

# glite-wms-ui-api-python
'/software/packages'=pkg_repl('swig','1.3.40-6.el6','x86_64');

# lcg-infosite
'/software/packages'=pkg_repl('perl-LDAP',                 '0.40-1.el6','noarch');
'/software/packages'=pkg_repl('perl-Convert-ASN1',         '0.22-1.el6','noarch');
'/software/packages'=pkg_repl('perl-XML-SAX',              '0.96-7.el6','noarch');
'/software/packages'=pkg_repl('perl-XML-SAX-Writer',       '0.50-8.el6','noarch');
'/software/packages'=pkg_repl('perl-XML-LibXML',           '1.70-5.el6','x86_64');
'/software/packages'=pkg_repl('perl-XML-NamespaceSupport', '1.10-3.el6','noarch');
'/software/packages'=pkg_repl('perl-Text-Iconv',           '1.7-6.el6', 'x86_64');
'/software/packages'=pkg_repl('perl-XML-Filter-BufferText','1.01-8.el6','noarch');

# Atlas Requirements
"/software/packages"=pkg_repl("libxml2",      "2.7.6-4.el6_2.4","i686");
"/software/packages"=pkg_repl("libxml2-devel","2.7.6-4.el6_2.4","i686");
"/software/packages"=pkg_repl("libxml2",      "2.7.6-4.el6_2.4","x86_64");
"/software/packages"=pkg_repl("libxml2-devel","2.7.6-4.el6_2.4","x86_64");
"/software/packages"=pkg_repl("blas",         "3.2.1-4.el6",    "i686");
"/software/packages"=pkg_repl("blas-devel",   "3.2.1-4.el6",    "i686");
"/software/packages"=pkg_repl("blas",         "3.2.1-4.el6",    "x86_64");
"/software/packages"=pkg_repl("blas-devel",   "3.2.1-4.el6",    "x86_64");

# Blas dependencies
"/software/packages"=pkg_repl("libgfortran","4.4.6-4.el6","i686");
"/software/packages"=pkg_repl("libgfortran","4.4.6-4.el6","x86_64");

# Required by superb
"/software/packages"=pkg_repl("yum-utils","1.1.30-14.el6","noarch");

# Java dependencies
"/software/packages"=pkg_repl("axis",                     "1.2.1-7.2.el6",   "noarch");
"/software/packages"=pkg_repl("bouncycastle",             "1.46-1.el6",      "noarch");
"/software/packages"=pkg_repl("jakarta-commons-lang",     "2.4-1.1.el6",     "noarch");
"/software/packages"=pkg_repl("jakarta-commons-discovery","0.4-5.4.el6",     "noarch");
"/software/packages"=pkg_repl("jakarta-commons-logging",  "1.0.4-10.el6",    "noarch");
"/software/packages"=pkg_repl("jakarta-commons-cli",      "1.1-5.el6",       "x86_64");
"/software/packages"=pkg_repl("jpackage-utils",           "1.7.5-3.12.el6",  "noarch");
"/software/packages"=pkg_repl("mx4j",                     "3.0.1-9.13.el6",  "noarch");
"/software/packages"=pkg_repl("wsdl4j",                   "1.5.2-7.8.el6",   "noarch");
"/software/packages"=pkg_repl("java-1.5.0-gcj-devel",     "1.5.0.0-29.1.el6","x86_64");
"/software/packages"=pkg_repl("gcc-java",                 "4.4.6-4.el6",     "x86_64");
'/software/packages'=pkg_repl('libgcj-devel',             '4.4.6-4.el6',     'x86_64');
"/software/packages"=pkg_repl("ecj",                      "3.4.2-6.el6",     "x86_64");
"/software/packages"=pkg_repl("libgcj-src",               "4.4.6-4.el6",     "x86_64");


"/software/packages"=pkg_repl("glibmm24",   "2.22.1-1.el6", "x86_64");
"/software/packages"=pkg_repl("libsigc++20","2.2.4.2-1.el6","x86_64");
"/software/packages"=pkg_repl("log4cpp",    "1.0-13.el6",   "x86_64");
"/software/packages"=pkg_repl("glib2-devel","2.22.5-7.el6", "x86_64");
"/software/packages"=pkg_repl("xerces-c",   "3.0.1-20.el6", "x86_64");
"/software/packages"=pkg_repl("c-ares",     "1.7.0-6.el6",  "x86_64");
"/software/packages"=pkg_repl("classads",   "1.0.8-1.el6",  "x86_64");
"/software/packages"=pkg_repl("libtar",     "1.2.11-17.el6","x86_64");

# Nordugrid requirements
"/software/packages"=pkg_repl("xmlsec1",        "1.2.16-2.el6","x86_64");
"/software/packages"=pkg_repl("xmlsec1-openssl","1.2.16-2.el6","x86_64");

# GFAL requirements
"/software/packages"=pkg_repl("gsoap","2.7.16-3.el6","i686");
"/software/packages"=pkg_repl("gsoap","2.7.16-3.el6","x86_64");

# XROOTD requirements

# Needed by EMI 2 WN
# Required by the EMI WN
"/software/packages"=pkg_repl("e2fsprogs-devel", "1.41.12-12.el6",  "x86_64");
"/software/packages"=pkg_repl("libcom_err-devel","1.41.12-12.el6",  "x86_64");
"/software/packages"=pkg_repl("glibmm24",        "2.22.1-1.el6",    "x86_64");
"/software/packages"=pkg_repl("krb5-devel",      "1.9-33.el6",      "x86_64");
"/software/packages"=pkg_repl("libffi",          "3.0.5-3.2.el6",   "x86_64");
"/software/packages"=pkg_repl("libselinux-devel","2.0.94-5.3.el6",  "x86_64");
"/software/packages"=pkg_repl("libsigc++20",     "2.2.4.2-1.el6",   "x86_64");
"/software/packages"=pkg_repl("libtool-ltdl",    "2.2.6-15.5.el6",  "i686");
"/software/packages"=pkg_repl("openssl-devel",   "1.0.0-20.el6_2.5","x86_64");


# 32bit deep dependencies
"/software/packages"=pkg_repl("bzip2-libs","1.0.5-7.el6_0","i686");
"/software/packages"=pkg_repl("cyrus-sasl-lib","2.1.23-13.el6","i686");
"/software/packages"=pkg_repl("e2fsprogs-libs","1.41.12-12.el6","i686");
"/software/packages"=pkg_repl("expat","2.0.1-11.el6_2","i686");
"/software/packages"=pkg_repl("glib2","2.22.5-7.el6","i686");
"/software/packages"=pkg_repl("glib2-devel","2.22.5-7.el6","x86_64");
"/software/packages"=pkg_repl("glibc","2.12-1.80.el6_3.5","i686");
"/software/packages"=pkg_repl("keyutils-libs","1.4-4.el6","i686");
"/software/packages"=pkg_repl("keyutils-libs-devel","1.4-4.el6","x86_64");
"/software/packages"=pkg_repl("krb5-libs","1.9-33.el6","i686");
"/software/packages"=pkg_repl("libgcc","4.4.6-4.el6","i686");
"/software/packages"=pkg_repl("libselinux","2.0.94-5.3.el6","i686");
"/software/packages"=pkg_repl("libsepol","2.0.41-4.el6","i686");
"/software/packages"=pkg_repl("libsepol-devel","2.0.41-4.el6","x86_64");
"/software/packages"=pkg_repl("libstdc++","4.4.6-4.el6","i686");
"/software/packages"=pkg_repl("openldap","2.4.23-26.el6","i686");
"/software/packages"=pkg_repl("openssl","1.0.0-20.el6_2.5","i686");
"/software/packages"=pkg_repl("libcom_err","1.41.12-12.el6","i686");
"/software/packages"=pkg_repl("nss","3.13.5-1.el6_3","i686"); 
"/software/packages"=pkg_repl("nss-util","3.13.5-1.el6_3","i686"); 
"/software/packages"=pkg_repl("nss-softokn","3.12.9-11.el6","i686"); 
"/software/packages"=pkg_repl("nss-softokn-freebl","3.12.9-11.el6","i686"); 
"/software/packages"=pkg_repl("sqlite","3.6.20-1.el6","i686"); 
"/software/packages"=pkg_repl("readline","6.0-4.el6","i686"); 
"/software/packages"=pkg_repl("ncurses-libs","5.7-3.20090208.el6","i686");
"/software/packages"=pkg_repl("libuuid","2.17.2-12.7.el6","i686");
"/software/packages"=pkg_repl("db4","4.7.25-17.el6","i686");
"/software/packages"=pkg_repl("zlib","1.2.3-27.el6","i686");
"/software/packages"=pkg_repl("gamin","0.1.10-9.el6","i686");
"/software/packages"=pkg_repl("nspr","4.9.2-0.el6_3.1","i686");

# CernVMFS dep, not right place
'/software/packages'=pkg_repl('policycoreutils-python','2.0.83-19.24.el6','x86_64');
'/software/packages'=pkg_repl('audit-libs-python',     '2.2-2.el6',       'x86_64');
'/software/packages'=pkg_repl('libcgroup',             '0.37-4.el6',      'x86_64');
'/software/packages'=pkg_repl('libselinux-python',     '2.0.94-5.3.el6',  'x86_64');
'/software/packages'=pkg_repl('libsemanage-python',    '2.0.43-4.1.el6',  'x86_64');
'/software/packages'=pkg_repl('setools-libs',          '3.3.7-4.el6',     'x86_64');
'/software/packages'=pkg_repl('setools-libs-python',   '3.3.7-4.el6',     'x86_64');

# Dependances axis surtout
'/software/packages'=pkg_repl('classpathx-jaf', '1.0-15.4.el6', 'x86_64');
'/software/packages'=pkg_repl('classpathx-mail', '1.1.1-9.4.el6', 'noarch');
'/software/packages'=pkg_repl('jakarta-commons-httpclient', '3.1-0.7.el6_3', 'x86_64');
'/software/packages'=pkg_repl('log4j', '1.2.14-6.4.el6', 'x86_64');

# Dependances mx4j surtout
'/software/packages'=pkg_repl('bcel', '5.2-7.2.el6', 'x86_64');
'/software/packages'=pkg_repl('regexp', '1.5-4.4.el6', 'x86_64');

# emacs: conflits libotf entre openmpi-psm (OpenTraceFormat: libotf) et libotf (OpenTypeFont)
'/software/packages'=pkg_repl('libotf', '0.9.9-3.1.el6', 'x86_64');

# Conflits avec SL_enable_serialconsole
#"/software/packages"=pkg_del("SL_enable_serialconsole-1152","4.1-1.el6","noarch");
#"/software/packages"=pkg_del("SL_enable_serialconsole-192","4.1-1.el6","noarch");
#"/software/packages"=pkg_del("SL_enable_serialconsole-384","4.1-1.el6","noarch");

# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };
