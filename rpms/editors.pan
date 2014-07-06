unique template rpms/editors;

prefix '/software/packages';

'{emacs}' = nlist();
'{emacs-nox}'     ?= nlist();
'{emacs-gnuplot}' ?= nlist();
'{emacs-auctex}'  ?= nlist();
'{vim-enhanced}' = nlist();
'{vim-X11}'       ?= nlist();
'{xemacs}' = nlist();
'{xemacs-devel}' = nlist();
'{xemacs-el}' = nlist();
'{xemacs-info}' = nlist();
'{xemacs-packages-base-el}' = nlist();
'{xemacs-packages-extra}' = nlist();
'{xemacs=packages-extra-el}' = nlist();
'{xemacs-packages-extra-info}' = nlist();
