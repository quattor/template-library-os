unique template config/os/kvm;

'/software/packages'={
	pkg_repl('qemu-kvm','0.12.1.2-2.209.el6','x86_64');
	pkg_repl('celt051','0.5.1.3-0.el6','x86_64');
	pkg_repl('gpxe-roms-qemu','0.9.7-6.9.el6','noarch');
	pkg_repl('qemu-img','0.12.1.2-2.209.el6','x86_64');
	pkg_repl('seabios','0.6.1.2-8.el6','x86_64');
	pkg_repl('sgabios-bin','0-0.3.20110621svn.el6','noarch');
	pkg_repl('spice-server','0.8.2-5.el6','x86_64');
	pkg_repl('vgabios','0.6b-3.6.el6','noarch');

	pkg_repl('virt-manager'       ,'0.8.6-4.el6'  ,'noarch');
	pkg_repl('augeas-libs'        ,'0.7.2-6.el6'  ,'x86_64');
	pkg_repl('cyrus-sasl-md5'     ,'2.1.23-8.el6' ,'x86_64');
	pkg_repl('gnome-python2-gconf','2.28.0-3.el6' ,'x86_64');
	pkg_repl('gnutls-utils'       ,'2.8.5-4.el6'  ,'x86_64');
	pkg_repl('gtk-vnc'            ,'0.3.10-3.el6' ,'x86_64');
	pkg_repl('gtk-vnc-python'     ,'0.3.10-3.el6' ,'x86_64');
	pkg_repl('libvirt-client'     ,'0.8.7-18.el6' ,'x86_64');
	pkg_repl('libvirt-python'     ,'0.8.7-18.el6' ,'x86_64');
	pkg_repl('nc'                 ,'1.84-22.el6'  ,'x86_64');
	pkg_repl('netcf-libs'         ,'0.1.7-1.el6'  ,'x86_64');
	pkg_repl('python-virtinst'    ,'0.600.0-5.el6','noarch');
	pkg_repl('vte'                ,'0.25.1-6.el6' ,'x86_64');
	pkg_repl('yajl'               ,'1.0.7-3.el6'  ,'x86_64');

	pkg_repl('dnsmasq', '2.48-4.el6','x86_64');
	pkg_repl('ebtables','2.0.9-6.el6','x86_64');
	pkg_repl('libvirt', '0.8.7-18.el6','x86_64');
	pkg_repl('lzo',     '2.03-3.1.el6','x86_64');
	pkg_repl('lzop',    '1.02-0.9.rc1.el6','x86_64');
	pkg_repl('radvd',   '1.6-1.el6','x86_64');
};

include { 'config/os/updates' };
