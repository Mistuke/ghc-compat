# ghc-compat
## Backported compatibility shims for the GHC compilers on Windows 10 Creative Update

A recent change in Windows 10 build 15019 and newer has pointed out a flaw in our
driver code.

A call to the Windows API `FreeConsole` just after `CreateProcess` is making Windows
treat the process as an interactive process. In which case it tries to use the
Desktop session but fails resulting in a very cryptic error with the code `0xc0000142`.

This has been fixed for `GHC 8.2.1` but older GHC compilers are now all broken. Here
you can find the updated and backported GHC wrappers for older GHC releases.

To use, place the `gcc.exe` for the version you want to patch into `mingw/bin/` replacing
the old shims.

To compile the shim yourself use `make all`.

For the related GHC issue see https://ghc.haskell.org/trac/ghc/ticket/13411

- Your friendly neighbourhood GHC Windows maintainer.