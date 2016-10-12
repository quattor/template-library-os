unique template rpms/java;

variable JAVA_DEVEL_ENABLED ?= true;

'/software/packages' = {
  if ( JAVA_DEVEL_ENABLED ) {
    java_variant = '-devel';
  } else {
    java_variant = '';
  };
  pkg_repl('java-1.6.0-openjdk'+java_variant);
  pkg_repl('java-1.7.0-openjdk'+java_variant);
  pkg_repl('java-1.8.0-openjdk'+java_variant);
  SELF;
};
