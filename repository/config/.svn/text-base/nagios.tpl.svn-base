#######################################################################
#
# Standard repositories to use for Nagios (OS/architecture dependent)
#
#######################################################################
 
unique template repository/config/nagios;
 
include { 'quattor/functions/repository' };

# Ordered list of repository to load
variable NAGIOS_REPOSITORY_LIST = list('nagios');

'/software/repositories' = add_repositories(NAGIOS_REPOSITORY_LIST);
