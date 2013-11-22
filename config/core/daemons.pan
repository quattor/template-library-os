@{
    Template listing daemons  that must be enabled or disabled in all SL6-based installations

}

unique template config/core/daemons;

variable OS_UNWANTED_DEFAULT_DAEMONS ?= list (
    "yum", "yum-updatesd", "avahi-daemon",
    "hplip", "pcscd", "gpm", "ipsec",
    "bluetooth", "cups", "iscsi","iscsid",
    "isdn","jexec", 'yum-cron','tog-pegasus',
    "wpa_supplicant","pppoe-server","postfix",
    "portreserve","haldaemon","NetworkManager",
    "abrt","kdump","rhsmcertd", "stap-server",
);

"/software/components/chkconfig/service/" = {
	foreach(k;v;OS_UNWANTED_DEFAULT_DAEMONS) {
            SELF[v]["on"]=null;
	    SELF[v]["off"]="";
	    SELF[v]["startstop"] = true;
	};
	SELF;
};
