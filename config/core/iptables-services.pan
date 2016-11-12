unique template config/core/iptables-services;

# Install package providing iptables and ip6tables services
'/software/packages' = {
  pkg_repl('iptables-services');

  SELF;
};

# Disable firewalld
prefix '/software/components/systemd/unit/firewalld';
'state' = 'masked';
'startstop' = true;


# Enable iptables and ip6tables
prefix '/software/components/systemd/unit/iptables';
'state' = 'enabled';
'startstop' = true;
prefix '/software/components/systemd/unit/ip6tables';
'state' = 'enabled';
'startstop' = true;
