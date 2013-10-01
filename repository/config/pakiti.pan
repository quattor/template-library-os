#######################################################################
#
# Standard repositories to use for Lustre (OS/architecture dependent)
#
#######################################################################

unique template repository/config/pakiti;

include { 'quattor/functions/repository' };

# Ordered list of repository to load
variable PAKITI_REPOSITORY_LIST = list('pakiti');

'/software/repositories' = add_repositories(PAKITI_REPOSITORY_LIST);

