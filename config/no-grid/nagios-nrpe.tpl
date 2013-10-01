############################################################
#
# template config/no-grid/nagios-nrpe
#
# OS specific RPMs for nagios-nrpe
#
# RESPONSIBLE: Christos Triantafyllidis <ctria@grid.auth.gr>
#
############################################################

template config/no-grid/nagios-nrpe;

# RPMs from OS repository
"/software/packages"=pkg_repl("perl-Time-HiRes","1.55-3",PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("perl-Digest-HMAC","1.01-13","noarch");
"/software/packages"=pkg_repl("perl-Digest-SHA1","2.07-5",PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("perl-TimeDate","1.16-5.el4","noarch");


# RPMs from DAG repository
"/software/packages"=pkg_repl("nagios-nrpe","2.5.2-1.el4.rf",PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("nagios-plugins","1.4.12-1.el4.rf",PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("perl-Crypt-DES","2.05-3.2.el4.rf",PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("perl-Socket6","0.19-1.2.el4.rf",PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("perl-Net-SNMP","5.2.0-1.2.el4.rf","noarch");
"/software/packages"=pkg_repl("fping","2.4-1.b2.2.el4.rf",PKG_ARCH_DEFAULT);
