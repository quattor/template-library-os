unique template config/core/firewalld;


# Disable firewalld
prefix '/software/components/systemd/unit/firewalld';
'state' = if ( OS_DISABLE_FIREWALLD ) {
            'disabled';
          } else {
            'enabled';
          };
'startstop' = true;


