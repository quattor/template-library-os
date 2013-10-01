unique template config/lal/xwhep-client;

"/software/repositories" = push(create("repository/xwhep"));

'/software/packages'=pkg_repl('xwhep-client','8.0.0-1','noarch');
