template rpms/errata/20100615-fix;

'/software/packages'=if (exists('/software/packages/{perl-rrdtool}')) {
    pkg_del('perl-rrdtool');
    pkg_repl('rrdtool-perl','1.3.9-2.sl5','x86_64');
} else {
    SELF;
};

'/software/packages'=if (exists('/software/packages/{rrdtool}')) {
    pkg_repl('ruby','1.8.5-5.el5_4.8','x86_64');
    pkg_repl('ruby-libs','1.8.5-5.el5_4.8','x86_64');
} else {
    SELF
};
