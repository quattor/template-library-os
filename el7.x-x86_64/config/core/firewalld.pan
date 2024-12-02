unique template config/core/firewalld;


# Enable or disable firewalld according to OS_ENABLE_FIREWALLD and update its active state
prefix '/software/components/systemd/unit/firewalld';
'state' = if ( OS_ENABLE_FIREWALLD ) {
            'enabled';
          } else {
            'disabled';
          };
'startstop' = true;


