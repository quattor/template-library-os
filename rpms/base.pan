unique template rpms/base;

variable OS_CORE_ONLY ?= false;
variable OS_CORE_ISCSI_ENABLED ?= false;

# Standard YUM groups for all machines
include {'rpms/group/core' };
include { if ( ! OS_CORE_ONLY ) 'rpms/group/base' };
include { if ( ! OS_CORE_ONLY ) 'rpms/management-utils' };

# Additional packages
'/software/packages' = {
  if ( ! OS_CORE_ONLY && OS_CORE_ISCSI_ENABLED ) {
    SELF[escape('iscsi-initiator-utils')] = nlist();
  };
  SELF;
};
