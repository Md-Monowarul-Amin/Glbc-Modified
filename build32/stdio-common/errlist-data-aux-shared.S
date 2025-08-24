	.file	"errlist-data-gen.c"
	.text
.Ltext0:
	.file 0 "/home/saraj/Desktop/glibc_modified/stdio-common" "errlist-data-gen.c"
#APP
	__divdi3 = __divdi3_internal
	__udivdi3 = __udivdi3_internal
	__moddi3 = __moddi3_internal
	__umoddi3 = __umoddi3_internal
	memmove = __GI_memmove
	memset = __GI_memset
	memcpy = __GI_memcpy
	.symver __GLIBC_2_0_sys_nerr,sys_nerr@GLIBC_2.0
	.symver __GLIBC_2_0__sys_nerr,_sys_nerr@GLIBC_2.0
	.symver __GLIBC_2_1_sys_nerr,sys_nerr@GLIBC_2.1
	.symver __GLIBC_2_1__sys_nerr,_sys_nerr@GLIBC_2.1
	.symver __GLIBC_2_3_sys_nerr,sys_nerr@GLIBC_2.3
	.symver __GLIBC_2_3__sys_nerr,_sys_nerr@GLIBC_2.3
	.symver __GLIBC_2_4_sys_nerr,sys_nerr@GLIBC_2.4
	.symver __GLIBC_2_4__sys_nerr,_sys_nerr@GLIBC_2.4
	.symver __GLIBC_2_12_sys_nerr,sys_nerr@GLIBC_2.12
	.symver __GLIBC_2_12__sys_nerr,_sys_nerr@GLIBC_2.12
#NO_APP
	.globl	__GLIBC_2_12_sys_nerr
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
	.type	__GLIBC_2_12_sys_nerr, @object
	.size	__GLIBC_2_12_sys_nerr, 4
__GLIBC_2_12_sys_nerr:
	.long	135
	.globl	__GLIBC_2_12__sys_nerr
	.set	__GLIBC_2_12__sys_nerr,__GLIBC_2_12_sys_nerr
	.globl	__GLIBC_2_4_sys_nerr
	.align 4
	.type	__GLIBC_2_4_sys_nerr, @object
	.size	__GLIBC_2_4_sys_nerr, 4
__GLIBC_2_4_sys_nerr:
	.long	132
	.globl	__GLIBC_2_4__sys_nerr
	.set	__GLIBC_2_4__sys_nerr,__GLIBC_2_4_sys_nerr
	.globl	__GLIBC_2_3_sys_nerr
	.align 4
	.type	__GLIBC_2_3_sys_nerr, @object
	.size	__GLIBC_2_3_sys_nerr, 4
__GLIBC_2_3_sys_nerr:
	.long	126
	.globl	__GLIBC_2_3__sys_nerr
	.set	__GLIBC_2_3__sys_nerr,__GLIBC_2_3_sys_nerr
	.globl	__GLIBC_2_1_sys_nerr
	.align 4
	.type	__GLIBC_2_1_sys_nerr, @object
	.size	__GLIBC_2_1_sys_nerr, 4
__GLIBC_2_1_sys_nerr:
	.long	125
	.globl	__GLIBC_2_1__sys_nerr
	.set	__GLIBC_2_1__sys_nerr,__GLIBC_2_1_sys_nerr
	.globl	__GLIBC_2_0_sys_nerr
	.align 4
	.type	__GLIBC_2_0_sys_nerr, @object
	.size	__GLIBC_2_0_sys_nerr, 4
__GLIBC_2_0_sys_nerr:
	.long	123
	.globl	__GLIBC_2_0__sys_nerr
	.set	__GLIBC_2_0__sys_nerr,__GLIBC_2_0_sys_nerr
	.hidden	_sys_errlist_internal_len
	.globl	_sys_errlist_internal_len
	.align 4
	.type	_sys_errlist_internal_len, @object
	.size	_sys_errlist_internal_len, 4
_sys_errlist_internal_len:
	.long	134
	.hidden	_sys_errlist_internal
	.globl	_sys_errlist_internal
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Success"
.LC1:
	.string	"Operation not permitted"
.LC2:
	.string	"No such file or directory"
.LC3:
	.string	"No such process"
.LC4:
	.string	"Interrupted system call"
.LC5:
	.string	"Input/output error"
.LC6:
	.string	"No such device or address"
.LC7:
	.string	"Argument list too long"
.LC8:
	.string	"Exec format error"
.LC9:
	.string	"Bad file descriptor"
.LC10:
	.string	"No child processes"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC11:
	.string	"Resource temporarily unavailable"
	.section	.rodata.str1.1
.LC12:
	.string	"Cannot allocate memory"
.LC13:
	.string	"Permission denied"
.LC14:
	.string	"Bad address"
.LC15:
	.string	"Block device required"
.LC16:
	.string	"Device or resource busy"
.LC17:
	.string	"File exists"
.LC18:
	.string	"Invalid cross-device link"
.LC19:
	.string	"No such device"
.LC20:
	.string	"Not a directory"
.LC21:
	.string	"Is a directory"
.LC22:
	.string	"Invalid argument"
.LC23:
	.string	"Too many open files in system"
.LC24:
	.string	"Too many open files"
	.section	.rodata.str1.4
	.align 4
.LC25:
	.string	"Inappropriate ioctl for device"
	.section	.rodata.str1.1
.LC26:
	.string	"Text file busy"
.LC27:
	.string	"File too large"
.LC28:
	.string	"No space left on device"
.LC29:
	.string	"Illegal seek"
.LC30:
	.string	"Read-only file system"
.LC31:
	.string	"Too many links"
.LC32:
	.string	"Broken pipe"
	.section	.rodata.str1.4
	.align 4
.LC33:
	.string	"Numerical argument out of domain"
	.section	.rodata.str1.1
.LC34:
	.string	"Numerical result out of range"
.LC35:
	.string	"Resource deadlock avoided"
.LC36:
	.string	"File name too long"
.LC37:
	.string	"No locks available"
.LC38:
	.string	"Function not implemented"
.LC39:
	.string	"Directory not empty"
	.section	.rodata.str1.4
	.align 4
.LC40:
	.string	"Too many levels of symbolic links"
	.section	.rodata.str1.1
.LC41:
	.string	"No message of desired type"
.LC42:
	.string	"Identifier removed"
.LC43:
	.string	"Channel number out of range"
.LC44:
	.string	"Level 2 not synchronized"
.LC45:
	.string	"Level 3 halted"
.LC46:
	.string	"Level 3 reset"
.LC47:
	.string	"Link number out of range"
.LC48:
	.string	"Protocol driver not attached"
.LC49:
	.string	"No CSI structure available"
.LC50:
	.string	"Level 2 halted"
.LC51:
	.string	"Invalid exchange"
.LC52:
	.string	"Invalid request descriptor"
.LC53:
	.string	"Exchange full"
.LC54:
	.string	"No anode"
.LC55:
	.string	"Invalid request code"
.LC56:
	.string	"Invalid slot"
.LC57:
	.string	"Bad font file format"
.LC58:
	.string	"Device not a stream"
.LC59:
	.string	"No data available"
.LC60:
	.string	"Timer expired"
.LC61:
	.string	"Out of streams resources"
.LC62:
	.string	"Machine is not on the network"
.LC63:
	.string	"Package not installed"
.LC64:
	.string	"Object is remote"
.LC65:
	.string	"Link has been severed"
.LC66:
	.string	"Advertise error"
.LC67:
	.string	"Srmount error"
.LC68:
	.string	"Communication error on send"
.LC69:
	.string	"Protocol error"
.LC70:
	.string	"Multihop attempted"
.LC71:
	.string	"RFS specific error"
.LC72:
	.string	"Bad message"
	.section	.rodata.str1.4
	.align 4
.LC73:
	.string	"Value too large for defined data type"
	.section	.rodata.str1.1
.LC74:
	.string	"Name not unique on network"
.LC75:
	.string	"File descriptor in bad state"
.LC76:
	.string	"Remote address changed"
	.section	.rodata.str1.4
	.align 4
.LC77:
	.string	"Can not access a needed shared library"
	.align 4
.LC78:
	.string	"Accessing a corrupted shared library"
	.align 4
.LC79:
	.string	".lib section in a.out corrupted"
	.align 4
.LC80:
	.string	"Attempting to link in too many shared libraries"
	.align 4
.LC81:
	.string	"Cannot exec a shared library directly"
	.align 4
.LC82:
	.string	"Invalid or incomplete multibyte or wide character"
	.align 4
.LC83:
	.string	"Interrupted system call should be restarted"
	.section	.rodata.str1.1
.LC84:
	.string	"Streams pipe error"
.LC85:
	.string	"Too many users"
	.section	.rodata.str1.4
	.align 4
.LC86:
	.string	"Socket operation on non-socket"
	.section	.rodata.str1.1
.LC87:
	.string	"Destination address required"
.LC88:
	.string	"Message too long"
	.section	.rodata.str1.4
	.align 4
.LC89:
	.string	"Protocol wrong type for socket"
	.section	.rodata.str1.1
.LC90:
	.string	"Protocol not available"
.LC91:
	.string	"Protocol not supported"
.LC92:
	.string	"Socket type not supported"
.LC93:
	.string	"Operation not supported"
.LC94:
	.string	"Protocol family not supported"
	.section	.rodata.str1.4
	.align 4
.LC95:
	.string	"Address family not supported by protocol"
	.section	.rodata.str1.1
.LC96:
	.string	"Address already in use"
	.section	.rodata.str1.4
	.align 4
.LC97:
	.string	"Cannot assign requested address"
	.section	.rodata.str1.1
.LC98:
	.string	"Network is down"
.LC99:
	.string	"Network is unreachable"
	.section	.rodata.str1.4
	.align 4
.LC100:
	.string	"Network dropped connection on reset"
	.align 4
.LC101:
	.string	"Software caused connection abort"
	.section	.rodata.str1.1
.LC102:
	.string	"Connection reset by peer"
.LC103:
	.string	"No buffer space available"
	.section	.rodata.str1.4
	.align 4
.LC104:
	.string	"Transport endpoint is already connected"
	.align 4
.LC105:
	.string	"Transport endpoint is not connected"
	.align 4
.LC106:
	.string	"Cannot send after transport endpoint shutdown"
	.align 4
.LC107:
	.string	"Too many references: cannot splice"
	.section	.rodata.str1.1
.LC108:
	.string	"Connection timed out"
.LC109:
	.string	"Connection refused"
.LC110:
	.string	"Host is down"
.LC111:
	.string	"No route to host"
.LC112:
	.string	"Operation already in progress"
.LC113:
	.string	"Operation now in progress"
.LC114:
	.string	"Stale file handle"
.LC115:
	.string	"Structure needs cleaning"
.LC116:
	.string	"Not a XENIX named type file"
.LC117:
	.string	"No XENIX semaphores available"
.LC118:
	.string	"Is a named type file"
.LC119:
	.string	"Remote I/O error"
.LC120:
	.string	"Disk quota exceeded"
.LC121:
	.string	"No medium found"
.LC122:
	.string	"Wrong medium type"
.LC123:
	.string	"Operation canceled"
.LC124:
	.string	"Required key not available"
.LC125:
	.string	"Key has expired"
.LC126:
	.string	"Key has been revoked"
.LC127:
	.string	"Key was rejected by service"
.LC128:
	.string	"Owner died"
.LC129:
	.string	"State not recoverable"
	.section	.rodata.str1.4
	.align 4
.LC130:
	.string	"Operation not possible due to RF-kill"
	.align 4
.LC131:
	.string	"Memory page has hardware error"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	_sys_errlist_internal, @object
	.size	_sys_errlist_internal, 536
_sys_errlist_internal:
	.long	.LC0
	.long	.LC1
	.long	.LC2
	.long	.LC3
	.long	.LC4
	.long	.LC5
	.long	.LC6
	.long	.LC7
	.long	.LC8
	.long	.LC9
	.long	.LC10
	.long	.LC11
	.long	.LC12
	.long	.LC13
	.long	.LC14
	.long	.LC15
	.long	.LC16
	.long	.LC17
	.long	.LC18
	.long	.LC19
	.long	.LC20
	.long	.LC21
	.long	.LC22
	.long	.LC23
	.long	.LC24
	.long	.LC25
	.long	.LC26
	.long	.LC27
	.long	.LC28
	.long	.LC29
	.long	.LC30
	.long	.LC31
	.long	.LC32
	.long	.LC33
	.long	.LC34
	.long	.LC35
	.long	.LC36
	.long	.LC37
	.long	.LC38
	.long	.LC39
	.long	.LC40
	.zero	4
	.long	.LC41
	.long	.LC42
	.long	.LC43
	.long	.LC44
	.long	.LC45
	.long	.LC46
	.long	.LC47
	.long	.LC48
	.long	.LC49
	.long	.LC50
	.long	.LC51
	.long	.LC52
	.long	.LC53
	.long	.LC54
	.long	.LC55
	.long	.LC56
	.zero	4
	.long	.LC57
	.long	.LC58
	.long	.LC59
	.long	.LC60
	.long	.LC61
	.long	.LC62
	.long	.LC63
	.long	.LC64
	.long	.LC65
	.long	.LC66
	.long	.LC67
	.long	.LC68
	.long	.LC69
	.long	.LC70
	.long	.LC71
	.long	.LC72
	.long	.LC73
	.long	.LC74
	.long	.LC75
	.long	.LC76
	.long	.LC77
	.long	.LC78
	.long	.LC79
	.long	.LC80
	.long	.LC81
	.long	.LC82
	.long	.LC83
	.long	.LC84
	.long	.LC85
	.long	.LC86
	.long	.LC87
	.long	.LC88
	.long	.LC89
	.long	.LC90
	.long	.LC91
	.long	.LC92
	.long	.LC93
	.long	.LC94
	.long	.LC95
	.long	.LC96
	.long	.LC97
	.long	.LC98
	.long	.LC99
	.long	.LC100
	.long	.LC101
	.long	.LC102
	.long	.LC103
	.long	.LC104
	.long	.LC105
	.long	.LC106
	.long	.LC107
	.long	.LC108
	.long	.LC109
	.long	.LC110
	.long	.LC111
	.long	.LC112
	.long	.LC113
	.long	.LC114
	.long	.LC115
	.long	.LC116
	.long	.LC117
	.long	.LC118
	.long	.LC119
	.long	.LC120
	.long	.LC121
	.long	.LC122
	.long	.LC123
	.long	.LC124
	.long	.LC125
	.long	.LC126
	.long	.LC127
	.long	.LC128
	.long	.LC129
	.long	.LC130
	.long	.LC131
	.text
.Letext0:
	.file 1 "../posix/bits/types.h"
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/12/include/stddef.h"
	.file 3 "../bits/stdint-uintn.h"
	.file 4 "../bits/sockaddr.h"
	.file 5 "../sysdeps/unix/sysv/linux/bits/socket.h"
	.file 6 "../inet/netinet/in.h"
	.file 7 "../include/stdio.h"
	.file 8 "../sysdeps/unix/sysv/linux/errlist-compat-data.h"
	.file 9 "errlist-data-gen.c"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4cd
	.value	0x5
	.byte	0x1
	.byte	0x4
	.long	.Ldebug_abbrev0
	.uleb128 0x10
	.long	.LASF68
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.long	.Ldebug_line0
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x3
	.long	0x1e
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	0x2a
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x1
	.long	0x25
	.uleb128 0x3
	.long	0x44
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x5
	.long	.LASF9
	.byte	0x1
	.byte	0x26
	.byte	0x17
	.long	0x4e
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x5
	.long	.LASF10
	.byte	0x1
	.byte	0x28
	.byte	0x1c
	.long	0x3d
	.uleb128 0x5
	.long	.LASF11
	.byte	0x1
	.byte	0x2a
	.byte	0x16
	.long	0x36
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF12
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.long	.LASF14
	.uleb128 0x5
	.long	.LASF15
	.byte	0x2
	.byte	0xd6
	.byte	0x17
	.long	0x36
	.uleb128 0x3
	.long	0xa3
	.uleb128 0x5
	.long	.LASF16
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.long	0x63
	.uleb128 0x5
	.long	.LASF17
	.byte	0x3
	.byte	0x19
	.byte	0x14
	.long	0x76
	.uleb128 0x5
	.long	.LASF18
	.byte	0x3
	.byte	0x1a
	.byte	0x14
	.long	0x82
	.uleb128 0x4
	.byte	0xc
	.byte	0x4
	.long	.LASF19
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.long	.LASF20
	.uleb128 0x5
	.long	.LASF21
	.byte	0x4
	.byte	0x1c
	.byte	0x1c
	.long	0x3d
	.uleb128 0xd
	.long	.LASF28
	.byte	0x10
	.byte	0x5
	.byte	0xb8
	.byte	0x27
	.long	0x11a
	.uleb128 0x7
	.long	.LASF22
	.byte	0x5
	.byte	0xba
	.byte	0x5
	.long	0xe6
	.byte	0
	.uleb128 0x7
	.long	.LASF23
	.byte	0x5
	.byte	0xbb
	.byte	0xa
	.long	0x11f
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	0xf2
	.uleb128 0x8
	.long	0x1e
	.long	0x12f
	.uleb128 0x9
	.long	0x36
	.byte	0xd
	.byte	0
	.uleb128 0x1
	.long	0xf2
	.uleb128 0x2
	.long	0x12f
	.uleb128 0x6
	.long	.LASF24
	.uleb128 0x3
	.long	0x139
	.uleb128 0x1
	.long	0x139
	.uleb128 0x2
	.long	0x143
	.uleb128 0x6
	.long	.LASF25
	.uleb128 0x3
	.long	0x14d
	.uleb128 0x1
	.long	0x14d
	.uleb128 0x2
	.long	0x157
	.uleb128 0x6
	.long	.LASF26
	.uleb128 0x3
	.long	0x161
	.uleb128 0x1
	.long	0x161
	.uleb128 0x2
	.long	0x16b
	.uleb128 0x6
	.long	.LASF27
	.uleb128 0x3
	.long	0x175
	.uleb128 0x1
	.long	0x175
	.uleb128 0x2
	.long	0x17f
	.uleb128 0xd
	.long	.LASF29
	.byte	0x10
	.byte	0x6
	.byte	0xf9
	.byte	0x27
	.long	0x1cb
	.uleb128 0x7
	.long	.LASF30
	.byte	0x6
	.byte	0xfb
	.byte	0x5
	.long	0xe6
	.byte	0
	.uleb128 0x7
	.long	.LASF31
	.byte	0x6
	.byte	0xfc
	.byte	0xf
	.long	0x35a
	.byte	0x2
	.uleb128 0x7
	.long	.LASF32
	.byte	0x6
	.byte	0xfd
	.byte	0x14
	.long	0x33f
	.byte	0x4
	.uleb128 0xa
	.long	.LASF33
	.value	0x100
	.byte	0x13
	.long	0x3dc
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	0x189
	.uleb128 0x1
	.long	0x189
	.uleb128 0x2
	.long	0x1d0
	.uleb128 0x12
	.long	.LASF34
	.byte	0x1c
	.byte	0x6
	.value	0x10a
	.byte	0x27
	.long	0x22a
	.uleb128 0xa
	.long	.LASF35
	.value	0x10c
	.byte	0x5
	.long	0xe6
	.byte	0
	.uleb128 0xa
	.long	.LASF36
	.value	0x10d
	.byte	0xf
	.long	0x35a
	.byte	0x2
	.uleb128 0xa
	.long	.LASF37
	.value	0x10e
	.byte	0xe
	.long	0xcc
	.byte	0x4
	.uleb128 0xa
	.long	.LASF38
	.value	0x10f
	.byte	0x15
	.long	0x3c1
	.byte	0x8
	.uleb128 0xa
	.long	.LASF39
	.value	0x110
	.byte	0xe
	.long	0xcc
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.long	0x1da
	.uleb128 0x1
	.long	0x1da
	.uleb128 0x2
	.long	0x22f
	.uleb128 0x6
	.long	.LASF40
	.uleb128 0x3
	.long	0x239
	.uleb128 0x1
	.long	0x239
	.uleb128 0x2
	.long	0x243
	.uleb128 0x6
	.long	.LASF41
	.uleb128 0x3
	.long	0x24d
	.uleb128 0x1
	.long	0x24d
	.uleb128 0x2
	.long	0x257
	.uleb128 0x6
	.long	.LASF42
	.uleb128 0x3
	.long	0x261
	.uleb128 0x1
	.long	0x261
	.uleb128 0x2
	.long	0x26b
	.uleb128 0x6
	.long	.LASF43
	.uleb128 0x3
	.long	0x275
	.uleb128 0x1
	.long	0x275
	.uleb128 0x2
	.long	0x27f
	.uleb128 0x6
	.long	.LASF44
	.uleb128 0x3
	.long	0x289
	.uleb128 0x1
	.long	0x289
	.uleb128 0x2
	.long	0x293
	.uleb128 0x6
	.long	.LASF45
	.uleb128 0x3
	.long	0x29d
	.uleb128 0x1
	.long	0x29d
	.uleb128 0x2
	.long	0x2a7
	.uleb128 0x1
	.long	0x11a
	.uleb128 0x2
	.long	0x2b1
	.uleb128 0x1
	.long	0x13e
	.uleb128 0x2
	.long	0x2bb
	.uleb128 0x1
	.long	0x152
	.uleb128 0x2
	.long	0x2c5
	.uleb128 0x1
	.long	0x166
	.uleb128 0x2
	.long	0x2cf
	.uleb128 0x1
	.long	0x17a
	.uleb128 0x2
	.long	0x2d9
	.uleb128 0x1
	.long	0x1cb
	.uleb128 0x2
	.long	0x2e3
	.uleb128 0x1
	.long	0x22a
	.uleb128 0x2
	.long	0x2ed
	.uleb128 0x1
	.long	0x23e
	.uleb128 0x2
	.long	0x2f7
	.uleb128 0x1
	.long	0x252
	.uleb128 0x2
	.long	0x301
	.uleb128 0x1
	.long	0x266
	.uleb128 0x2
	.long	0x30b
	.uleb128 0x1
	.long	0x27a
	.uleb128 0x2
	.long	0x315
	.uleb128 0x1
	.long	0x28e
	.uleb128 0x2
	.long	0x31f
	.uleb128 0x1
	.long	0x2a2
	.uleb128 0x2
	.long	0x329
	.uleb128 0x5
	.long	.LASF46
	.byte	0x6
	.byte	0x1e
	.byte	0x12
	.long	0xcc
	.uleb128 0xd
	.long	.LASF47
	.byte	0x4
	.byte	0x6
	.byte	0x1f
	.byte	0x8
	.long	0x35a
	.uleb128 0x7
	.long	.LASF48
	.byte	0x6
	.byte	0x21
	.byte	0xf
	.long	0x333
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF49
	.byte	0x6
	.byte	0x7f
	.byte	0x12
	.long	0xc0
	.uleb128 0x13
	.byte	0x10
	.byte	0x6
	.byte	0xe1
	.byte	0x5
	.long	0x391
	.uleb128 0xe
	.long	.LASF50
	.byte	0xe3
	.byte	0xa
	.long	0x391
	.uleb128 0xe
	.long	.LASF51
	.byte	0xe4
	.byte	0xb
	.long	0x3a1
	.uleb128 0xe
	.long	.LASF52
	.byte	0xe5
	.byte	0xb
	.long	0x3b1
	.byte	0
	.uleb128 0x8
	.long	0xb4
	.long	0x3a1
	.uleb128 0x9
	.long	0x36
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.long	0xc0
	.long	0x3b1
	.uleb128 0x9
	.long	0x36
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.long	0xcc
	.long	0x3c1
	.uleb128 0x9
	.long	0x36
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.long	.LASF53
	.byte	0x10
	.byte	0x6
	.byte	0xdf
	.byte	0x8
	.long	0x3dc
	.uleb128 0x7
	.long	.LASF54
	.byte	0x6
	.byte	0xe6
	.byte	0x9
	.long	0x366
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0x4e
	.long	0x3ec
	.uleb128 0x9
	.long	0x36
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF55
	.uleb128 0x8
	.long	0x49
	.long	0x3fe
	.uleb128 0x14
	.byte	0
	.uleb128 0x3
	.long	0x3f3
	.uleb128 0xf
	.long	.LASF56
	.byte	0xe2
	.byte	0x1a
	.long	0x3fe
	.uleb128 0xf
	.long	.LASF57
	.byte	0xe3
	.byte	0x15
	.long	0xaf
	.uleb128 0x8
	.long	0x49
	.long	0x429
	.uleb128 0x9
	.long	0x36
	.byte	0x85
	.byte	0
	.uleb128 0x3
	.long	0x419
	.uleb128 0x15
	.long	0x403
	.byte	0x9
	.byte	0x19
	.byte	0x13
	.long	0x429
	.uleb128 0x5
	.byte	0x3
	.long	_sys_errlist_internal
	.uleb128 0x16
	.long	0x40e
	.byte	0x9
	.byte	0x1f
	.byte	0xe
	.uleb128 0x5
	.byte	0x3
	.long	_sys_errlist_internal_len
	.uleb128 0xb
	.long	.LASF58
	.byte	0x16
	.long	0x31
	.uleb128 0x5
	.byte	0x3
	.long	__GLIBC_2_0_sys_nerr
	.uleb128 0xc
	.long	.LASF60
	.byte	0x16
	.long	0x31
	.uleb128 0xb
	.long	.LASF59
	.byte	0x1a
	.long	0x31
	.uleb128 0x5
	.byte	0x3
	.long	__GLIBC_2_1_sys_nerr
	.uleb128 0xc
	.long	.LASF61
	.byte	0x1a
	.long	0x31
	.uleb128 0xb
	.long	.LASF62
	.byte	0x1e
	.long	0x31
	.uleb128 0x5
	.byte	0x3
	.long	__GLIBC_2_3_sys_nerr
	.uleb128 0xc
	.long	.LASF63
	.byte	0x1e
	.long	0x31
	.uleb128 0xb
	.long	.LASF64
	.byte	0x22
	.long	0x31
	.uleb128 0x5
	.byte	0x3
	.long	__GLIBC_2_4_sys_nerr
	.uleb128 0xc
	.long	.LASF65
	.byte	0x22
	.long	0x31
	.uleb128 0xb
	.long	.LASF66
	.byte	0x26
	.long	0x31
	.uleb128 0x5
	.byte	0x3
	.long	__GLIBC_2_12_sys_nerr
	.uleb128 0xc
	.long	.LASF67
	.byte	0x26
	.long	0x31
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x14
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF63:
	.string	"__GLIBC_2_3__sys_nerr"
.LASF57:
	.string	"_sys_errlist_internal_len"
.LASF36:
	.string	"sin6_port"
.LASF42:
	.string	"sockaddr_iso"
.LASF15:
	.string	"size_t"
.LASF53:
	.string	"in6_addr"
.LASF40:
	.string	"sockaddr_inarp"
.LASF66:
	.string	"__GLIBC_2_12_sys_nerr"
.LASF11:
	.string	"__uint32_t"
.LASF37:
	.string	"sin6_flowinfo"
.LASF44:
	.string	"sockaddr_un"
.LASF10:
	.string	"__uint16_t"
.LASF8:
	.string	"short int"
.LASF61:
	.string	"__GLIBC_2_1__sys_nerr"
.LASF16:
	.string	"uint8_t"
.LASF39:
	.string	"sin6_scope_id"
.LASF30:
	.string	"sin_family"
.LASF62:
	.string	"__GLIBC_2_3_sys_nerr"
.LASF54:
	.string	"__in6_u"
.LASF43:
	.string	"sockaddr_ns"
.LASF12:
	.string	"long long int"
.LASF51:
	.string	"__u6_addr16"
.LASF14:
	.string	"long int"
.LASF9:
	.string	"__uint8_t"
.LASF65:
	.string	"__GLIBC_2_4__sys_nerr"
.LASF32:
	.string	"sin_addr"
.LASF19:
	.string	"long double"
.LASF21:
	.string	"sa_family_t"
.LASF5:
	.string	"unsigned char"
.LASF7:
	.string	"signed char"
.LASF33:
	.string	"sin_zero"
.LASF13:
	.string	"long long unsigned int"
.LASF34:
	.string	"sockaddr_in6"
.LASF18:
	.string	"uint32_t"
.LASF68:
	.string	"GNU C11 12.3.0 -m32 -mtune=generic -march=i686 -g -O2 -std=gnu11 -fgnu89-inline -fmerge-all-constants -frounding-math -fno-common -fmath-errno -ftls-model=initial-exec -fPIC -fno-stack-protector -fasynchronous-unwind-tables -fstack-clash-protection"
.LASF17:
	.string	"uint16_t"
.LASF48:
	.string	"s_addr"
.LASF35:
	.string	"sin6_family"
.LASF58:
	.string	"__GLIBC_2_0_sys_nerr"
.LASF38:
	.string	"sin6_addr"
.LASF23:
	.string	"sa_data"
.LASF4:
	.string	"short unsigned int"
.LASF56:
	.string	"_sys_errlist_internal"
.LASF67:
	.string	"__GLIBC_2_12__sys_nerr"
