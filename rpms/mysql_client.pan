#
# This package group contains packages useful for use with MySQL client
#

unique template rpms/mysql_client;

include { 'rpms/mysql' };

# Remove server RPMs
'/software/packages' = {
  pkg_del('mysql-server');
};
