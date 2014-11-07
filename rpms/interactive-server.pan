unique template rpms/interactive-server;

prefix '/software/packages';

# X-system
'{xterm}'          ?= nlist();
'{xorg-x11-xauth}' ?= nlist();
'{dbus-x11}' ?= nlist();
'{libXScrnSaver}' ?= nlist();

# Libreoffice
'{libreoffice}'             ?= nlist();
'{libreoffice-langpack-fr}' ?= nlist();
'{libreoffice-langpack-en}' ?= nlist();

# Graphics
'{gnuplot}' ?= nlist();
'{plplot}'  ?= nlist();
'{xfig}'    ?= nlist();
'{gimp}'    ?= nlist();

# Maxima
'{maxima-gui}' ?= nlist();

# Mail
'{mutt}' ?= nlist();

# Network tools
'{telnet}'          ?= nlist();
'{ftp}'             ?= nlist();
'{lftp}'            ?= nlist();
'{nc}'              ?= nlist();
'{wireshark}'       ?= nlist();
'{wireshark-gnome}' ?= nlist();
'{rdesktop}'        ?= nlist();
'{tigervnc}'        ?= nlist();

# DB
'{mysql}' ?= nlist();
'{postgresql}' ?= nlist();

# Ghostview
'{gv}' ?= nlist();

