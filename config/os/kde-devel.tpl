template config/os/kde-devel;

include { 'rpms/kde_software_development' };

"/software/packages"=pkg_repl("dbus","1.1.2-14.el5","x86_64");
"/software/packages"=pkg_repl("xorg-x11-xfs","1.0.2-4","x86_64");
#"/software/packages"=pkg_repl("xorg-x11-libs","6.8.2-1.EL.18","x86_64");


# Re include RPM updates
include { 'config/os/updates' };


