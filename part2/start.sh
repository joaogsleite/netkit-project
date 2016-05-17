

if [ "$1" = "dns" ]; then
	lstart sedeRouter sedePublicSwitch sedeEmailServer sedeHttpServer sedeAdminSwitch sedeRhPc leileiRouter leileiServer
fi

if [ "$1" = "ssh" ]; then
	lstart sedeRouter sedePublicSwitch sedeEmailServer leileiRouter adminPc
fi

if [ "$1" = "ssh2" ]; then
	lstart sedeRouter sedePublicSwitch sedeEmailServer sedeHttpServer sedePrivateSwitch sedeMonitor sedeFileServer leileiRouter adminPc
fi

if [ "$1" = "ftp" ]; then
	lstart sedeRouter sedePublicSwitch sedeEmailServer sedePrivateSwitch sedeFileServer sedeAdminSwitch sedeRhPc
fi

if [ "$1" = "ftp2" ]; then
	lstart sedeRouter sedePublicSwitch sedeEmailServer sedePrivateSwitch sedeFileServer sedeAdminSwitch sedeRhPc leileiRouter leileiServer
fi

if [ "$1" = "lisboa" ]; then
	lstart sedeRouter sedePublicSwitch sedeEmailServer leileiRouter leileiServer lisboaRouter lisboaAdminSwitch lisboaAdminArmPc
fi

