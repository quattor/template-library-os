unique template config/glite/3.1/vobox;

"/software/packages"=pkg_repl("apt","0.5.15cnc6-9.SL",PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("boost","1.32.0-6.rhel4",PKG_ARCH_GLITE);
"/software/packages"=pkg_repl("guile","1.6.4-14",PKG_ARCH_GLITE);
"/software/packages"=pkg_repl("gv","3.5.8-29",PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("ggv","2.8.0-1",PKG_ARCH_DEFAULT);
'/software/packages'=pkg_repl('perl-TermReadKey','2.30-1.el4.rf',PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("tix","8.1.4-98",PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("tkinter","2.3.4-14.4",PKG_ARCH_GLITE);
"/software/packages"=pkg_repl("xloadimage","4.1-36.RHEL4",PKG_ARCH_DEFAULT);


# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };

