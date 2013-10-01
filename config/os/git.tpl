unique template config/os/git;

variable GIT_VERSION ?= '1.7.4.1-1.el5';

# Git RPMs
'/software/packages' = pkg_repl('git',GIT_VERSION,PKG_ARCH_DEFAULT);
#'/software/packages' = pkg_repl('git-all',GIT_VERSION,PKG_ARCH_DEFAULT);
#'/software/packages' = pkg_repl('git-cvs',GIT_VERSION,PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('git-email',GIT_VERSION,PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('git-gui',GIT_VERSION,PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('git-svn',GIT_VERSION,PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('gitk',GIT_VERSION,PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-Git',GIT_VERSION,PKG_ARCH_DEFAULT);

# Dependencies
'/software/packages' = pkg_repl('perl-Error','0.17012-1.el5.rf','noarch');
'/software/packages' = pkg_repl('perl-Net-SMTP-SSL','1.01-4.el5','noarch');
'/software/packages' = pkg_repl('perl-Authen-SASL','2.10-1.el5.rf','noarch');
'/software/packages' = pkg_repl('perl-TermReadKey','2.30-5.el5','x86_64');
'/software/packages' = pkg_repl('perl-Digest-HMAC','1.01-15','noarch');
'/software/packages' = pkg_repl('perl-Digest-SHA1','2.11-1.2.1','x86_64');
'/software/packages' = pkg_repl('perl-GSSAPI','0.26-1.el5.rf','x86_64');
