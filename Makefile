CC=gcc
CFLAGS=-O3 -Wl,-s
INPUT=gcc.c getLocation.c cwrapper.c -o $$DIR/gcc.exe
PRE_CMD=rm -rf $$DIR && mkdir -p $$DIR &&
VERSION=-D__X_GNUC__=$$MAJOR -D__X_GNUC_MINOR__=$$MINOR -D__X_GNUC_PATCHLEVEL__=$$PATCH

all:
	DIR=ghc-8.2.1/x64  MAJOR=6 MINOR=2 PATCH=0 eval '$(PRE_CMD) $(CC) $(CFLAGS) $(INPUT) $(VERSION) -D__X_MINGW64__ -U__X_MINGW32__'
	DIR=ghc-8.2.1/x86  MAJOR=6 MINOR=2 PATCH=0 eval '$(PRE_CMD) $(CC) $(CFLAGS) $(INPUT) $(VERSION) -U__X_MINGW64__ -U__X_MINGW32__ -m32'

	DIR=ghc-8.0.1/x64  MAJOR=5 MINOR=2 PATCH=0 eval '$(PRE_CMD) $(CC) $(CFLAGS) $(INPUT) $(VERSION) -D__X_MINGW64__ -U__X_MINGW32__'
	DIR=ghc-8.0.1/x86  MAJOR=5 MINOR=2 PATCH=0 eval '$(PRE_CMD) $(CC) $(CFLAGS) $(INPUT) $(VERSION) -U__X_MINGW64__ -U__X_MINGW32__ -m32'

	DIR=ghc-7.10.3/x64 MAJOR=5 MINOR=2 PATCH=0 eval '$(PRE_CMD) $(CC) $(CFLAGS) $(INPUT) $(VERSION) -D__X_MINGW64__ -U__X_MINGW32__'
	DIR=ghc-7.10.3/x86 MAJOR=5 MINOR=2 PATCH=0 eval '$(PRE_CMD) $(CC) $(CFLAGS) $(INPUT) $(VERSION) -U__X_MINGW64__ -U__X_MINGW32__ -m32'

	DIR=ghc-7.10.2/x64 MAJOR=4 MINOR=5 PATCH=2 eval '$(PRE_CMD) $(CC) $(CFLAGS) $(INPUT) $(VERSION) -D__X_MINGW64__ -U__X_MINGW32__'
	DIR=ghc-7.10.2/x86 MAJOR=4 MINOR=5 PATCH=2 eval '$(PRE_CMD) $(CC) $(CFLAGS) $(INPUT) $(VERSION) -U__X_MINGW64__ -D__X_MINGW32__ -m32'

	DIR=ghc-7.10.1/x64 MAJOR=4 MINOR=5 PATCH=2 eval '$(PRE_CMD) $(CC) $(CFLAGS) $(INPUT) $(VERSION) -D__X_MINGW64__ -U__X_MINGW32__'
	DIR=ghc-7.10.1/x86 MAJOR=4 MINOR=5 PATCH=2 eval '$(PRE_CMD) $(CC) $(CFLAGS) $(INPUT) $(VERSION) -U__X_MINGW64__ -D__X_MINGW32__ -m32'

	DIR=ghc-7.8.3/x64  MAJOR=4 MINOR=5 PATCH=2 eval '$(PRE_CMD) $(CC) $(CFLAGS) $(INPUT) $(VERSION) -D__X_MINGW64__ -U__X_MINGW32__'
	DIR=ghc-7.8.3/x86  MAJOR=4 MINOR=5 PATCH=2 eval '$(PRE_CMD) $(CC) $(CFLAGS) $(INPUT) $(VERSION) -U__X_MINGW64__ -D__X_MINGW32__ -m32'

	DIR=ghc-7.8.2/x64  MAJOR=4 MINOR=5 PATCH=2 eval '$(PRE_CMD) $(CC) $(CFLAGS) $(INPUT) $(VERSION) -D__X_MINGW64__ -U__X_MINGW32__'
	DIR=ghc-7.8.2/x86  MAJOR=4 MINOR=5 PATCH=2 eval '$(PRE_CMD) $(CC) $(CFLAGS) $(INPUT) $(VERSION) -U__X_MINGW64__ -D__X_MINGW32__ -m32'

	DIR=ghc-7.8.1/x64  MAJOR=4 MINOR=5 PATCH=2 eval '$(PRE_CMD) $(CC) $(CFLAGS) $(INPUT) $(VERSION) -D__X_MINGW64__ -U__X_MINGW32__'
	DIR=ghc-7.8.1/x86  MAJOR=4 MINOR=5 PATCH=2 eval '$(PRE_CMD) $(CC) $(CFLAGS) $(INPUT) $(VERSION) -U__X_MINGW64__ -D__X_MINGW32__ -m32'

	DIR=ghc-7.6.3/x64  MAJOR=4 MINOR=5 PATCH=2 eval '$(PRE_CMD) $(CC) $(CFLAGS) $(INPUT) $(VERSION) -D__X_MINGW64__ -U__X_MINGW32__'
	DIR=ghc-7.6.3/x86  MAJOR=4 MINOR=5 PATCH=2 eval '$(PRE_CMD) $(CC) $(CFLAGS) $(INPUT) $(VERSION) -U__X_MINGW64__ -D__X_MINGW32__ -m32'

	DIR=ghc-7.6.2/x64 MAJOR=4 MINOR=5 PATCH=2 eval '$(PRE_CMD) $(CC) $(CFLAGS) $(INPUT) $(VERSION) -D__X_MINGW64__ -U__X_MINGW32__'
	DIR=ghc-7.6.2/x86 MAJOR=4 MINOR=5 PATCH=2 eval '$(PRE_CMD) $(CC) $(CFLAGS) $(INPUT) $(VERSION) -U__X_MINGW64__ -D__X_MINGW32__ -m32'

	DIR=ghc-7.6.1/x64 MAJOR=4 MINOR=5 PATCH=2 eval '$(PRE_CMD) $(CC) $(CFLAGS) $(INPUT) $(VERSION) -D__X_MINGW64__ -U__X_MINGW32__'
	DIR=ghc-7.6.1/x86 MAJOR=4 MINOR=5 PATCH=2 eval '$(PRE_CMD) $(CC) $(CFLAGS) $(INPUT) $(VERSION) -U__X_MINGW64__ -D__X_MINGW32__ -m32'

	DIR=ghc-7.4.2/x86 MAJOR=4 MINOR=5 PATCH=2 eval '$(PRE_CMD) $(CC) $(CFLAGS) $(INPUT) $(VERSION) -U__X_MINGW64__ -D__X_MINGW32__ -m32'

	DIR=ghc-7.4.1/x86 MAJOR=4 MINOR=5 PATCH=2 eval '$(PRE_CMD) $(CC) $(CFLAGS) $(INPUT) $(VERSION) -U__X_MINGW64__ -D__X_MINGW32__ -m32'

	DIR=ghc-7.2.2/x86 MAJOR=4 MINOR=5 PATCH=2 eval '$(PRE_CMD) $(CC) $(CFLAGS) $(INPUT) $(VERSION) -U__X_MINGW64__ -D__X_MINGW32__ -m32'

	DIR=ghc-7.2.1/x86 MAJOR=4 MINOR=5 PATCH=2 eval '$(PRE_CMD) $(CC) $(CFLAGS) $(INPUT) $(VERSION) -U__X_MINGW64__ -D__X_MINGW32__ -m32'