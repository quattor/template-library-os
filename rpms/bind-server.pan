unique template rpms/bind-server;

@{
desc = choose between standard and chrooted bind server
values = true for using the chrooted bind server
default = false
required = no
}
variable OS_BIND_CHROOTED ?= false;

'/software/packages' = {
    pkg_repl('bind');
    if ( OS_BIND_CHROOTED ) {
        pkg_repl('bind-chroot');
    };

    SELF;
};
