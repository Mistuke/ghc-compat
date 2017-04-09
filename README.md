# ghc-compat
**Backported compatibility shims for the GHC compilers on Windows 10 Creative Update**

A recent change in Windows 10 build 15019 and newer has pointed out a flaw in our
driver code.

A call to the Windows API `FreeConsole` just after `CreateProcess` is making Windows
treat the process as an interactive process. In which case it tries to use the
Desktop session but fails resulting in a very cryptic error with the code `0xc0000142`.

This has been fixed for `GHC 8.2.1` but older GHC compilers are now all broken. Here
you can find the updated and backported GHC wrappers for older GHC releases.

To use, place the `gcc.exe` for the version you want to patch into `mingw/bin/` replacing
the old shims.

To compile the shim yourself use:

```sh
$ make all
```

For the related GHC issue see the GHC issue tracker [1].

**Recent GHC/GCC Deployment History**

| GHC    | Distro x86 | GCC    | Binutils | Distro x86_64 | GCC     | Binutils |
| ------ | ------     | ------ | ------   | ------        |  ------ | ------   |
| 8.4.1  | MinGW-w64  | 6.3.0  | 2.28     | MinGW-w64     | 6.3.0   | 2.28     |
| 8.2.1  | MinGW-w64  | 6.2.0  | 2.27     | MinGW-w64     | 6.2.0   | 2.27     |
| 8.0.1  | MinGW-w64  | 5.2.0  | 2.25     | MinGW-w64     | 5.2.0   | 2.25     |
| 7.10.3 | MinGW-w64  | 5.2.0  | 2.25     | MinGW-w64     | 5.2.0   | 2.25     |
| 7.10.2 | MinGW      | 4.5.2  | 2.20     | MinGW-w64     | 4.6.3   | 2.20     |
| 7.10.1 | MinGW      | 4.5.2  | 2.20     | MinGW-w64     | 4.6.3   | 2.20     |
| 7.8.3  | MinGW      | 4.5.2  | 2.20     | MinGW-w64     | 4.6.3   | 2.20     |
| 7.8.2  | MinGW      | 4.5.2  | 2.20     | MinGW-w64     | 4.6.3   | 2.20     |
| 7.8.1  | MinGW      | 4.5.2  | 2.20     | MinGW-w64     | 4.6.3   | 2.20     |
| 7.6.3  | MinGW      | 4.5.2  | 2.20     | MinGW-w64     | 4.6.3   | 2.20     |
| 7.6.2  | MinGW      | 4.5.2  | 2.20     | MinGW-w64     | 4.6.3   | 2.20     |
| 7.6.1  | MinGW      | 4.5.2  | 2.20     | MinGW-w64     | 4.6.3   | 2.20     |
| 7.4.2  | MinGW      | 4.5.2  | 2.20     | -             | -       | -        |
| 7.4.1  | MinGW      | 4.5.2  | 2.20     | -             | -       | -        |
| 7.2.2  | MinGW      | 4.5.2  | 2.20     | -             | -       | -        |
| 7.2.1  | MinGW      | 4.5.2  | 2.20     | -             | -       | -        |

- Your friendly neighbourhood GHC Windows maintainer.

[1] https://ghc.haskell.org/trac/ghc/ticket/13411