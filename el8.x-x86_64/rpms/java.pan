unique template rpms/java;

variable JAVA_VERSIONS ?= list('11');

'/software/packages' = {
    foreach (i; version; JAVA_VERSIONS) {
        pkg_repl(format('java-%s-openjdk', version));
    };
    SELF;
};
