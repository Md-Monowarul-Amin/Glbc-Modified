$(common-objpfx)posix/streams-compat.o: \
 streams-compat.c ../include/stdc-predef.h \
 $(common-objpfx)libc-modules.h \
 ../include/libc-symbols.h ../include/libc-misc.h \
 $(common-objpfx)config.h \
 ../sysdeps/generic/libc-symver.h ../sysdeps/i386/symbol-hacks.h \
 ../sysdeps/wordsize-32/divdi3-symbol-hacks.h \
 ../sysdeps/generic/symbol-hacks.h ../include/shlib-compat.h \
 $(common-objpfx)abi-versions.h
../include/stdc-predef.h:
$(common-objpfx)libc-modules.h:
../include/libc-symbols.h:
../include/libc-misc.h:
$(common-objpfx)config.h:
../sysdeps/generic/libc-symver.h:
../sysdeps/i386/symbol-hacks.h:
../sysdeps/wordsize-32/divdi3-symbol-hacks.h:
../sysdeps/generic/symbol-hacks.h:
../include/shlib-compat.h:
$(common-objpfx)abi-versions.h:
