#!/bin/bash
set -ex
glib-gettextize --force --copy
autoreconf -fvi
./configure $@
