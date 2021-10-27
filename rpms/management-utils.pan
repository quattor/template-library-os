unique template rpms/management-utils;

'/software/packages' = {
    pkg_repl('curl');
    pkg_repl('dmidecode');
    pkg_repl('less');
    pkg_repl('logwatch');
    pkg_repl('pciutils');
    pkg_repl('screen');
    pkg_repl('tzdata');
    pkg_repl('udev');

    SELF;
};
