unique template config/emi/2.0/bdii;

'/software/packages' = {
    if (is_boolean(BDII_OPENLDAP24) && BDII_OPENLDAP24) {
        pkg_repl('unixODBC', "2.2.14-11.el6", 'x86_64');
    };
    SELF;
};

include { 'config/os/updates' };
