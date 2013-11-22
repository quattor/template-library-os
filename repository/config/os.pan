#######################################################################
#
# Standard repositories to use for the OS
#
#######################################################################
 
unique template repository/config/os;
 
include { 'quattor/functions/repository' };

# Ordered list of repositories to load
include { 'repository/config/quattor' };
variable OS_REPOSITORY_LIST ?= list(
    'sl5.x-x86_64-base',
    'sl5.x-x86_64-security',
);

'/software/repositories' = add_repositories(OS_REPOSITORY_LIST);
