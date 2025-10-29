unique template rpms/java;

variable JAVA_VERSIONS ?= list('17');

'/software/packages' = {
    foreach (i; version; JAVA_VERSIONS) {
        pkg_repl(format('java-%s-openjdk', version));
    };
    SELF;
};
