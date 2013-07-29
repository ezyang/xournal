#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT([FULL-PACKAGE-NAME], [VERSION], [BUG-REPORT-ADDRESS])
AM_INIT_AUTOMAKE
AC_CONFIG_SRCDIR([config.h.in])
AC_CONFIG_HEADERS([config.h])
AC_CONFIG_MACRO_DIR([m4])
AC_USE_SYSTEM_EXTENSIONS
AM_MAINTAINER_MODE

# Checks for programs.
AC_PROG_CXX
AC_PROG_CC
AC_PROG_LN_S
AC_PROG_MAKE_SET
AM_PROG_AR
AC_HEADER_STDC
LT_INIT

# Checks for libraries.
AC_CHECK_LIB([X11], [XUnits])
AC_CHECK_LIB([m], [sin])
AC_CHECK_LIB([z], [inflateEnd])

# Checks for header files.
AC_PATH_X
AC_CHECK_HEADERS([fcntl.h libintl.h locale.h memory.h stdlib.h string.h strings.h unistd.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_CHECK_HEADER_STDBOOL
AC_C_INLINE
AC_TYPE_OFF_T
AC_TYPE_SIZE_T

# Checks for library functions.
AC_FUNC_MALLOC
AC_FUNC_STRTOD
AC_CHECK_FUNCS([bzero floor memmove memset mkdir setlocale sqrt strchr strdup strrchr strstr strtol strtoul])

# Check for package modules.
pkg_modules="gtk+-2.0 >= 2.10.0 libgnomecanvas-2.0 >= 2.4.0 poppler-glib >= 0.5.4 pangoft2 >= 1.0"
PKG_CHECK_MODULES(PACKAGE, [$pkg_modules])
AC_SUBST(PACKAGE_CFLAGS)
AC_SUBST(PACKAGE_LIBS)

# Detect Windows environment...
AC_CANONICAL_HOST
AC_MSG_CHECKING([for Windows environment])
case "$host" in
 *-*-mingw*)
   os_win32=yes;;
 *)
   os_win32=no;;
esac
AC_MSG_RESULT([$os_win32])
AM_CONDITIONAL(WIN32, test "$os_win32" = "yes")

# Localization...

#AM_GNU_GETTEXT([external])
#AM_GNU_GETTEXT_VERSION([0.18.1])

#IT_PROG_INTLTOOL([0.35.0])
GETTEXT_PACKAGE=xournal
AC_SUBST(GETTEXT_PACKAGE)
AC_DEFINE_UNQUOTED(GETTEXT_PACKAGE,"$GETTEXT_PACKAGE", [Gettext package.])
AM_GLIB_GNU_GETTEXT()
XOURNAL_LOCALEDIR=[${datadir}/locale]
AC_SUBST(XOURNAL_LOCALEDIR)

# And we're done.

AC_CONFIG_FILES([Makefile
                 src/Makefile
                 src/ttsubset/Makefile
                 po/Makefile.in
                 ])
#                src/win32/Makefile
AC_OUTPUT
