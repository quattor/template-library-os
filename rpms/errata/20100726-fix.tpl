template rpms/errata/20100726-fix;

#'/software/packages'=if (exists('/software/packages/{perl-rrdtool}')) {
#    pkg_del('perl-rrdtool');
#    pkg_repl('rrdtool-perl','1.3.9-2.sl5','x86_64');
#} else {
#    SELF;
#};

#'/software/packages'=if (exists('/software/packages/{rrdtool}')) {
#    pkg_repl('ruby','1.8.5-5.el5_4.8','x86_64');
#    pkg_repl('ruby-libs','1.8.5-5.el5_4.8','x86_64');
#} else {
#    SELF
#};

'/software/packages'= if(exists(SELF['cups'])) {
  pkg_repl('poppler-utils','0.5.4-4.4.el5_4.11','x86_64');
#  pkg_repl('poppler','0.5.4-4.4.el5_3.9','x86_64');
} else {
  SELF;
};

'/software/packages'= if(
        exists(SELF[escape('samba-common')]) ||
        exists(SELF[escape('kdebase')])
) {
  pkg_repl('libsmbclient','3.0.33-3.29.el5_5','x86_64');
} else {
 SELF;
};

'/software/packages'= if(
        exists(SELF[escape('tzdata')])
) {
        pkg_del('tzdata');
        pkg_repl('tzdata','2010i-1.el5','x86_64');
} else {
        SELF;
};

'/software/packages'= if (
        exists(SELF[escape('xulrunner-devel')])
) {
        pkg_repl('alsa-lib-devel','1.0.17-1.el5','x86_64');
        pkg_repl('freetype-devel','2.2.1-21.el5_3','x86_64');
        pkg_repl('gnome-vfs2-devel','2.16.2-6.el5','x86_64');
        pkg_repl('gtk2-devel','2.10.4-20.el5','x86_64');
        pkg_repl('libIDL-devel','0.8.7-1.fc6','x86_64');
        pkg_repl('libXrender-devel','0.9.1-3.1','x86_64');
        pkg_repl('libXt-devel','1.0.2-3.2.el5','x86_64');
        pkg_repl('libgnome-devel','2.16.0-6.el5','x86_64');
        pkg_repl('libgnomeui-devel','2.16.0-5.el5','x86_64');
        pkg_repl('libjpeg-devel','6b-37','x86_64');
        pkg_repl('libnotify-devel','0.4.2-6.el5','x86_64');
        pkg_repl('pango-devel','1.14.9-8.el5','x86_64');
        pkg_repl('startup-notification-devel','0.8-4.1','x86_64');
        pkg_repl('GConf2-devel','2.14.0-9.el5','x86_64');
        pkg_repl('dbus-glib-devel','0.73-8.el5','x86_64');
        pkg_repl('hal-devel','0.5.8.1-59.el5','x86_64');
        pkg_repl('atk-devel','1.12.2-1.fc6','x86_64');
        pkg_repl('cairo-devel','1.2.4-5.el5','x86_64');
        pkg_repl('libXi-devel','1.0.1-4.el5_4','x86_64');
        pkg_repl('libXinerama-devel','1.0.1-2.1','x86_64');
        pkg_repl('libX11-devel','1.0.3-11.el5','x86_64');
        pkg_repl('libXcursor-devel','1.1.7-1.1','x86_64');
        pkg_repl('libXext-devel','1.0.1-2.1','x86_64');
        pkg_repl('libXfixes-devel','4.0.1-2.1','x86_64');
        pkg_repl('libXrandr-devel','1.1.1-3.3','x86_64');
        pkg_repl('libSM-devel','1.0.1-3.1','x86_64');
        pkg_repl('ORBit2-devel','2.14.3-5.el5','x86_64');
        pkg_repl('esound-devel','0.2.36-3','x86_64');
        pkg_repl('libbonobo-devel','2.16.0-1.fc6','x86_64');
        pkg_repl('gnome-keyring-devel','0.6.0-1.fc6','x86_64');
        pkg_repl('libICE-devel','1.0.1-2.1','x86_64');
        pkg_repl('libart_lgpl-devel','2.3.17-4','x86_64');
        pkg_repl('libbonoboui-devel','2.16.0-1.fc6','x86_64');
        pkg_repl('libglade2-devel','2.6.0-2','x86_64');
        pkg_repl('libgnomecanvas-devel','2.14.0-4.1','x86_64');
        pkg_repl('fontconfig-devel','2.4.1-7.el5','x86_64');
        pkg_repl('libXft-devel','2.1.10-1.1','x86_64');
        pkg_repl('audiofile-devel','0.2.6-5','x86_64');
        pkg_repl('libpng-devel','1.2.10-7.1.el5_5.3','x86_64');
        pkg_repl('xorg-x11-proto-devel','7.1-13.el5','x86_64');
        pkg_repl('libXau-devel','1.0.1-3.1','x86_64');
        pkg_repl('libXdmcp-devel','1.0.1-2.1','x86_64');
        pkg_repl('mesa-libGL-devel','6.5.1-7.8.el5','x86_64');
} else {
        SELF;
};

