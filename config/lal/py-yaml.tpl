unique template config/lal/py-yaml;

'/software/packages'={
  pkg_repl('libyaml','0.1.3-1.el6','x86_64');
  pkg_repl('PyYAML', '3.10-3.el6', 'x86_64');
};

include { 'config/os/updates' };
