unique template rpms/perf-tools;

'/software/packages' = {
    # Performance analysis tools
    pkg_repl('gperftools');
    pkg_repl('gperftools-devel');

    # Perf monitoring for linux kernel
    pkg_repl('perf');

    # Network perf tools
    pkg_repl('iperf3');

    # Nice top proc monitoring tool
    pkg_repl('htop');

    SELF;
};

