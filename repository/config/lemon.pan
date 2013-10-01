#######################################################################
#
# Standard repositories to use for Lemon (OS/architecture dependent)
#
#######################################################################
 
unique template repository/config/lemon;
 
include { 'quattor/functions/repository' };

# Ordered list of repository to load
variable LEMON_REPOSITORY_LIST = list('lemon_sl_x86_64');

'/software/repositories' = add_repositories(LEMON_REPOSITORY_LIST);
