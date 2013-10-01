unique template config/glite/3.2/bdii;

'/software/packages' = {
    if ((BDII_TYPE == 'top' && GLITE_UPDATE_VERSION >= '21') || GLITE_UPDATE_VERSION > '24') {
        pkg_repl('unixODBC', '2.2.11-7.1', 'x86_64');
    };
    SELF;
};

include { 'config/os/updates' };
