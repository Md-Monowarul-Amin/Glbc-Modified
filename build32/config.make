# config.make.  Generated from config.make.in by configure.
# Don't edit this file.  Put configuration parameters in configparms instead.

version = 2.42.9000
release = development

# Installation prefixes.
install_root = $(DESTDIR)
prefix = /home/saraj/glibc-custom-32
exec_prefix = ${prefix}
datadir = ${datarootdir}
libdir = ${exec_prefix}/lib
bindir = ${exec_prefix}/bin
slibdir = 
rtlddir = 
complocaledir = 
sysconfdir = ${prefix}/etc
libexecdir = ${exec_prefix}/libexec
rootsbindir = 
infodir = ${datarootdir}/info
includedir = ${prefix}/include
datarootdir = ${prefix}/share
localstatedir = ${prefix}/var
localedir = ${datarootdir}/locale
multidir= 32

# Should we use and build ldconfig?
use-ldconfig = yes

# Maybe the `ldd' script must be rewritten.
ldd-rewrite-script = no

# System configuration.
config-machine = i686
base-machine = i386
config-vendor = pc
config-os = linux-gnu
config-sysdirs =  sysdeps/unix/sysv/linux/i386/i686 sysdeps/i386/i686/nptl sysdeps/unix/sysv/linux/i386 sysdeps/unix/sysv/linux/x86 sysdeps/x86/nptl sysdeps/i386/nptl sysdeps/unix/sysv/linux sysdeps/nptl sysdeps/pthread sysdeps/gnu sysdeps/unix/inet sysdeps/unix/sysv sysdeps/unix/i386 sysdeps/unix sysdeps/posix sysdeps/i386/i686/fpu/multiarch sysdeps/i386/i686/fpu sysdeps/i386/i686/multiarch sysdeps/i386/i686 sysdeps/i386/fpu sysdeps/x86/fpu sysdeps/i386 sysdeps/x86 sysdeps/wordsize-32 sysdeps/ieee754/float128 sysdeps/ieee754/ldbl-96 sysdeps/ieee754/dbl-64 sysdeps/ieee754/flt-32 sysdeps/ieee754 sysdeps/generic
cflags-cpu = 
asflags-cpu = 

config-extra-cflags = 
config-extra-cppflags = 
config-cflags-nofma = -ffp-contract=off

defines = 
sysheaders = 
sysincludes = 
c++-sysincludes = 
c++-cstdlib-header = 
c++-cmath-header = 
c++-bits-std_abs-h = 
enable-werror = no

have-z-execstack = yes
have-no-error-execstack = no
have-protected-data = yes
have-insert = no
have-glob-dat-reloc = yes
with-fp = yes
enable-timezone-tools = yes
unwind-find-fde = yes
have-fpie = yes
have-ssp = yes
stack-protector = -fno-stack-protector
no-stack-protector = -fno-stack-protector -DSTACK_PROTECTOR_LEVEL=0
fortify-source = -U_FORTIFY_SOURCE
no-fortify-source = -U_FORTIFY_SOURCE
have-selinux = no
have-libaudit = 
have-libcap = 
have-cc-with-libunwind = no
bind-now = no
have-cxx-thread_local = no
have-loop-to-function = yes
have-textrel_ifunc = yes

multi-arch = default

mach-interface-list = 

memory-tagging = no

# Configuration options.
build-shared = yes
build-profile = no
build-static-nss = no
cross-compiling = no
force-install = yes
build-nscd = yes
use-nscd = yes
build-hardcoded-path-in-tests= no
build-pt-chown = no
pthread-in-libc = yes
man-pages-version = 6.9.1

# Build tools.
CC = gcc-12 -m32
CXX = 
BUILD_CC = 
CFLAGS = -g -O2
CPPFLAGS-config = 
extra-nonshared-cflags = 
rtld-early-cflags = 
ASFLAGS-config =  -Wa,--noexecstack
AR = ar
NM = nm
MAKEINFO = makeinfo
AS = $(CC) -c
BISON = bison
AUTOCONF = no
OBJDUMP = objdump
OBJCOPY = objcopy
GPROF = gprof
READELF = readelf
STRIP = strip

# Installation tools.
INSTALL = /usr/bin/install -c
INSTALL_PROGRAM = ${INSTALL}
INSTALL_SCRIPT = ${INSTALL}
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_INFO = /usr/bin/install-info
LN_S = ln -s
MSGFMT = :

# Script execution tools.
BASH = /usr/bin/bash
AWK = gawk
PERL = /usr/bin/perl
PYTHON = python3 -B

# Additional libraries.
LIBGD = no

# Package versions and bug reporting configuration.
PKGVERSION = (GNU libc) 
PKGVERSION_TEXI = (GNU libc) 
REPORT_BUGS_TO = <https://www.gnu.org/software/libc/bugs.html>
REPORT_BUGS_TEXI = @uref{https://www.gnu.org/software/libc/bugs.html}

# More variables may be inserted below by configure.

static-cxx-tests = yes
with-lld = no
have-test-clang = no
have-test-clangxx = no
have-test-clang-19-or-less = 
have-gnu-retain = yes
have-z-start-stop-gc = yes
have-depaudit = yes
have-dt-relr = yes
have-no-dynamic-linker = yes
have-static-pie = yes
have-test-mtls-descriptor = gnu2
have-test-mtls-traditional = gnu
config-cflags-wno-ignored-attributes = 
config-cflags-signaling-nans = -fsignaling-nans
have-test-cc-cflags-fsemantic-interposition = yes
test-config-cflags-float-store = -ffloat-store
cc-option-wimplicit-fallthrough = -Wimplicit-fallthrough
cc-option-wfree-labels = 
cc-option-wmissing-parameter-name = 
have-test-cc-trampoline = yes
test-config-cflags-wno-restrict = -Wno-restrict
test-config-cflags-wno-fortify-source = -Wno-fortify-source
test-config-cflags-finput-charset-ascii = -finput-charset=ascii
test-config-cxxflags-finput-charset-ascii = 
have-test-stb-gnu-unique = no
supported-fortify = 2
no-file-offset-bits-source = 
no-time-bits-source = 
aligned-65536 = yes
have-x86-isa-level = 0
x86-isa-level-2-or-above = 2 3 4
x86-isa-level-3-or-above = 3 4
x86-isa-level-4-or-above = 4
enable-x86-isa-level = yes
have-test-cc-cflags-mfpmath-387 = yes
build-mathvec = no
have-ifunc = yes
have-gcc-ifunc = yes
build-pic-default = yes
cc-pie-default = yes
pde-load-address = 0x08048000
load-address-ldflag = -Wl,-Ttext-segment
have-cc-gcs = no
have-test-cc-gcs = no
have-ld-gcs = no
build-pie-default = yes
enable-static-pie = yes
have-libgcc_s = no
enable-gsframe = no
