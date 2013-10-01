# Template to update Subversion client according to the version requested.

template config/os/svn_client;


# Subversion version to install (only the major+minor numbers)
variable SUBVERSION_VERSION ?= '1.4';

include { 'config/os/svn_client-'+SUBVERSION_VERSION };

