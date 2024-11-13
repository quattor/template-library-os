unique template config/core/firewalld;

include 'components/systemd/config';

# Add firewalld RPM
'/software/packages' = {
    pkg_repl('firewalld');
    SELF;
};

# Enable or disable firewalld according to OS_ENABLE_FIREWALLD and update its active state
'/software/components/systemd/skip/service' = false;
prefix '/software/components/systemd/unit/firewalld';
'state' = if ( OS_ENABLE_FIREWALLD ) {
    'enabled';
} else {
    'disabled';
};
'startstop' = true;
