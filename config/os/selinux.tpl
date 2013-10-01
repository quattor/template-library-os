# Template to disable SElinux
# Authors : Marec Erwan 


unique template config/os/selinux;

include { 'components/filecopy/config' };


variable SELINUX_CONF = <<EOF;
##############################
# Ne pas modifier
# deploiement par QUATTOR
# Don't modify
# Quattor generated file config
##############################
# This file controls the state of SELinux on the system.
# SELINUX= can take one of these three values:
#       enforcing - SELinux security policy is enforced.
#       permissive - SELinux prints warnings instead of enforcing.
#       disabled - SELinux is fully disabled.
SELINUX=disabled
# SELINUXTYPE= type of policy in use. Possible values are:
#       targeted - Only targeted network daemons are protected.
#       strict - Full SELinux protection.
SELINUXTYPE=targeted

EOF



"/software/components/filecopy/services" = npush(
        escape("/etc/selinux/config"),
        nlist("config",SELINUX_CONF,
              "owner","root",
              "perms","0644")
    );
