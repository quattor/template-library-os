template config/lal/kde-devel;

include { 'rpms/kde_software_development' };

"/software/packages"=pkg_repl("dbus","0.22-12.EL.9","x86_64");
"/software/packages"=pkg_repl("xorg-x11-xfs","6.8.2-1.EL.33.0.2","x86_64");
"/software/packages"=pkg_repl("xorg-x11-libs","6.8.2-1.EL.33.0.2","x86_64");
