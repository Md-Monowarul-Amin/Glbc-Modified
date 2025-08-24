sudo apt-get install build-essential gcc-multilib g++-multilib     texinfo libncurses-dev libmpc-dev libmpfr-dev libgmp-dev     gawk bison

/home/saraj/glibc-custom/lib/ld-linux-x86-64.so.2 --library-path /home/saraj/glibc-custom/lib ./test64


Option B: Patch existing binaries after build with patchelf

If you already built a binary normally, you can rewrite its interpreter and rpath:

sudo apt install patchelf   # if not already installed

patchelf --set-interpreter /home/saraj/glibc-custom/lib/ld-linux-x86-64.so.2 \
        --set-rpath /home/saraj/glibc-custom/lib ./test64

Then ./test64 will use your custom loader and libc without needing special command-line invocation.


##################  Dynamic Linking 64 bit binay  #################################

Option A: Embed your custom loader & libc at link time (recommended for each binary)

When you compile, tell the linker to use your custom dynamic loader (ld-linux-x86-64.so.2) and to search your custom libc first. Example:

gcc-12 test.c -o test64 \
  -Wl,--dynamic-linker=/home/saraj/glibc-custom/lib/ld-linux-x86-64.so.2 \
  -L/home/saraj/glibc-custom/lib -Wl,-rpath=/home/saraj/glibc-custom/lib

What this does:

    --dynamic-linker=... embeds your custom loader as the interpreter, so ./test64 will automatically invoke your glibc.

    -L... and -rpath=... ensure at runtime it picks up libc.so.6 from your custom prefix.

Now just running:

./test64

will show your debug output (You are inside PROTECT_PTR) every time.

You can wrap that into an alias or small compile script:



#################### BUILD FOR 32 BIT Binary  ###################################

A. Build your modified 32-bit glibc

    Ensure multilib support is installed:

sudo apt update
sudo apt install gcc-12-multilib g++-12-multilib libc6-dev-i386

Create a separate install prefix for the 32-bit glibc, e.g.:

export PREFIX32=$HOME/glibc-custom-32

Clean / prepare build directory:

cd ~/Desktop/glibc_modified
rm -rf build32
mkdir build32
cd build32
rm -rf $HOME/glibc-custom-32


Set environment to use 32-bit compilation and your toolchain:

export PATH=$HOME/binutils-2.41/bin:$PATH
export CC="gcc-12 -m32"
export CXX="g++-12 -m32"

Configure for 32-bit:

rm -f config.cache
glibc_cv_ld_version_ok=yes \
  ../configure --prefix=$PREFIX32 --disable-werror

Build & install:

make -j$(nproc)
make install

After this you should have the 32-bit loader at:

    $PREFIX32/lib/ld-linux.so.2

    and the matching libc.so.6 there.




################################## Compile for 32 bit binary ##############################
B. Compile a 32-bit test binary that uses your custom 32-bit glibc

Assuming test.c is your source:

gcc-12 -m32 test.c -o test32 \
  -Wl,--dynamic-linker=$HOME/glibc-custom-32/lib/ld-linux.so.2 \
  -L$HOME/glibc-custom-32/lib -Wl,-rpath=$HOME/glibc-custom-32/lib

This embeds:

    Your custom interpreter (ld-linux.so.2)

    Runtime search path so it picks up your 32-bit libc.so.6

Now just run:

./test32

You should see your debug printf from PROTECT_PTR and the normal output.


########################  BUILD 32 #######################


mkdir build32
cd build32
../configure --prefix=/opt/glibc-32 --host=i686-pc-linux-gnu CC="gcc -m32" CXX="g++ -m32" CFLAGS="-m32"
make -j$(nproc)
sudo make install

