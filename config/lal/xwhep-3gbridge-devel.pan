unique template config/lal/xwhep-3gbridge-devel;

'/software/packages'={
	pkg_repl('glib2-devel','2.12.3-4.el5_3.1','x86_64');
	pkg_repl('mysql-devel','5.0.95-3.el5','x86_64');
	pkg_repl('pam-devel','0.99.6.2-12.el5','x86_64');
	pkg_repl('curl-devel','7.15.5-15.el5','x86_64');
	pkg_repl('libidn-devel','0.6.5-1.1','x86_64');
	pkg_repl('openssl-devel','0.9.8e-22.el5_8.4','x86_64');
	pkg_repl('e2fsprogs-devel','1.39-35.el5','x86_64');
	pkg_repl('keyutils-libs-devel','1.2-1.el5','x86_64');
	pkg_repl('krb5-devel','1.6.1-70.el5','x86_64');
	pkg_repl('libselinux-devel','1.33.4-5.7.el5','x86_64');
	pkg_repl('libsepol-devel','1.15.2-3.el5','x86_64');
};

include { 'config/os/updates' };
