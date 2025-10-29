unique template config/core/iptables-services;

include 'components/systemd/config';

# Install package providing iptables and ip6tables services
'/software/packages' = {
    pkg_repl('iptables-nft-services');
    SELF;
};

'/software/components/systemd/skip/service' = false;

# Disable and mask firewalld
prefix '/software/components/systemd/unit/firewalld';
'state' = 'masked';
'startstop' = true;

# Enable iptables
prefix '/software/components/systemd/unit/iptables';
'state' = 'enabled';
'startstop' = true;

# Enable ip6tables
prefix '/software/components/systemd/unit/ip6tables';
'state' = 'enabled';
'startstop' = true;
