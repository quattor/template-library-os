unique template config/os/fftw3;

'/software/packages' = pkg_repl('fftw3','3.1.2-5.el5.1','x86_64');
'/software/packages' = pkg_repl('fftw3','3.1.2-5.el5.1','i386');
'/software/packages' = pkg_repl('fftw3-devel','3.1.2-5.el5.1','x86_64');
'/software/packages' = pkg_repl('fftw3-devel','3.1.2-5.el5.1','i386');

# Re include RPM updates
include { 'config/os/updates' };


