CC=gcc
CFLAGS=-O3 -Wl,-s
INPUT=gcc.c getLocation.c cwrapper.c -o $$DIR/gcc.exe
PRE_CMD=rm -rf $$DIR && mkdir -p $$DIR &&
VERSION=-D__X_GNUC__=$$MAJOR -D__X_GNUC_MINOR__=$$MINOR -D__X_GNUC_PATCHLEVEL__=$$PATCH

all:
	DIR=ghc-8.2.1/x64 MAJOR=6 MINOR=2 PATCH=0 eval '$(PRE_CMD) $(CC) $(CFLAGS) $(INPUT) $(VERSION)'