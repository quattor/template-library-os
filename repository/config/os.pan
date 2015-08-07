#######################################################################
#
# Standard repositories to use for the OS for YUM-based deployment
#
#######################################################################

unique template repository/config/os;

include 'quattor/functions/repository';

variable YUM_SNAPSHOT_NS ?= 'repository/snapshot';
variable YUM_OS_SNAPSHOT_NS ?= YUM_SNAPSHOT_NS;

# Ordered list of repository to load
# NOTE: The repository which contains the AII rpms must be listed
# first in the list.  If not, then AII installations will fail
# because the post-install script will look in the wrong place.
include 'repository/config/quattor';
variable OS_REPOSITORY_LIST ?= list(
    OS_VERSION_PARAMS['version']+'_'+OS_VERSION_PARAMS['arch'],
    OS_VERSION_PARAMS['version']+'_'+OS_VERSION_PARAMS['arch']+'_errata',
    OS_VERSION_PARAMS['version']+'_'+OS_VERSION_PARAMS['arch']+'_updates',
    OS_VERSION_PARAMS['major']+'_addons',
    OS_VERSION_PARAMS['major']+'_epel',
    'site',
);

'/software/repositories' = add_repositories(OS_REPOSITORY_LIST,YUM_OS_SNAPSHOT_NS);
