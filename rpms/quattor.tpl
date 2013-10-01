#
# Packages provided by the OS needed for a quattor client.
# Included by quattor/rpms.
#
template rpms/quattor;

"/software/packages"=pkg_repl("perl-Compress-Zlib","1.42-1.el4",PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("perl-DBI","1.40-9",PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("perl-Proc-ProcessTable","0.39-1",PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("perl-Crypt-SSLeay","0.51-5",PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("perl-IO-String","1.08-1.1.el4","noarch");
