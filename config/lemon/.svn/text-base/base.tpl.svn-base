# Don't mark as unique

template config/lemon/base;

"/software/packages"=pkg_repl("perl-TimeDate","1.16-5.el5","noarch");
"/software/packages"=pkg_repl("compat-libstdc++-33","3.2.3-61","i386");
"/software/packages"=pkg_repl("compat-libstdc++-33","3.2.3-69.el6",PKG_ARCH_DEFAULT);

# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };

