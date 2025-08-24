#!/bin/bash
builddir=`dirname "$0"`
GCONV_PATH="${builddir}/iconvdata"

usage () {
cat << EOF
Usage: $0 [OPTIONS] <program> [ARGUMENTS...]

  --tool=TOOL  Run with the specified TOOL. It can be strace, rpctrace,
               valgrind or container. The container will run within
               support/test-container.  For strace and valgrind,
               additional arguments can be passed after the tool name.
EOF

  exit 1
}

toolname=default
while test $# -gt 0 ; do
  case "$1" in
    --tool=*)
      toolname="${1:7}"
      shift
      ;;
    --*)
      usage
      ;;
    *)
      break
      ;;
  esac
done

if test $# -eq 0 ; then
  usage
fi

case "$toolname" in
  default)
    exec   env GCONV_PATH="${builddir}"/iconvdata LOCPATH="${builddir}"/localedata LC_ALL=C  "${builddir}"/elf/ld-linux-x86-64.so.2 --library-path "${builddir}":"${builddir}"/math:"${builddir}"/elf:"${builddir}"/dlfcn:"${builddir}"/nss:"${builddir}"/nis:"${builddir}"/rt:"${builddir}"/resolv:"${builddir}"/mathvec:"${builddir}"/support:"${builddir}"/misc:"${builddir}"/debug:"${builddir}"/nptl:/usr/lib/gcc/x86_64-linux-gnu/12/../../../x86_64-linux-gnu/:/usr/lib/gcc/x86_64-linux-gnu/12/../../../x86_64-linux-gnu/ ${1+"$@"}
    ;;
  strace*)
    exec $toolname  -EGCONV_PATH=/home/saraj/Desktop/glibc_modified/build/iconvdata  -ELOCPATH=/home/saraj/Desktop/glibc_modified/build/localedata  -ELC_ALL=C  /home/saraj/Desktop/glibc_modified/build/elf/ld-linux-x86-64.so.2 --library-path /home/saraj/Desktop/glibc_modified/build:/home/saraj/Desktop/glibc_modified/build/math:/home/saraj/Desktop/glibc_modified/build/elf:/home/saraj/Desktop/glibc_modified/build/dlfcn:/home/saraj/Desktop/glibc_modified/build/nss:/home/saraj/Desktop/glibc_modified/build/nis:/home/saraj/Desktop/glibc_modified/build/rt:/home/saraj/Desktop/glibc_modified/build/resolv:/home/saraj/Desktop/glibc_modified/build/mathvec:/home/saraj/Desktop/glibc_modified/build/support:/home/saraj/Desktop/glibc_modified/build/misc:/home/saraj/Desktop/glibc_modified/build/debug:/home/saraj/Desktop/glibc_modified/build/nptl:/usr/lib/gcc/x86_64-linux-gnu/12/../../../x86_64-linux-gnu/:/usr/lib/gcc/x86_64-linux-gnu/12/../../../x86_64-linux-gnu/ ${1+"$@"}
    ;;
  rpctrace)
    exec rpctrace  -EGCONV_PATH=/home/saraj/Desktop/glibc_modified/build/iconvdata  -ELOCPATH=/home/saraj/Desktop/glibc_modified/build/localedata  -ELC_ALL=C  /home/saraj/Desktop/glibc_modified/build/elf/ld-linux-x86-64.so.2 --library-path /home/saraj/Desktop/glibc_modified/build:/home/saraj/Desktop/glibc_modified/build/math:/home/saraj/Desktop/glibc_modified/build/elf:/home/saraj/Desktop/glibc_modified/build/dlfcn:/home/saraj/Desktop/glibc_modified/build/nss:/home/saraj/Desktop/glibc_modified/build/nis:/home/saraj/Desktop/glibc_modified/build/rt:/home/saraj/Desktop/glibc_modified/build/resolv:/home/saraj/Desktop/glibc_modified/build/mathvec:/home/saraj/Desktop/glibc_modified/build/support:/home/saraj/Desktop/glibc_modified/build/misc:/home/saraj/Desktop/glibc_modified/build/debug:/home/saraj/Desktop/glibc_modified/build/nptl:/usr/lib/gcc/x86_64-linux-gnu/12/../../../x86_64-linux-gnu/:/usr/lib/gcc/x86_64-linux-gnu/12/../../../x86_64-linux-gnu/ ${1+"$@"}
    ;;
  valgrind*)
    exec env GCONV_PATH=/home/saraj/Desktop/glibc_modified/build/iconvdata LOCPATH=/home/saraj/Desktop/glibc_modified/build/localedata LC_ALL=C $toolname  /home/saraj/Desktop/glibc_modified/build/elf/ld-linux-x86-64.so.2 --library-path /home/saraj/Desktop/glibc_modified/build:/home/saraj/Desktop/glibc_modified/build/math:/home/saraj/Desktop/glibc_modified/build/elf:/home/saraj/Desktop/glibc_modified/build/dlfcn:/home/saraj/Desktop/glibc_modified/build/nss:/home/saraj/Desktop/glibc_modified/build/nis:/home/saraj/Desktop/glibc_modified/build/rt:/home/saraj/Desktop/glibc_modified/build/resolv:/home/saraj/Desktop/glibc_modified/build/mathvec:/home/saraj/Desktop/glibc_modified/build/support:/home/saraj/Desktop/glibc_modified/build/misc:/home/saraj/Desktop/glibc_modified/build/debug:/home/saraj/Desktop/glibc_modified/build/nptl:/usr/lib/gcc/x86_64-linux-gnu/12/../../../x86_64-linux-gnu/:/usr/lib/gcc/x86_64-linux-gnu/12/../../../x86_64-linux-gnu/ ${1+"$@"}
    ;;
  container)
    exec env GCONV_PATH=/home/saraj/Desktop/glibc_modified/build/iconvdata LOCPATH=/home/saraj/Desktop/glibc_modified/build/localedata LC_ALL=C  /home/saraj/Desktop/glibc_modified/build/elf/ld-linux-x86-64.so.2 --library-path /home/saraj/Desktop/glibc_modified/build:/home/saraj/Desktop/glibc_modified/build/math:/home/saraj/Desktop/glibc_modified/build/elf:/home/saraj/Desktop/glibc_modified/build/dlfcn:/home/saraj/Desktop/glibc_modified/build/nss:/home/saraj/Desktop/glibc_modified/build/nis:/home/saraj/Desktop/glibc_modified/build/rt:/home/saraj/Desktop/glibc_modified/build/resolv:/home/saraj/Desktop/glibc_modified/build/mathvec:/home/saraj/Desktop/glibc_modified/build/support:/home/saraj/Desktop/glibc_modified/build/misc:/home/saraj/Desktop/glibc_modified/build/debug:/home/saraj/Desktop/glibc_modified/build/nptl:/usr/lib/gcc/x86_64-linux-gnu/12/../../../x86_64-linux-gnu/:/usr/lib/gcc/x86_64-linux-gnu/12/../../../x86_64-linux-gnu/ /home/saraj/Desktop/glibc_modified/build/support/test-container env GCONV_PATH=/home/saraj/Desktop/glibc_modified/build/iconvdata LOCPATH=/home/saraj/Desktop/glibc_modified/build/localedata LC_ALL=C  /home/saraj/Desktop/glibc_modified/build/elf/ld-linux-x86-64.so.2 --library-path /home/saraj/Desktop/glibc_modified/build:/home/saraj/Desktop/glibc_modified/build/math:/home/saraj/Desktop/glibc_modified/build/elf:/home/saraj/Desktop/glibc_modified/build/dlfcn:/home/saraj/Desktop/glibc_modified/build/nss:/home/saraj/Desktop/glibc_modified/build/nis:/home/saraj/Desktop/glibc_modified/build/rt:/home/saraj/Desktop/glibc_modified/build/resolv:/home/saraj/Desktop/glibc_modified/build/mathvec:/home/saraj/Desktop/glibc_modified/build/support:/home/saraj/Desktop/glibc_modified/build/misc:/home/saraj/Desktop/glibc_modified/build/debug:/home/saraj/Desktop/glibc_modified/build/nptl:/usr/lib/gcc/x86_64-linux-gnu/12/../../../x86_64-linux-gnu/:/usr/lib/gcc/x86_64-linux-gnu/12/../../../x86_64-linux-gnu/ ${1+"$@"}
    ;;
  *)
    usage
    ;;
esac
