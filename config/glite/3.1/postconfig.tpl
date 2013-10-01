# This template is used to do some post configuration (mainly package
# adjustment) at the very end of the machine configuration, in
# particular after the gLite configuration.
# This template is also the last place where OS updates/errata are
# applied and may be used to do late customizations after applying OS
# updates.


template config/glite/3.1/postconfig;

# gcc/g++ SL3 i386 compatibility
"/software/packages" = pkg_repl("compat-libstdc++-33", "3.2.3-47.3", "i386");
"/software/packages" = pkg_add("lal-libstdc++","3.2.3-1","i386");

# Required by GFAL/lcg_utils
'/software/packages' = pkg_repl('compat-openldap','2.1.30-12.el4','i386');

# Fix rpms version modification
'/software/packages' = pkg_repl('perl-Compress-Zlib','1.42-1.el4','i386');
'/software/packages' = pkg_repl('tk','8.4.7-3.el4_6.1','i386');
'/software/packages' = pkg_repl('tkinter','2.3.4-14.7.el4','i386');
'/software/packages' = pkg_repl('words','3.0-3.2','noarch');
'/software/packages' = pkg_repl('xorg-x11-xdm','6.8.2-1.EL.52','i386');


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


# Define a symlink to real library for libg2c from package libf2c
# (required by Atlas)
include { 'components/symlink/config' };
"/software/components/symlink/links" =
    push(nlist(
                "name", "/usr/lib/libg2c.so",
                "target", "//usr/lib/libg2c.so.0",
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


# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };

