unique template config/quattor/development;

variable PERL_BUILD_NUMBER ?= '-127.el6';

'/software/packages' = pkg_repl('perl-Test-Harness','3.17'+PERL_BUILD_NUMBER,'x86_64');
'/software/packages' = pkg_repl('perl-Test-Simple','0.92'+PERL_BUILD_NUMBER,'x86_64');
'/software/packages' = pkg_repl('perl-devel','5.10.1'+PERL_BUILD_NUMBER,'x86_64');
'/software/packages' = pkg_repl('perl-ExtUtils-MakeMaker','6.55'+PERL_BUILD_NUMBER,'x86_64');
'/software/packages' = pkg_repl('perl-ExtUtils-ParseXS','2.2003.0'+PERL_BUILD_NUMBER,'x86_64');

# For Perl unit testing
'/software/packages' = pkg_repl('perl-Test-MockModule','0.05-9.el6','noarch');
'/software/packages' = pkg_repl('perl-Test-MockObject','1.09-3.1.el6','noarch');
'/software/packages' = pkg_repl('perl-Test-NoWarnings','0.084-5.1.el6','noarch');
'/software/packages' = pkg_repl('perl-UNIVERSAL-can','1.15-1.el6','noarch');
'/software/packages' = pkg_repl('perl-UNIVERSAL-isa','1.03-1.el6','noarch');

# Pan compiler
include { 'quattor/client/pan_compiler' };

# Reapply OS updates
include { 'config/os/updates' };
