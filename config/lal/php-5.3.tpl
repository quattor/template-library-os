unique template config/lal/php-5.3;

variable PHP_VERSION ?= '5.3.8-5.el5.remi.1';

'/software/packages'={
	pkg_del('mysql');
	pkg_del('MySQL-python');
	pkg_del('libdbi-dbd-mysql');
	pkg_del('mod_auth_mysql');
	pkg_del('mysql-bench');
	pkg_del('mysql-connector-odbc');
	pkg_del('mysql-devel');
	pkg_del('perl-DBD-MySQL');
	pkg_del('php-mysql');
	pkg_del('qt-MySQL');
};

'/software/packages'={
	pkg_repl('php',PHP_VERSION,'x86_64');
	pkg_repl('libedit','2.11-2.20080712cvs.el5','x86_64');
	pkg_repl('mysql-libs','5.5.19-1.el5.remi','x86_64');
	pkg_repl('t1lib','5.1.1-7.el5','x86_64');
	pkg_repl('php-cli',PHP_VERSION,'x86_64');
	pkg_repl('php-common',PHP_VERSION,'x86_64');
	pkg_repl('php-devel',PHP_VERSION,'x86_64');
	pkg_repl('php-gd',PHP_VERSION,'x86_64');
	pkg_repl('php-imap',PHP_VERSION,'x86_64');
	pkg_repl('php-ldap',PHP_VERSION,'x86_64');
	pkg_repl('php-mbstring',PHP_VERSION,'x86_64');
	pkg_repl('php-mysql',PHP_VERSION,'x86_64');
	pkg_repl('php-odbc',PHP_VERSION,'x86_64');
	pkg_repl('php-pdo',PHP_VERSION,'x86_64');
	pkg_repl('php-pgsql',PHP_VERSION,'x86_64');
	pkg_repl('php-xml',PHP_VERSION,'x86_64');
	pkg_repl('libc-client','2004g-2.2.1','x86_64');
};

'/software/packages'=pkg_del('mysql');

