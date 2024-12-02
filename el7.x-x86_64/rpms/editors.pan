unique template rpms/editors;

prefix '/software/packages';

'{emacs}' = nlist();
'{emacs-nox}'     ?= nlist();
'{emacs-gnuplot}' ?= nlist();
'{emacs-auctex}'  ?= nlist();
'{vim-enhanced}' = nlist();
'{vim-X11}'       ?= nlist();
