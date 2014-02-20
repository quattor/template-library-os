#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Base
# The basic installation of Scientific Linux.
#
# default packages
#

unique template rpms/default/base;

prefix '/software/packages';

'{acpid}' ?= nlist();
'{b43-fwcutter}' ?= nlist();
'{biosdevname}' ?= nlist();
'{blktrace}' ?= nlist();
'{bridge-utils}' ?= nlist();
'{bzip2}' ?= nlist();
'{cpuspeed}' ?= nlist();
'{cryptsetup-luks}' ?= nlist();
'{dmraid}' ?= nlist();
'{dosfstools}' ?= nlist();
'{eject}' ?= nlist();
'{ethtool}' ?= nlist();
'{fprintd-pam}' ?= nlist();
'{gnupg2}' ?= nlist();
'{hunspell}' ?= nlist();
'{hunspell-en}' ?= nlist();
'{irqbalance}' ?= nlist();
'{kexec-tools}' ?= nlist();
'{ledmon}' ?= nlist();
'{libaio}' ?= nlist();
'{lvm2}' ?= nlist();
'{man-pages}' ?= nlist();
'{man-pages-overrides}' ?= nlist();
'{mdadm}' ?= nlist();
'{microcode_ctl}' ?= nlist();
'{mlocate}' ?= nlist();
'{mtr}' ?= nlist();
'{nano}' ?= nlist();
'{ntp}' ?= nlist();
'{ntpdate}' ?= nlist();
'{openssh-clients}' ?= nlist();
'{pam_passwdqc}' ?= nlist();
'{pcmciautils}' ?= nlist();
'{pinfo}' ?= nlist();
'{plymouth}' ?= nlist();
'{pm-utils}' ?= nlist();
'{prelink}' ?= nlist();
'{rdate}' ?= nlist();
'{readahead}' ?= nlist();
'{rfkill}' ?= nlist();
'{rng-tools}' ?= nlist();
'{rsync}' ?= nlist();
'{scl-utils}' ?= nlist();
'{setuptool}' ?= nlist();
'{sl-release-notes}' ?= nlist();
'{smartmontools}' ?= nlist();
'{sos}' ?= nlist();
'{strace}' ?= nlist();
'{sysstat}' ?= nlist();
'{system-config-firewall-tui}' ?= nlist();
'{system-config-network-tui}' ?= nlist();
'{systemtap-runtime}' ?= nlist();
'{tcpdump}' ?= nlist();
'{tcsh}' ?= nlist();
'{time}' ?= nlist();
'{unzip}' ?= nlist();
'{usbutils}' ?= nlist();
'{vconfig}' ?= nlist();
'{vim-enhanced}' ?= nlist();
'{virt-what}' ?= nlist();
'{wget}' ?= nlist();
'{which}' ?= nlist();
'{wireless-tools}' ?= nlist();
'{words}' ?= nlist();
'{xz}' ?= nlist();
'{yum-utils}' ?= nlist();
'{zip}' ?= nlist();
