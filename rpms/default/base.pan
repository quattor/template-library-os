#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Base
# This group includes a minimal set of packages. Useful for creating small
# router/firewall boxes, for example.
#
# default packages
#

unique template rpms/default/base;

prefix '/software/packages';

'{NetworkManager}' ?= nlist();
'{OpenIPMI}' ?= nlist();
'{acpid}' ?= nlist();
'{amtu}' ?= nlist();
'{anacron}' ?= nlist();
'{apmd}' ?= nlist();
'{aspell}' ?= nlist();
'{aspell-en}' ?= nlist();
'{autofs}' ?= nlist();
'{bluez-utils}' ?= nlist();
'{ccid}' ?= nlist();
'{conman}' ?= nlist();
'{coolkey}' ?= nlist();
'{cpuspeed}' ?= nlist();
'{crash}' ?= nlist();
'{cryptsetup-luks}' ?= nlist();
'{dhclient}' ?= nlist();
'{dhcpv6-client}' ?= nlist();
'{dmraid}' ?= nlist();
'{dos2unix}' ?= nlist();
'{dosfstools}' ?= nlist();
'{dump}' ?= nlist();
'{eject}' ?= nlist();
'{fbset}' ?= nlist();
'{finger}' ?= nlist();
'{firstboot-tui}' ?= nlist();
'{ftp}' ?= nlist();
'{gnupg}' ?= nlist();
'{gpm}' ?= nlist();
'{ipsec-tools}' ?= nlist();
'{iptstate}' ?= nlist();
'{irda-utils}' ?= nlist();
'{irqbalance}' ?= nlist();
'{jwhois}' ?= nlist();
'{krb5-workstation}' ?= nlist();
'{ksh}' ?= nlist();
'{lftp}' ?= nlist();
'{libaio}' ?= nlist();
'{logwatch}' ?= nlist();
'{m2crypto}' ?= nlist();
'{man-pages}' ?= nlist();
'{man-pages-overrides}' ?= nlist();
'{mdadm}' ?= nlist();
'{mgetty}' ?= nlist();
'{microcode_ctl}' ?= nlist();
'{mkbootdisk}' ?= nlist();
'{mlocate}' ?= nlist();
'{mozldap}' ?= nlist();
'{mtools}' ?= nlist();
'{mtr}' ?= nlist();
'{nano}' ?= nlist();
'{nc}' ?= nlist();
'{nfs-utils}' ?= nlist();
'{nss-tools}' ?= nlist();
'{nss_db}' ?= nlist();
'{nss_ldap}' ?= nlist();
'{numactl}' ?= nlist();
'{openssh-clients}' ?= nlist();
'{openssh-server}' ?= nlist();
'{pam_ccreds}' ?= nlist();
'{pam_krb5}' ?= nlist();
'{pam_passwdqc}' ?= nlist();
'{pam_pkcs11}' ?= nlist();
'{pam_smb}' ?= nlist();
'{pax}' ?= nlist();
'{pcmciautils}' ?= nlist();
'{pinfo}' ?= nlist();
'{pkinit-nss}' ?= nlist();
'{pm-utils}' ?= nlist();
'{rdate}' ?= nlist();
'{rdist}' ?= nlist();
'{readahead}' ?= nlist();
'{redhat-lsb}' ?= nlist();
'{redhat-support-tool}' ?= nlist();
'{rng-utils}' ?= nlist();
'{rp-pppoe}' ?= nlist();
'{rsh}' ?= nlist();
'{rsync}' ?= nlist();
'{scl-utils}' ?= nlist();
'{sendmail}' ?= nlist();
'{setarch}' ?= nlist();
'{setuptool}' ?= nlist();
'{smartmontools}' ?= nlist();
'{sos}' ?= nlist();
'{specspo}' ?= nlist();
'{stunnel}' ?= nlist();
'{sudo}' ?= nlist();
'{svrcore}' ?= nlist();
'{symlinks}' ?= nlist();
'{system-config-network-tui}' ?= nlist();
'{talk}' ?= nlist();
'{tcp_wrappers}' ?= nlist();
'{tcpdump}' ?= nlist();
'{tcsh}' ?= nlist();
'{telnet}' ?= nlist();
'{time}' ?= nlist();
'{tree}' ?= nlist();
'{unix2dos}' ?= nlist();
'{unzip}' ?= nlist();
'{usbutils}' ?= nlist();
'{vconfig}' ?= nlist();
'{virt-what}' ?= nlist();
'{wget}' ?= nlist();
'{which}' ?= nlist();
'{wireless-tools}' ?= nlist();
'{words}' ?= nlist();
'{ypbind}' ?= nlist();
'{yum}' ?= nlist();
'{yum-autoupdate}' ?= nlist();
'{yum-conf}' ?= nlist();
'{yum-conf-5x}' ?= nlist();
'{yum-metadata-parser}' ?= nlist();
'{zip}' ?= nlist();
