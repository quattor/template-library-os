unique template config/lal/networker;

'/software/packages'={
  pkg_repl('openmotif'          ,'2.3.3-4.el6'   ,'x86_64');
  pkg_repl('ksh'                ,'20100621-16.el6','x86_64');
  pkg_repl('compat-libcap1'     ,'1.10-1'        ,'x86_64');
  pkg_repl('compat-libstdc++-33','3.2.3-69.el6'  ,'x86_64');
  pkg_repl('glibc'              ,'2.12-1.25.el6' ,'i686'  );
  pkg_repl('libXp'              ,'1.0.0-15.1.el6','x86_64');
  pkg_repl('nss-softokn-freebl' ,'3.12.9-11.el6'  ,'i686'  );
};

include { 'config/os/updates' };
