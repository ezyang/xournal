## Process this file with automake to produce Makefile.in

if WIN32
  SUBDIRS = ttsubset win32
else
  SUBDIRS = ttsubset
endif

AM_CPPFLAGS = -DPACKAGE_DATA_DIR=\"${datadir}\" \
              -DPACKAGE_LOCALE_DIR=\"${XOURNAL_LOCALEDIR}\" \
              @PACKAGE_CFLAGS@

bin_PROGRAMS = xournal

xournal_SOURCES = \
	main.c xournal.h \
	xo-misc.c xo-misc.h \
	xo-file.c xo-file.h \
	xo-paint.c xo-paint.h \
	xo-selection.c xo-selection.h \
	xo-clipboard.c xo-clipboard.h \
	xo-image.c xo-image.h \
	xo-print.c xo-print.h \
	xo-support.c xo-support.h \
	xo-interface.c xo-interface.h \
	xo-callbacks.c xo-callbacks.h \
	xo-shapes.c xo-shapes.h

if WIN32
  xournal_LDFLAGS = -mwindows
  xournal_LDADD = win32/xournal.res ttsubset/libttsubset.a @PACKAGE_LIBS@ $(INTLLIBS) -lz
else
  xournal_LDADD = ttsubset/libttsubset.a @PACKAGE_LIBS@ $(INTLLIBS) -lX11 -lz -lm
endif

