#######################################################################
#
# Standard repositories to use for Lustre (OS/architecture dependent)
#
#######################################################################
 
unique template repository/config/lustre;
 
include { 'quattor/functions/repository' };

# Ordered list of repository to load
variable LUSTRE_REPOSITORY_LIST = list('lustre');

'/software/repositories' = add_repositories(LUSTRE_REPOSITORY_LIST);
