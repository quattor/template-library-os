unique template config/quattor/client;

include { 'rpms/quattor' };

'/software/packages' = pkg_repl('perl-Template-Toolkit','2.18-1.el5','x86_64');
'/software/packages' = pkg_repl('perl-Text-Autoformat','1.13-5.el5','noarch');
'/software/packages' = pkg_repl('perl-Pod-POM','0.17-6.el5','noarch');
'/software/packages' = pkg_repl('perl-Text-Reform','1.11-6.el5','noarch');
'/software/packages' = pkg_repl('perl-TeX-Hyphen','0.140-5.el5','noarch');

# OS errata and site specific updates
# Always reinclude. Must be last
include { 'config/os/updates' };


