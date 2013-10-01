#######################################################################
#
# Standard repositories to use for Lustre (OS/architecture dependent)
#
#######################################################################

unique template repository/config/mono;

include { 'quattor/functions/repository' };

# Ordered list of repository to load
variable MONO_REPOSITORY_LIST = list('mono');

'/software/repositories' = add_repositories(MONO_REPOSITORY_LIST);

