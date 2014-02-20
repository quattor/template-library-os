unique template config/lal/shinken;

'/software/packages'=pkg_repl('python-devel','2.4.3-56.el5','x86_64');
'/software/packages'=pkg_repl('python-setuptools','0.6c5-2.el5','noarch');
'/software/packages'=pkg_repl('wget','1.11.4-3.el5_8.2','x86_64');
'/software/packages'=pkg_repl('mailx','8.1.1-44.2.2','x86_64');
'/software/packages'=pkg_repl('postfix','2.3.3-6.el5','x86_64');
'/software/packages'=pkg_repl('nagios-plugins','1.4.14-2.el5','x86_64');
'/software/packages'=pkg_repl('gd','2.0.33-9.4.el5_4.2','x86_64');
'/software/packages'=pkg_repl('php','5.1.6-39.el5_8','x86_64');
'/software/packages'=pkg_repl('php-cli','5.1.6-39.el5_8','x86_64');
'/software/packages'=pkg_repl('php-devel','5.1.6 27.el5_5.3','x86_64');
'/software/packages'=pkg_repl('php-pear','5.1.6 27.el5_5.3','x86_64');

include { 'config/os/updates' };
