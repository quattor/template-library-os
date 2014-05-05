#######################################################################
#
# Standard repositories to use for the OS for YUM-based deployment
#
#######################################################################
 
unique template repository/config/os;
 
include { 'quattor/functions/repository' };

@{
desc =  if true, add epel-testing repository
values = true or false
default = false
required = no
}
variable REPOSITORY_EPEL_TESTING_ENABLED ?= false;

variable YUM_SNAPSHOT_NS ?= 'repository/snapshot';
variable YUM_OS_SNAPSHOT_NS ?= YUM_SNAPSHOT_NS;

# Ordered list of repository to load
# NOTE: The repository which contains the AII rpms must be listed
# first in the list.  If not, then AII installations will fail 
# because the post-install script will look in the wrong place.
include { 'repository/config/quattor' };
variable OS_REPOSITORY_LIST ?= {
    append(OS_VERSION_PARAMS['version']+'_'+OS_VERSION_PARAMS['arch']);
    append(OS_VERSION_PARAMS['version']+'_'+OS_VERSION_PARAMS['arch']+'_errata');
    append(OS_VERSION_PARAMS['version']+'_'+OS_VERSION_PARAMS['arch']+'_updates');
    append(OS_VERSION_PARAMS['major']+'_addons');
    # EPEL: configure both epel and os-specific epel: only one will match depending
    # on site choice...
    append(OS_VERSION_PARAMS['major']+'_epel');
    append('epel');
    if ( REPOSITORY_EPEL_TESTING_ENABLED ) {
      append(OS_VERSION_PARAMS['major']+'_epel_testing');
      append('epel_testing');
    };
    append('site');
};

'/software/repositories' = add_repositories(OS_REPOSITORY_LIST,YUM_OS_SNAPSHOT_NS);
