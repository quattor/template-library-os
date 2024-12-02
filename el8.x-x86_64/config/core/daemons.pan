@{
    Template listing daemons  that must be enabled or disabled in all SL6-based installations

}

unique template config/core/daemons;

variable OS_CORE_POSTFIX ?= false;

variable OS_WANTED_DEFAULT_DAEMONS ?= {
    append('sshd');
    if ( ! OS_CORE_ONLY && OS_CORE_ISCSI_ENABLED ) {
        # Start only iscsi service, iscsid will be started automatically when needed
        append('iscsi');
    };
    SELF;
};

variable OS_UNWANTED_DEFAULT_DAEMONS ?= {
    append('abrt');
    append('avahi-daemon');
    append('bluetooth');
    append('cups');
    append('hplip');
    append('gpm');
    append('haldaemon');
    append('ipsec');
    append('isdn');
    append('jexec');
    append('kdump');
    append('pcscd');
    if ( ! OS_CORE_POSTFIX ) {
        append('postfix');
    };
    append('portreserve');
    append('pppoe-server');
    append('rhsmcertd');
    append('stap-server');
    append('tog-pegasus');
    append('wpa_supplicant');
    append('yum');
    append('yum-cron');
    append('yum-updatesd');
    if ( OS_CORE_ONLY || ! OS_CORE_ISCSI_ENABLED ) {
        append('iscsi');
        append('iscsid');
    };
    SELF;
};

'/software/components/systemd/unit/' = {
    foreach(k; v; OS_WANTED_DEFAULT_DAEMONS) {
        SELF[v]['state'] = 'enabled';
	SELF[v]['startstop'] = true;
    };
    foreach(k;v;OS_UNWANTED_DEFAULT_DAEMONS) {
        SELF[v]['state'] = 'disabled';
        SELF[v]['startstop'] = true;
    };
    SELF;
};
