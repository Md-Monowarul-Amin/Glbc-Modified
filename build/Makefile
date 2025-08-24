srcdir = ..

TEST_CC = /usr/bin/gcc-12
TEST_CXX = /usr/bin/g++-12
test-cc-option-wimplicit-fallthrough = -Wimplicit-fallthrough
test-config-cflags-mprefer-vector-width = yes
test-config-cflags-signaling-nans = -fsignaling-nans
test-config-cflags-wno-ignored-attributes = 
test-enable-cet = yes
test-have-mamx-tile = no
test-have-static-pie = yes
test-supported-fortify = 3

# Uncomment the line below if you want to do parallel build.
# PARALLELMFLAGS = -j 4

.PHONY: all install bench

all .DEFAULT:
	$(MAKE) -r PARALLELMFLAGS="$(PARALLELMFLAGS)" -C $(srcdir) objdir=`pwd` $@

check xcheck test:
	$(MAKE) -r PARALLELMFLAGS="$(PARALLELMFLAGS)" -C $(srcdir) \
		CC="$(TEST_CC)" CXX="$(TEST_CXX)" \
		cc-option-wimplicit-fallthrough="$(test-cc-option-wimplicit-fallthrough)" \
		config-cflags-mprefer-vector-width="$(test-config-cflags-mprefer-vector-width)" \
		config-cflags-signaling-nans="$(test-config-cflags-signaling-nans)" \
		config-cflags-wno-ignored-attributes="$(test-config-cflags-wno-ignored-attributes)" \
		enable-cet="$(test-enable-cet)" \
		have-mamx-tile="$(test-have-mamx-tile)" \
		have-static-pie="$(test-have-static-pie)" \
		supported-fortify="$(test-supported-fortify)" \
		objdir=`pwd` $@

install:
	LC_ALL=C; export LC_ALL; \
	$(MAKE) -r PARALLELMFLAGS="$(PARALLELMFLAGS)" -C $(srcdir) objdir=`pwd` $@

bench bench-clean bench-build:
	$(MAKE) -C $(srcdir)/benchtests $(PARALLELMFLAGS) objdir=`pwd` $@
