unique template config/os/git;

variable GIT_VERSION ?= '1.7.1-2.el6_0.1';

# Git RPMs
'/software/packages' = pkg_repl('git',GIT_VERSION,PKG_ARCH_DEFAULT);
#'/software/packages' = pkg_repl('git-all',GIT_VERSION,PKG_ARCH_DEFAULT);
#'/software/packages' = pkg_repl('git-arch',GIT_VERSION,PKG_ARCH_DEFAULT);
#'/software/packages' = pkg_repl('git-cvs',GIT_VERSION,PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('git-email',GIT_VERSION,'noarch');
'/software/packages' = pkg_repl('git-gui',GIT_VERSION,'noarch');
'/software/packages' = pkg_repl('git-svn',GIT_VERSION,'noarch');
'/software/packages' = pkg_repl('gitk',GIT_VERSION,'noarch');
'/software/packages' = pkg_repl('perl-Git',GIT_VERSION,'noarch');

# Dependencies
"/software/packages"=pkg_repl("perl-Authen-SASL","2.13-2.el6","noarch");
"/software/packages"=pkg_repl("perl-Digest-HMAC","1.01-22.el6","noarch");
"/software/packages"=pkg_repl("perl-Digest-SHA1","2.12-2.el6","x86_64");
'/software/packages'=pkg_repl('perl-Error','0.17015-4.el6','noarch');
"/software/packages"=pkg_repl("perl-GSSAPI","0.26-5.el6","x86_64");
"/software/packages"=pkg_repl("perl-IO-Socket-SSL","1.31-2.el6","noarch");
"/software/packages"=pkg_repl("perl-Net-LibIDN","0.12-3.el6","x86_64");
"/software/packages"=pkg_repl("perl-Net-SMTP-SSL","1.01-4.el6","noarch");
"/software/packages"=pkg_repl("perl-Net-SSLeay","1.35-9.el6","x86_64");
"/software/packages"=pkg_repl("perl-TermReadKey","2.30-13.el6","x86_64");
"/software/packages"=pkg_repl("tk","8.5.7-5.el6","x86_64");

# Reapply OS updates
include { 'config/os/updates' };


