# Hitachi HDLM (FC multipath)

unique template config/lal/hdlm;

'/software/packages' = pkg_repl('HDLM', '5.94.2.804-1', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('libstdc++','4.1.2-42.el5',PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('libstdc++','4.1.2-42.el5','i386');
