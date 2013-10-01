unique template config/os/openafs_client;

include { 'rpms/openafs_client' };

# Re include RPM updates
include { 'config/os/updates' };


