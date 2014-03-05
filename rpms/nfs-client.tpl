unique template rpms/nfs-client;

include { 'rpms/core' };

'/software/packages/{ypbind}' = nlist();
'/software/packages/{autofs}' = nlist();
'/software/packages/{nfs-utils}' = nlist();
'/software/packages/{nfs4-acl-tools}' = nlist();

