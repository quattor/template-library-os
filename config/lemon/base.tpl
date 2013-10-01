unique template config/lemon/base;

"/software/packages"=pkg_repl("perl-TimeDate","2.22-1","noarch");
"/software/packages"=pkg_repl("compat-libstdc++-33","3.2.3-47.3","i386");

# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };

