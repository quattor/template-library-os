unique template config/os/graphviz;

'/software/packages' = pkg_repl('graphviz', '2.24.0-1.el5.sl', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('graphviz-devel', '2.24.0-1.el5.sl', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('graphviz-doc', '2.24.0-1.el5.sl', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('graphviz-gd', '2.24.0-1.el5.sl', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('graphviz-java', '2.24.0-1.el5.sl', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('graphviz-python', '2.24.0-1.el5.sl', PKG_ARCH_DEFAULT);


# Re include RPM updates
include { 'config/os/updates' };

