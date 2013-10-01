# This template is used to do some post configuration (mainly package
# adjustment) at the very end of the machine configuration, in
# particular after the gLite configuration.
# This template is also the last place where OS updates/errata are
# applied and may be used to do late customizations after applying OS
# updates.


template config/glite/3.1/postconfig;

# SL 4.7 version change
"/software/packages" = pkg_repl("words", "3.0-3.2", "noarch");
"/software/packages" = pkg_repl("xorg-x11-xdm", "6.8.2-1.EL.33.0.2", PKG_ARCH_DEFAULT);
"/software/packages" = pkg_repl("openssl-devel","0.9.7a-43.17.el4_6.1", PKG_ARCH_DEFAULT);
"/software/packages" = pkg_repl("boost","1.32.0-6.rhel4", PKG_ARCH_GLITE);
"/software/packages" = pkg_repl("compat-openldap","2.1.30-8.el4_6.4","i386");
"/software/packages" = pkg_repl("libdbi","0.6.5-10.RHEL4.1", PKG_ARCH_DEFAULT);
"/software/packages" = pkg_repl("perl-LDAP","0.31-5","noarch");
"/software/packages" = pkg_repl("swig","1.3.21-6", PKG_ARCH_GLITE);
"/software/packages" = pkg_repl("perl-Convert-ASN1","0.18-3","noarch");
"/software/packages" = pkg_repl("perl-XML-SAX","0.12-7","noarch");
"/software/packages" = pkg_repl("krb5-devel","1.3.4-54", PKG_ARCH_DEFAULT);
"/software/packages" = pkg_repl("zlib-devel","1.2.1.2-1.2", PKG_ARCH_DEFAULT);
"/software/packages" = pkg_repl("guile","1.6.4-14", PKG_ARCH_DEFAULT);
"/software/packages" = pkg_repl("e2fsprogs-devel","1.35-12.11.el4_6.1", PKG_ARCH_DEFAULT);
"/software/packages" = pkg_repl("perl-XML-NamespaceSupport","1.08-6","noarch");
"/software/packages" = pkg_repl("umb-scheme","3.2-36.EL4", PKG_ARCH_DEFAULT);
"/software/packages" = pkg_repl("gnuplot","4.0.0-4", PKG_ARCH_DEFAULT);
"/software/packages" = pkg_repl("glibc-devel","2.3.4-2.39", PKG_ARCH_DEFAULT);
"/software/packages" = pkg_repl("dialog","1.0.20040731-3", PKG_ARCH_DEFAULT);
"/software/packages" = pkg_repl("libtool-libs","1.5.6-4.EL4.2", PKG_ARCH_DEFAULT);
"/software/packages" = pkg_repl("glibc-headers","2.3.4-2.39", PKG_ARCH_DEFAULT);
"/software/packages" = pkg_repl("glibc-kernheaders","2.4-9.1.100.EL", PKG_ARCH_DEFAULT);
"/software/packages" = pkg_repl("perl-Compress-Zlib","1.42-1.el4",PKG_ARCH_DEFAULT);
"/software/packages" = pkg_repl("rdesktop","1.3.1-5",PKG_ARCH_DEFAULT);
"/software/packages" = pkg_repl('perl-TermReadKey','2.20-12',PKG_ARCH_DEFAULT);

# gcc/g++ SL3 i386 compatibility
"/software/packages" = pkg_repl("compat-libstdc++-33", "3.2.3-47.3", "i386");

# Required by LFC Python API
# lal-python just provides the 32-bit binary not installed by python i386 on a 64-bit platform
"/software/packages" = pkg_repl("python","2.3.4-14.4.el4_6.1", "i386");
"/software/packages" = pkg_repl("lal-python-bin-2.3.4-14.2","1.0.0-1","i386"); 

# Required by MPICH
"/software/packages" = pkg_repl("ElectricFence", "2.2.2-19", PKG_ARCH_MPI);

# Required by edg-job-xxx commands
'/software/packages' = pkg_repl('tk','8.4.7-3.el4_6.1','i386');
'/software/packages' = pkg_repl('tk','8.4.7-3.el4_6.1', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('tkinter','2.3.4-14.4.el4_6.1','i386');
'/software/packages' = pkg_repl('tkinter','2.3.4-14.4.el4_6.1', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('tix','8.1.4-98','i386');


# Required by Atlas
'/software/packages' = pkg_repl('libgfortran','4.1.2-14.EL4','i386');


# Reapply OS updates.
# Everything that must be done after OS updates must be done after this
# line.
include { 'config/os/updates' };


# Ensure bouncycastle is matching Java JDK version
'/software/packages' = {
  jdk_version_toks = matches(JAVA_JDK_DEFAULT_VERSION,'^(\d\.\d)\..*');
  if ( (length(jdk_version_toks) > 0) &&
       exists('/software/packages/'+escape('bouncycastle-jdk1.5')) ) {
    pkg_del('bouncycastle-jdk1.5');
    pkg_repl('bouncycastle-jdk'+jdk_version_toks[1], '1.37-5jpp', 'noarch');
  } else {
    SELF;
  };
};


# Define some symlinks to help with 32-bit compatibility
include { 'components/symlink/config' };

# Define a symlink to real library for libg2c from package libf2c
# (required by Atlas)
"/software/components/symlink/links" =
    push(nlist(
                "name", "/usr/lib/libg2c.so",
                "target", "//usr/lib/libg2c.so.0",
                "replace",  nlist("all","no","link", "yes")
              )
         );

# Define python2 used by gLite scripts to point to 32-bit version
include { 'components/symlink/config' };
"/software/components/symlink/links" =
    push(nlist(
                "name", GLITE_LOCATION+"/bin/python2",
                "target", "/usr/bin/python32",
                "replace",  nlist("all","no","link", "yes")
              )
         );


# Remove directories from gpt-VDT1.2.2 preventing upgrade to gpt-VDT1.6.0

include { 'components/filecopy/config' };

variable PURGE_VDT_CONTENTS = <<EOF;
#!/bin/sh
# Script to delete gpt-VTD1.2.2 directories preventing upgrade to gpt-VDT1.6.0.
# Error prevents upgrade but doesn't return an error status, thus
# filecopy is run

vdt_122_installed=`rpm -q gpt |grep '^gpt-VDT1.2.2'`
if [ $? -eq 0 ]
then
  if [ -d /opt/gpt/share/globus_aclocal ]
  then
    rm -Rf /opt/gpt/share/globus_aclocal
  fi
  if [ -d /opt/gpt/share/gpt_amdir  ]
  then
    rm -Rf /opt/gpt/share/gpt_amdir 
  fi
  # Re-run ncm-cdispd after this run to fix gpt upgrade
  echo "Schedule ncm-cdispd to run again to fix gpt upgrade..."
  killall -HUP ncm-cdispd
fi
EOF

variable PURGE_VDT_FILE = "/var/quattor/purge-vdt-1.2.2";
"/software/components/filecopy/services" =
  npush(escape(PURGE_VDT_FILE),
        nlist("config",PURGE_VDT_CONTENTS,
              "owner","root",
              "perms","0700",
              "restart",PURGE_VDT_FILE
             )
       );

