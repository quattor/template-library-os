template config/lal/pam_abl;


include { 'components/filecopy/config' };


variable PAM_ABL_CONF = <<EOF;
##############################
# Ne pas modifier
# deploiement par QUATTOR
##############################
# /etc/security/pam_abl.conf
# debug
host_db=/var/lib/abl/hosts.db
host_purge=2d
host_rule=*:10/1h,30/1d
user_db=/var/lib/abl/users.db
user_purge=2d
user_rule=!root:10/1h,30/1d
EOF



"/software/components/filecopy/services" = npush(
        escape("/etc/security/pam_abl.conf"),
        nlist("config",PAM_ABL_CONF,
              "owner","root",
              "perms","0700")
    );


#include { 'os/updates' };

