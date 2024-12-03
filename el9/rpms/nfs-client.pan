unique template rpms/nfs-client;

'/software/packages' = {
    pkg_repl('autofs');
    pkg_repl('nfs-utils');
    pkg_repl('nfs4-acl-tools');

    SELF;
};
