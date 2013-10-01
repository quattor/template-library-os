# This template is used to do some post configuration (mainly package
# adjustment) at the very end of the machine configuration, in
# particular after the gLite configuration.
# This template is also the last place where OS updates/errata are
# applied and may be used to do late customizations after applying OS
# updates.

template config/emi/2.0/postconfig;


# Reapply OS updates.
# Everything that must be done after OS updates must be done after this
# line.
include { 'config/os/updates' };

# Define python2 used by gLite scripts to point to 32-bit version
include { 'components/symlink/config' };
"/software/components/symlink/links" =
    push(nlist(
                "name", "/usr/bin/python2",
                "target", "/usr/bin/python",
                "replace",  nlist("all","no","link", "yes")
              )
         );


