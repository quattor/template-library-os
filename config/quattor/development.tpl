unique template config/quattor/development;

'/software/packages' = pkg_repl('perl-Template-Toolkit','2.18-1.el5','x86_64');
'/software/packages' = pkg_repl('perl-Text-Autoformat','1.13-5.el5','noarch');
'/software/packages' = pkg_repl('perl-Pod-POM','0.17-6.el5','noarch');
'/software/packages' = pkg_repl('perl-Text-Reform','1.11-6.el5','noarch');
'/software/packages' = pkg_repl('perl-TeX-Hyphen','0.140-5.el5','noarch');

# For Perl unit testing
'/software/packages' = pkg_repl('perl-Test-MockModule','0.05-5.el5','noarch');
'/software/packages' = pkg_repl('perl-Test-MockObject','1.08-2.el5','noarch');
'/software/packages' = pkg_repl('perl-Test-NoWarnings','0.083-1.el5','noarch');
'/software/packages' = pkg_repl('perl-UNIVERSAL-can','1.12-1.el5','noarch');
'/software/packages' = pkg_repl('perl-UNIVERSAL-isa','0.06-4.el5','noarch');

# Pan compiler
include { 'quattor/client/pan_compiler' };

# Reapply OS updates
include { 'config/os/updates' };
