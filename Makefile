prefix   = /usr/local
dirmode  = 0755
filemode = 0444
binmode  = 0555

all:

install:
	install -d -m ${dirmode} "${prefix}/share/ayusin" \
	                         "${prefix}/share/ayusin/tasks.d"
	test -d "${prefix}/bin" || install -d -m ${dirmode} "${prefix}/bin"
	install -m ${filemode}   common "${prefix}/share/ayusin"
	install -m ${binmode}    tasks/* "${prefix}/share/ayusin/tasks.d"
	install -m ${binmode}    ayusin "${prefix}/bin"

.PHONY: all install