.LASF2:
	.string	"char"
.LASF55:
	.string	"_Bool"
.LASF46:
	.string	"in_addr_t"
.LASF64:
	.string	"__GLIBC_2_4_sys_nerr"
.LASF27:
	.string	"sockaddr_eon"
.LASF6:
	.string	"long unsigned int"
.LASF47:
	.string	"in_addr"
.LASF45:
	.string	"sockaddr_x25"
.LASF31:
	.string	"sin_port"
.LASF60:
	.string	"__GLIBC_2_0__sys_nerr"
.LASF49:
	.string	"in_port_t"
.LASF22:
	.string	"sa_family"
.LASF24:
	.string	"sockaddr_at"
.LASF52:
	.string	"__u6_addr32"
.LASF20:
	.string	"_Float128"
.LASF26:
	.string	"sockaddr_dl"
.LASF3:
	.string	"unsigned int"
.LASF50:
	.string	"__u6_addr8"
.LASF41:
	.string	"sockaddr_ipx"
.LASF29:
	.string	"sockaddr_in"
.LASF28:
	.string	"sockaddr"
.LASF25:
	.string	"sockaddr_ax25"
.LASF59:
	.string	"__GLIBC_2_1_sys_nerr"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/saraj/Desktop/glibc_modified/stdio-common"
.LASF0:
	.string	"errlist-data-gen.c"
	.ident	"GCC: (Ubuntu 12.3.0-1ubuntu1~22.04.2) 12.3.0"
	.section	.note.GNU-stack,"",@progbits
