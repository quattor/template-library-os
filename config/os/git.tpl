unique template config/os/git;

variable GIT_VERSION ?= '1.6.6-1';

# Git RPMs
'/software/packages' = pkg_repl('git',GIT_VERSION,PKG_ARCH_DEFAULT);
#'/software/packages' = pkg_repl('git-all',GIT_VERSION,PKG_ARCH_DEFAULT);
#'/software/packages' = pkg_repl('git-arch',GIT_VERSION,PKG_ARCH_DEFAULT);
#'/software/packages' = pkg_repl('git-cvs',GIT_VERSION,PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('git-email',GIT_VERSION,PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('git-gui',GIT_VERSION,PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('git-svn',GIT_VERSION,PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('gitk',GIT_VERSION,PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-Git',GIT_VERSION,PKG_ARCH_DEFAULT);

# Dependencies
'/software/packages' = pkg_repl('perl-Error','0.17012-1.el4.rf','noarch');
