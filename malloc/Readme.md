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


# Building & Running a Custom 64-bit glibc


## Step 1: Create a fresh 64-bit build directory
```bash
cd ~/Desktop/glibc_modified
mkdir build64
cd build64
```
## Step 2: Configure for 64-bit
```bash
export PREFIX64=$HOME/glibc-custom-64

../configure \
  --prefix=$PREFIX64 \
  --disable-werror
```

## Step 3: Build and install
```bash
make -j$(nproc)
make install
```
## Step 4: Test it works
```bash
# Compile test binary as 64-bit
gcc -g test_malloc.c -o test_malloc_64_modified \
  -Wl,--dynamic-linker=$HOME/glibc-custom-64/lib/ld-linux-x86-64.so.2 \
  -L$HOME/glibc-custom-64/lib \
  -Wl,-rpath=$HOME/glibc-custom-64/lib

./test_malloc_64_modified
```


# Building & Running a Custom 32-bit glibc

This guide walks through compiling a modified 32-bit glibc and linking a test binary against it.

---

## Part A — Build the Modified 32-bit glibc

### 1. Install Multilib Support

```bash
sudo apt update
sudo apt install gcc-12-multilib g++-12-multilib libc6-dev-i386
```

### 2. Set the Install Prefix

```bash
export PREFIX32=$HOME/glibc-custom-32
```

### 3. Clean and Prepare the Build Directory

```bash
cd ~/Desktop/glibc_modified
rm -rf build32
mkdir build32
cd build32
rm -f config.cache
rm -rf $HOME/glibc-custom-32
```

### 4. Set the 32-bit Toolchain Environment

```bash
export PATH=$HOME/binutils-2.41/bin:$PATH
export CC="gcc-12 -m32"
export CXX="g++-12 -m32"
```

### 5. Configure for 32-bit

```bash
glibc_cv_ld_version_ok=yes \
../configure \
  --prefix=$PREFIX32 \
  --host=i686-linux-gnu \
  --build=x86_64-linux-gnu \
  --disable-werror
```

### 6. Build and Install

```bash
make -j$(nproc)
make install
```

After a successful install, the following files will be present:

| File | Description |
|------|-------------|
| `$PREFIX32/lib/ld-linux.so.2` | 32-bit dynamic linker/loader |
| `$PREFIX32/lib/libc.so.6` | 32-bit C library |

---

## Part B — Compile a 32-bit Test Binary

Compile `test.c` as a 32-bit binary and link it against your custom glibc:

```bash
gcc-12 -m32 -g test.c -o test32 \
  -Wl,--dynamic-linker=$HOME/glibc-custom-32/lib/ld-linux.so.2 \
  -L$HOME/glibc-custom-32/lib \
  -Wl,-rpath=$HOME/glibc-custom-32/lib
```

This command does three things:

- **`--dynamic-linker`** — embeds your custom `ld-linux.so.2` as the interpreter
- **`-L`** — tells the linker where to find your custom `libc.so.6` at link time
- **`-rpath`** — bakes the runtime library search path into the binary so it loads your custom glibc at execution time, not the system one

### Run the Binary

```bash
./test32
```

You should see any debug output from your modified glibc (e.g. `fprintf(stderr, ...)` calls from `PROTECT_PTR`, trie operations, etc.) followed by the normal program output.

---

## Notes

- Always `rm -rf build32` and reconfigure from scratch if you change compiler flags or the source significantly — incremental builds can silently pick up stale object files.
- To verify the binary is using your custom loader, run `readelf -l test32 | grep interpreter`. It should point to `$HOME/glibc-custom-32/lib/ld-linux.so.2`.
- To verify the runtime library path, run `readelf -d test32 | grep RPATH`.

########################  BUILD 32 #######################


mkdir build32
cd build32
../configure --prefix=/opt/glibc-32 --host=i686-pc-linux-gnu CC="gcc -m32" CXX="g++ -m32" CFLAGS="-m32"
make -j$(nproc)
sudo make install

