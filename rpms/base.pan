unique template rpms/base;

variable OS_CORE_ONLY ?= false;
variable OS_CORE_ISCSI_ENABLED ?= false;

# Standard YUM groups for all machines
'/software/groups' = {
  SELF['core'] = dict();
  if ( ! OS_CORE_ONLY ) {
    SELF['base'] = dict();
  };
  SELF;
};
# grub2 doesn't seem to be part of core or base group...
'/software/packages' = pkg_repl('grub2');
include { if ( ! OS_CORE_ONLY ) 'rpms/management-utils' };

# Additional packages
'/software/packages' = {
  if ( ! OS_CORE_ONLY && OS_CORE_ISCSI_ENABLED ) {
    SELF[escape('iscsi-initiator-utils')] = nlist();
  };
  SELF;
};
