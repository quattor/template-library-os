template config/os/kde-devel;

include { 'rpms/kde_software_development' };

"/software/packages"=pkg_repl("dbus","1.1.2-14.el5","i386");
"/software/packages"=pkg_repl("xorg-x11-xfs","1.0.2-4","i386");
#"/software/packages"=pkg_repl("xorg-x11-libs","6.8.2-1.EL.18","i386");


# Re include RPM updates
include { 'config/os/updates' };


