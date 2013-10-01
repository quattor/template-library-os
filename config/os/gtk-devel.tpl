unique template config/os/gtk-devel;

'/software/packages'=pkg_repl('gtk2-devel','2.18.9-10.el6','x86_64');
'/software/packages'=pkg_repl('gtk+-devel','1.2.10-70.el6','x86_64');
'/software/packages'=pkg_repl('gtkspell-devel','2.0.16-1.el6','x86_64');
'/software/packages'=pkg_repl('gtksourceview-devel','1.8.5-7.el6.1','x86_64');
'/software/packages'=pkg_repl('glib-devel','1.2.10-33.el6','x86_64');
'/software/packages'=pkg_repl('atk-devel','1.28.0-2.el6','x86_64');
'/software/packages'=pkg_repl('pango-devel','1.28.1-3.el6_0.5','x86_64');
'/software/packages'=pkg_repl('libgnomeprint22-devel','2.18.6-4.el6','x86_64');
'/software/packages'=pkg_repl('aspell-devel','0.60.6-12.el6','x86_64');
'/software/packages'=pkg_repl('libbonobo-devel','2.24.2-5.el6','x86_64');
'/software/packages'=pkg_repl('libIDL-devel','0.8.13-2.1.el6','x86_64');
'/software/packages'=pkg_repl('ORBit2-devel','2.14.17-3.1.el6','x86_64');

'/software/packages'=pkg_repl('glib','1.2.10-33.el6','x86_64');
'/software/packages'=pkg_repl('gtk+','1.2.10-70.el6','x86_64');
'/software/packages'=pkg_repl('gtkspell','2.0.16-1.el6','x86_64');
'/software/packages'=pkg_repl('gdk-pixbuf','0.22.0-25.el5','x86_64');
include { 'config/os/updates' };
