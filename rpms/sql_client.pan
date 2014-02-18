#
# This package group includes packages useful for Postgresql client only.
#

unique template rpms/sql_client;

include { 'rpms/sql_server' };

# Remove server RPMs
'/software/packages' = {
  pkg_del('postgresql');
  pkg_del('postgresql-contrib');
  pkg_del('postgresql-docs');
  pkg_del('postgresql-pl');
  pkg_del('postgresql-server');
  pkg_del('postgresql-test');
};
