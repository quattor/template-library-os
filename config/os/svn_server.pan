# Template to update Subversion server according to the version requested.

template config/os/svn_server;


# Subversion version to install (only the major+minor numbers)
variable SUBVERSION_VERSION ?= '1.4';

include { 'config/os/svn_server-'+SUBVERSION_VERSION };

