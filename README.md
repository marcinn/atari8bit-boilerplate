Atari 8-bit Development Boilerplate
===================================

- Environment: Linux
- Assembler: mads (http://mads.atari8.info/)
- Target platforms: Atari 65XE, 130XE, 800XL
- Build tools: make
- Emulator: Atari800 (https://atari800.github.io/)


How to use
----------

Assemble and run target:

```
$ make all run
```

Clear environment:

```
$ make clean
```


Where to put the source code
----------------------------

1. Write code in `main.asm` file.
2. Change `OUT` variable in `Makefile` to your name.
