##
# Nagios template
#
# RESPONSIBLE : G. PHILIPPON

unique template config/nagios/server/config;

'/software/packages' = pkg_repl('nagios','3.4.3-1.el6',PKG_ARCH_DEFAULT);

"/software/packages"=pkg_repl("nagios-plugins");
"/software/packages"=pkg_repl("nagios-plugins-by_ssh");
"/software/packages"=pkg_repl("nagios-plugins-cluster");
"/software/packages"=pkg_repl("nagios-plugins-dig");
"/software/packages"=pkg_repl("nagios-plugins-disk");
"/software/packages"=pkg_repl("nagios-plugins-dns");
"/software/packages"=pkg_repl("nagios-plugins-dummy");
"/software/packages"=pkg_repl("nagios-plugins-hpjd");
"/software/packages"=pkg_repl("nagios-plugins-http");
"/software/packages"=pkg_repl("nagios-plugins-icmp");
"/software/packages"=pkg_repl("nagios-plugins-ifstatus");
"/software/packages"=pkg_repl("nagios-plugins-ldap");
"/software/packages"=pkg_repl("nagios-plugins-load");
"/software/packages"=pkg_repl("nagios-plugins-mysql");
"/software/packages"=pkg_repl("nagios-plugins-nagios");
"/software/packages"=pkg_repl("nagios-plugins-nt");
"/software/packages"=pkg_repl("nagios-plugins-perl");
"/software/packages"=pkg_repl("nagios-plugins-ping");
"/software/packages"=pkg_repl("nagios-plugins-procs");
"/software/packages"=pkg_repl("nagios-plugins-smtp");
"/software/packages"=pkg_repl("nagios-plugins-snmp");
"/software/packages"=pkg_repl("nagios-plugins-ssh");
"/software/packages"=pkg_repl("nagios-plugins-swap");
"/software/packages"=pkg_repl("nagios-plugins-tcp");
"/software/packages"=pkg_repl("nagios-plugins-users");

# httpd + php + mod_ssl ...and deps
"/software/packages"=pkg_repl("apr");
"/software/packages"=pkg_repl("apr-util");
"/software/packages"=pkg_repl("apr-util-ldap");
"/software/packages"=pkg_repl("bind-libs");
"/software/packages"=pkg_repl("bind-utils");
"/software/packages"=pkg_repl("compat-libevent-11a","3.2.1-1.el5.rf","x86_64");
"/software/packages"=pkg_repl("compat-openldap");
"/software/packages"=pkg_repl("fontconfig");
"/software/packages"=pkg_repl("freetype");
"/software/packages"=pkg_repl("gd");
"/software/packages"=pkg_repl("httpd");
"/software/packages"=pkg_repl("httpd-tools");
"/software/packages"=pkg_repl("libX11");
"/software/packages"=pkg_repl("libX11-common");
"/software/packages"=pkg_repl("libXau");
"/software/packages"=pkg_repl("libXpm");
#"/software/packages"=pkg_repl("libjpeg");
"/software/packages"=pkg_repl("libpng");
"/software/packages"=pkg_repl("libxcb");
"/software/packages"=pkg_repl("MySQL-shared-compat","5.1.39-0.rhel5","x86_64");
'/software/packages'=pkg_repl('mod_ssl');
"/software/packages"=pkg_repl("net-snmp-utils");
"/software/packages"=pkg_repl("openssl098e");
"/software/packages"=pkg_repl("php");
"/software/packages"=pkg_repl("php-cli");
"/software/packages"=pkg_repl("php-common");


# Reapply OS updates
include { 'config/os/updates' };
