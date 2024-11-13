unique template rpms/interactive-server;

'/software/packages' = {
    # X-system
    pkg_repl('xterm');
    pkg_repl('xorg-x11-xauth');
    pkg_repl('dbus-x11');
    pkg_repl('libXScrnSaver');

    # Libreoffice
    pkg_repl('libreoffice');
    pkg_repl('libreoffice-langpack-fr');
    pkg_repl('libreoffice-langpack-en');

    # Graphics
    pkg_repl('gnuplot');
    pkg_repl('plplot');
    pkg_repl('xfig');
    pkg_repl('gimp');

    # Mail
    pkg_repl('mutt');

    # Network tools
    pkg_repl('telnet');
    pkg_repl('ftp');
    pkg_repl('lftp');
    pkg_repl('nc');
    pkg_repl('wireshark');
    pkg_repl('tigervnc');

    # DB
    pkg_repl('mysql');
    pkg_repl('postgresql');

    # Ghostview
    pkg_repl('gv');

    # tcsh
    pkg_repl('tcsh');

    SELF;
};

