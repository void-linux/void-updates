PREFIX ?= /usr/local

all:
	@:

install:
	install -d ${DESTDIR}/${PREFIX}/bin
	install -m755 void-updates.sh ${DESTDIR}/${PREFIX}/bin/void-updates
