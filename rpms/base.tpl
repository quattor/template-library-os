# All packages, including optional ones, from Base group

unique template rpms/base;

# Mandatory and default packages
include { 'rpms/core' };


# Optional Packages (from SL6.4)
'/software/packages/{PyPAM}' = nlist();
'/software/packages/{abrt-addon-ccpp}' = nlist();
'/software/packages/{abrt-addon-kerneloops}' = nlist();
'/software/packages/{abrt-addon-python}' = nlist();
'/software/packages/{abrt-cli}' = nlist();
'/software/packages/{audispd-plugins}' = nlist();
'/software/packages/{brltty}' = nlist();
'/software/packages/{cpupowerutils}' = nlist();
'/software/packages/{device-mapper-persistent-data}' = nlist();
'/software/packages/{dos2unix}' = nlist();
'/software/packages/{dumpet}' = nlist();
'/software/packages/{ecryptfs-utils}' = nlist();
'/software/packages/{edac-utils}' = nlist();
'/software/packages/{genisoimage}' = nlist();
'/software/packages/{gpm}' = nlist();
'/software/packages/{kabi-yum-plugins}' = nlist();
'/software/packages/{kernel-doc}' = nlist();
'/software/packages/{linuxptp}' = nlist();
'/software/packages/{logwatch}' = nlist();
'/software/packages/{mkbootdisk}' = nlist();
'/software/packages/{mtools}' = nlist();
'/software/packages/{ncurses-term}' = nlist();
'/software/packages/{nss_db}' = nlist();
'/software/packages/{oddjob}' = nlist();
'/software/packages/{pax}' = nlist();
'/software/packages/{python-dmidecode}' = nlist();
'/software/packages/{python-volume_key}' = nlist();
'/software/packages/{rsyslog-gnutls}' = nlist();
'/software/packages/{rsyslog-gssapi}' = nlist();
'/software/packages/{rsyslog-relp}' = nlist();
'/software/packages/{sgpio}' = nlist();
'/software/packages/{sox}' = nlist();
'/software/packages/{squashfs-tools}' = nlist();
'/software/packages/{star}' = nlist();
'/software/packages/{tboot}' = nlist();
'/software/packages/{tunctl}' = nlist();
'/software/packages/{udftools}' = nlist();
'/software/packages/{unix2dos}' = nlist();
'/software/packages/{uuidd}' = nlist();
'/software/packages/{volume_key}' = nlist();
'/software/packages/{wodim}' = nlist();
'/software/packages/{x86info}' = nlist();
'/software/packages/{yum-plugin-aliases}' = nlist();
'/software/packages/{yum-plugin-changelog}' = nlist();
'/software/packages/{yum-plugin-downloadonly}' = nlist();
'/software/packages/{yum-plugin-tmprepo}' = nlist();
'/software/packages/{yum-plugin-verify}' = nlist();
'/software/packages/{yum-plugin-versionlock}' = nlist();
'/software/packages/{yum-presto}' = nlist();
'/software/packages/{zsh}' = nlist();
