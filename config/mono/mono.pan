unique template config/mono/mono;

variable MONO_VERSION ?= '2.4.2.3-2.el5.kb';
variable MONO_ARCH ?= 'x86_64';

include { 'repository/config/mono' };

'/software/packages'=pkg_repl('mono-web-devel',MONO_VERSION,MONO_ARCH);
'/software/packages'=pkg_repl('mono-data-firebird',MONO_VERSION,MONO_ARCH);
'/software/packages'=pkg_repl('mono-extras',MONO_VERSION,MONO_ARCH);
'/software/packages'=pkg_repl('mono-core',MONO_VERSION,MONO_ARCH);
'/software/packages'=pkg_repl('mono-data-oracle',MONO_VERSION,MONO_ARCH);
'/software/packages'=pkg_repl('mono-moonlight',MONO_VERSION,MONO_ARCH);
'/software/packages'=pkg_repl('mono-jscript',MONO_VERSION,MONO_ARCH);
'/software/packages'=pkg_repl('mono-data',MONO_VERSION,MONO_ARCH);
'/software/packages'=pkg_repl('mono-data-postgresql',MONO_VERSION,MONO_ARCH);
'/software/packages'=pkg_repl('mono-web',MONO_VERSION,MONO_ARCH);
'/software/packages'=pkg_repl('mono-wcf',MONO_VERSION,MONO_ARCH);
'/software/packages'=pkg_repl('mono-data-sqlite',MONO_VERSION,MONO_ARCH);
'/software/packages'=pkg_repl('mono-winforms',MONO_VERSION,MONO_ARCH);
'/software/packages'=pkg_repl('mono-locale-extras',MONO_VERSION,MONO_ARCH);

'/software/packages'=pkg_repl('libgdiplus','2.4.2-2.el5.kb',MONO_ARCH);

include { 'config/os/updates' };
