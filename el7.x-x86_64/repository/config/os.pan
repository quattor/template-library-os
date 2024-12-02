@{
 Standard repositories to use for the OS for YUM-based deployment
}

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

@{
desc =  list of repository to load specified as a list of templates describing the repositories
values = list of strings, each string being a template name. Non existing templates will be ignored.
default = OS distrib, OS errata, OS fastbugs, OS site addons, EPEL, and optionally EPEL-Testing
required = no
}
include { 'repository/config/quattor' };
variable OS_REPOSITORY_LIST ?= {
    append(OS_VERSION_PARAMS['version']+'_'+OS_VERSION_PARAMS['arch']);
    append(OS_VERSION_PARAMS['version']+'_'+OS_VERSION_PARAMS['arch']+'_errata');
    append(OS_VERSION_PARAMS['version']+'_'+OS_VERSION_PARAMS['arch']+'_updates');
    append(OS_VERSION_PARAMS['major']+'_addons');
    append(OS_VERSION_PARAMS['major']+'_epel');
    if ( REPOSITORY_EPEL_TESTING_ENABLED ) {
      append(OS_VERSION_PARAMS['major']+'_epel_testing');
    };
    append('site');
};

'/software/repositories' = add_repositories(OS_REPOSITORY_LIST,YUM_OS_SNAPSHOT_NS);
