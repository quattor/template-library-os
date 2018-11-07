# Template to define a package group smaller than the standard development group

unique template rpms/development-base-tools;

include { 'rpms/group/development' };

'/software/packages' = {
    # Cmake
    pkg_repl('cmake');

    # Git
    pkg_repl('git');

    # Mercurial
    pkg_repl('mercurial-hgk');

    # Doxygen
    pkg_repl('doxygen');

    # Docbook
    pkg_repl('docbook-utils');

    # DB
    pkg_repl('mysql-devel');

    # Graphic
    pkg_repl('libcanberra-gtk2');
    pkg_repl('libXi-devel');

    # Openmpi
    pkg_repl('openmpi');

    # Python
    pkg_repl('python-devel');
    pkg_repl('python-pip');

    # XML
    pkg_repl('expat-devel');

    SELF;
};
