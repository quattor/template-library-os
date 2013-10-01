# Java configuration, including JPackage, for this OS version

unique template config/os/java;

variable JAVA_JDK_DEFAULT_VERSION ?= "1.6.0_20";
variable JAVA_JPP_UTILS_VERSION ?= '1.7.3-1jpp.2.el5';

# java-sun-compat is required for JPP support. Avoid to change its version under normal circumstances.
# Where jdk version is x.y.z_u, java-sun-compat = x.y.z.u. RPM name is java-xxx-sun-compat, where
# xxx is the JDK major version. JAVA_SUN_COMPAT_VERSION is a nlist containing both information.
variable JAVA_SUN_COMPAT_VERSION ?= {
  jdk_version_toks = matches(JAVA_JDK_DEFAULT_VERSION,'(.+)_(.+)');
  debug('JAVA_JDK_DEFAULT_VERSION='+JAVA_JDK_DEFAULT_VERSION+', Java arch='+PKG_ARCH_JAVA+', jdk_version_tok='+to_string(jdk_version_toks));
  if ( length(jdk_version_toks) == 0 ) {    # No match
    SELF['jdk'] = JAVA_JDK_DEFAULT_VERSION;
    SELF['compat'] = JAVA_JDK_DEFAULT_VERSION+'-1jpp';
  } else {
    SELF['jdk'] = jdk_version_toks[1];
    SELF['compat'] = jdk_version_toks[1]+'.'+jdk_version_toks[2]+'-1.sl5.jpp';
  };
  SELF;
};

# java-sun-compat arch is normally always i586
variable JAVA_SUN_COMPAT_ARCH ?= 'i586';

# jpp-utils (JPackage) arch is normally always noarch
variable JAVA_JPP_UTILS_ARCH ?= 'noarch';

# Add versions with multi attribute
# Only one version can be added if you want the machine to install without manual intervention
# as RPM doesn't support installing several versions of the same product in the same transaction.
"/software/packages"=pkg_add("jdk",JAVA_JDK_DEFAULT_VERSION+"-fcs",PKG_ARCH_JAVA,"multi");

# Configure JPackage : requires a java-sun-compat RPM matching JDK version
"/software/packages"=pkg_repl("java-"+JAVA_SUN_COMPAT_VERSION['jdk']+"-sun-compat",JAVA_SUN_COMPAT_VERSION['compat'],JAVA_SUN_COMPAT_ARCH);
"/software/packages"=pkg_repl("jpackage-utils",JAVA_JPP_UTILS_VERSION,JAVA_JPP_UTILS_ARCH);

# Define default Java location
variable JAVA_LOCATION = "/usr/java/jdk" + JAVA_JDK_DEFAULT_VERSION;


