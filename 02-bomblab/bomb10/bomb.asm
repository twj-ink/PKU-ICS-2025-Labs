
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 5f 00 00 	mov    0x5fd9(%rip),%rax        # 6fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 b2 5e 00 00    	push   0x5eb2(%rip)        # 6ed8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 b3 5e 00 00 	bnd jmp *0x5eb3(%rip)        # 6ee0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64
    10b4:	68 08 00 00 00       	push   $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64
    10c4:	68 09 00 00 00       	push   $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64
    10d4:	68 0a 00 00 00       	push   $0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10df:	90                   	nop
    10e0:	f3 0f 1e fa          	endbr64
    10e4:	68 0b 00 00 00       	push   $0xb
    10e9:	f2 e9 31 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ef:	90                   	nop
    10f0:	f3 0f 1e fa          	endbr64
    10f4:	68 0c 00 00 00       	push   $0xc
    10f9:	f2 e9 21 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ff:	90                   	nop
    1100:	f3 0f 1e fa          	endbr64
    1104:	68 0d 00 00 00       	push   $0xd
    1109:	f2 e9 11 ff ff ff    	bnd jmp 1020 <_init+0x20>
    110f:	90                   	nop
    1110:	f3 0f 1e fa          	endbr64
    1114:	68 0e 00 00 00       	push   $0xe
    1119:	f2 e9 01 ff ff ff    	bnd jmp 1020 <_init+0x20>
    111f:	90                   	nop
    1120:	f3 0f 1e fa          	endbr64
    1124:	68 0f 00 00 00       	push   $0xf
    1129:	f2 e9 f1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    112f:	90                   	nop
    1130:	f3 0f 1e fa          	endbr64
    1134:	68 10 00 00 00       	push   $0x10
    1139:	f2 e9 e1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    113f:	90                   	nop
    1140:	f3 0f 1e fa          	endbr64
    1144:	68 11 00 00 00       	push   $0x11
    1149:	f2 e9 d1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    114f:	90                   	nop
    1150:	f3 0f 1e fa          	endbr64
    1154:	68 12 00 00 00       	push   $0x12
    1159:	f2 e9 c1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    115f:	90                   	nop
    1160:	f3 0f 1e fa          	endbr64
    1164:	68 13 00 00 00       	push   $0x13
    1169:	f2 e9 b1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    116f:	90                   	nop
    1170:	f3 0f 1e fa          	endbr64
    1174:	68 14 00 00 00       	push   $0x14
    1179:	f2 e9 a1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    117f:	90                   	nop
    1180:	f3 0f 1e fa          	endbr64
    1184:	68 15 00 00 00       	push   $0x15
    1189:	f2 e9 91 fe ff ff    	bnd jmp 1020 <_init+0x20>
    118f:	90                   	nop
    1190:	f3 0f 1e fa          	endbr64
    1194:	68 16 00 00 00       	push   $0x16
    1199:	f2 e9 81 fe ff ff    	bnd jmp 1020 <_init+0x20>
    119f:	90                   	nop
    11a0:	f3 0f 1e fa          	endbr64
    11a4:	68 17 00 00 00       	push   $0x17
    11a9:	f2 e9 71 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11af:	90                   	nop
    11b0:	f3 0f 1e fa          	endbr64
    11b4:	68 18 00 00 00       	push   $0x18
    11b9:	f2 e9 61 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11bf:	90                   	nop
    11c0:	f3 0f 1e fa          	endbr64
    11c4:	68 19 00 00 00       	push   $0x19
    11c9:	f2 e9 51 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11cf:	90                   	nop
    11d0:	f3 0f 1e fa          	endbr64
    11d4:	68 1a 00 00 00       	push   $0x1a
    11d9:	f2 e9 41 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11df:	90                   	nop
    11e0:	f3 0f 1e fa          	endbr64
    11e4:	68 1b 00 00 00       	push   $0x1b
    11e9:	f2 e9 31 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11ef:	90                   	nop
    11f0:	f3 0f 1e fa          	endbr64
    11f4:	68 1c 00 00 00       	push   $0x1c
    11f9:	f2 e9 21 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11ff:	90                   	nop
    1200:	f3 0f 1e fa          	endbr64
    1204:	68 1d 00 00 00       	push   $0x1d
    1209:	f2 e9 11 fe ff ff    	bnd jmp 1020 <_init+0x20>
    120f:	90                   	nop

Disassembly of section .plt.got:

0000000000001210 <__cxa_finalize@plt>:
    1210:	f3 0f 1e fa          	endbr64
    1214:	f2 ff 25 dd 5d 00 00 	bnd jmp *0x5ddd(%rip)        # 6ff8 <__cxa_finalize@GLIBC_2.2.5>
    121b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001220 <getenv@plt>:
    1220:	f3 0f 1e fa          	endbr64
    1224:	f2 ff 25 bd 5c 00 00 	bnd jmp *0x5cbd(%rip)        # 6ee8 <getenv@GLIBC_2.2.5>
    122b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001230 <free@plt>:
    1230:	f3 0f 1e fa          	endbr64
    1234:	f2 ff 25 b5 5c 00 00 	bnd jmp *0x5cb5(%rip)        # 6ef0 <free@GLIBC_2.2.5>
    123b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001240 <__errno_location@plt>:
    1240:	f3 0f 1e fa          	endbr64
    1244:	f2 ff 25 ad 5c 00 00 	bnd jmp *0x5cad(%rip)        # 6ef8 <__errno_location@GLIBC_2.2.5>
    124b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001250 <strcpy@plt>:
    1250:	f3 0f 1e fa          	endbr64
    1254:	f2 ff 25 a5 5c 00 00 	bnd jmp *0x5ca5(%rip)        # 6f00 <strcpy@GLIBC_2.2.5>
    125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001260 <__read_chk@plt>:
    1260:	f3 0f 1e fa          	endbr64
    1264:	f2 ff 25 9d 5c 00 00 	bnd jmp *0x5c9d(%rip)        # 6f08 <__read_chk@GLIBC_2.4>
    126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001270 <puts@plt>:
    1270:	f3 0f 1e fa          	endbr64
    1274:	f2 ff 25 95 5c 00 00 	bnd jmp *0x5c95(%rip)        # 6f10 <puts@GLIBC_2.2.5>
    127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001280 <write@plt>:
    1280:	f3 0f 1e fa          	endbr64
    1284:	f2 ff 25 8d 5c 00 00 	bnd jmp *0x5c8d(%rip)        # 6f18 <write@GLIBC_2.2.5>
    128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001290 <strlen@plt>:
    1290:	f3 0f 1e fa          	endbr64
    1294:	f2 ff 25 85 5c 00 00 	bnd jmp *0x5c85(%rip)        # 6f20 <strlen@GLIBC_2.2.5>
    129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012a0 <__stack_chk_fail@plt>:
    12a0:	f3 0f 1e fa          	endbr64
    12a4:	f2 ff 25 7d 5c 00 00 	bnd jmp *0x5c7d(%rip)        # 6f28 <__stack_chk_fail@GLIBC_2.4>
    12ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012b0 <alarm@plt>:
    12b0:	f3 0f 1e fa          	endbr64
    12b4:	f2 ff 25 75 5c 00 00 	bnd jmp *0x5c75(%rip)        # 6f30 <alarm@GLIBC_2.2.5>
    12bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012c0 <close@plt>:
    12c0:	f3 0f 1e fa          	endbr64
    12c4:	f2 ff 25 6d 5c 00 00 	bnd jmp *0x5c6d(%rip)        # 6f38 <close@GLIBC_2.2.5>
    12cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012d0 <strcmp@plt>:
    12d0:	f3 0f 1e fa          	endbr64
    12d4:	f2 ff 25 65 5c 00 00 	bnd jmp *0x5c65(%rip)        # 6f40 <strcmp@GLIBC_2.2.5>
    12db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012e0 <signal@plt>:
    12e0:	f3 0f 1e fa          	endbr64
    12e4:	f2 ff 25 5d 5c 00 00 	bnd jmp *0x5c5d(%rip)        # 6f48 <signal@GLIBC_2.2.5>
    12eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012f0 <gethostbyname@plt>:
    12f0:	f3 0f 1e fa          	endbr64
    12f4:	f2 ff 25 55 5c 00 00 	bnd jmp *0x5c55(%rip)        # 6f50 <gethostbyname@GLIBC_2.2.5>
    12fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001300 <__memmove_chk@plt>:
    1300:	f3 0f 1e fa          	endbr64
    1304:	f2 ff 25 4d 5c 00 00 	bnd jmp *0x5c4d(%rip)        # 6f58 <__memmove_chk@GLIBC_2.3.4>
    130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001310 <memcpy@plt>:
    1310:	f3 0f 1e fa          	endbr64
    1314:	f2 ff 25 45 5c 00 00 	bnd jmp *0x5c45(%rip)        # 6f60 <memcpy@GLIBC_2.14>
    131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001320 <malloc@plt>:
    1320:	f3 0f 1e fa          	endbr64
    1324:	f2 ff 25 3d 5c 00 00 	bnd jmp *0x5c3d(%rip)        # 6f68 <malloc@GLIBC_2.2.5>
    132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001330 <fflush@plt>:
    1330:	f3 0f 1e fa          	endbr64
    1334:	f2 ff 25 35 5c 00 00 	bnd jmp *0x5c35(%rip)        # 6f70 <fflush@GLIBC_2.2.5>
    133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001340 <__isoc99_sscanf@plt>:
    1340:	f3 0f 1e fa          	endbr64
    1344:	f2 ff 25 2d 5c 00 00 	bnd jmp *0x5c2d(%rip)        # 6f78 <__isoc99_sscanf@GLIBC_2.7>
    134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001350 <__fgets_chk@plt>:
    1350:	f3 0f 1e fa          	endbr64
    1354:	f2 ff 25 25 5c 00 00 	bnd jmp *0x5c25(%rip)        # 6f80 <__fgets_chk@GLIBC_2.4>
    135b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001360 <__printf_chk@plt>:
    1360:	f3 0f 1e fa          	endbr64
    1364:	f2 ff 25 1d 5c 00 00 	bnd jmp *0x5c1d(%rip)        # 6f88 <__printf_chk@GLIBC_2.3.4>
    136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001370 <fopen@plt>:
    1370:	f3 0f 1e fa          	endbr64
    1374:	f2 ff 25 15 5c 00 00 	bnd jmp *0x5c15(%rip)        # 6f90 <fopen@GLIBC_2.2.5>
    137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001380 <gethostname@plt>:
    1380:	f3 0f 1e fa          	endbr64
    1384:	f2 ff 25 0d 5c 00 00 	bnd jmp *0x5c0d(%rip)        # 6f98 <gethostname@GLIBC_2.2.5>
    138b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001390 <exit@plt>:
    1390:	f3 0f 1e fa          	endbr64
    1394:	f2 ff 25 05 5c 00 00 	bnd jmp *0x5c05(%rip)        # 6fa0 <exit@GLIBC_2.2.5>
    139b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013a0 <connect@plt>:
    13a0:	f3 0f 1e fa          	endbr64
    13a4:	f2 ff 25 fd 5b 00 00 	bnd jmp *0x5bfd(%rip)        # 6fa8 <connect@GLIBC_2.2.5>
    13ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013b0 <__fprintf_chk@plt>:
    13b0:	f3 0f 1e fa          	endbr64
    13b4:	f2 ff 25 f5 5b 00 00 	bnd jmp *0x5bf5(%rip)        # 6fb0 <__fprintf_chk@GLIBC_2.3.4>
    13bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013c0 <sleep@plt>:
    13c0:	f3 0f 1e fa          	endbr64
    13c4:	f2 ff 25 ed 5b 00 00 	bnd jmp *0x5bed(%rip)        # 6fb8 <sleep@GLIBC_2.2.5>
    13cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013d0 <__ctype_b_loc@plt>:
    13d0:	f3 0f 1e fa          	endbr64
    13d4:	f2 ff 25 e5 5b 00 00 	bnd jmp *0x5be5(%rip)        # 6fc0 <__ctype_b_loc@GLIBC_2.3>
    13db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013e0 <__sprintf_chk@plt>:
    13e0:	f3 0f 1e fa          	endbr64
    13e4:	f2 ff 25 dd 5b 00 00 	bnd jmp *0x5bdd(%rip)        # 6fc8 <__sprintf_chk@GLIBC_2.3.4>
    13eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013f0 <socket@plt>:
    13f0:	f3 0f 1e fa          	endbr64
    13f4:	f2 ff 25 d5 5b 00 00 	bnd jmp *0x5bd5(%rip)        # 6fd0 <socket@GLIBC_2.2.5>
    13fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001400 <_start>:
    1400:	f3 0f 1e fa          	endbr64
    1404:	31 ed                	xor    %ebp,%ebp
    1406:	49 89 d1             	mov    %rdx,%r9
    1409:	5e                   	pop    %rsi
    140a:	48 89 e2             	mov    %rsp,%rdx
    140d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1411:	50                   	push   %rax
    1412:	54                   	push   %rsp
    1413:	45 31 c0             	xor    %r8d,%r8d
    1416:	31 c9                	xor    %ecx,%ecx
    1418:	48 8d 3d ca 00 00 00 	lea    0xca(%rip),%rdi        # 14e9 <main>
    141f:	ff 15 b3 5b 00 00    	call   *0x5bb3(%rip)        # 6fd8 <__libc_start_main@GLIBC_2.34>
    1425:	f4                   	hlt
    1426:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    142d:	00 00 00 

0000000000001430 <deregister_tm_clones>:
    1430:	48 8d 3d 29 70 00 00 	lea    0x7029(%rip),%rdi        # 8460 <stdout@GLIBC_2.2.5>
    1437:	48 8d 05 22 70 00 00 	lea    0x7022(%rip),%rax        # 8460 <stdout@GLIBC_2.2.5>
    143e:	48 39 f8             	cmp    %rdi,%rax
    1441:	74 15                	je     1458 <deregister_tm_clones+0x28>
    1443:	48 8b 05 96 5b 00 00 	mov    0x5b96(%rip),%rax        # 6fe0 <_ITM_deregisterTMCloneTable@Base>
    144a:	48 85 c0             	test   %rax,%rax
    144d:	74 09                	je     1458 <deregister_tm_clones+0x28>
    144f:	ff e0                	jmp    *%rax
    1451:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1458:	c3                   	ret
    1459:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001460 <register_tm_clones>:
    1460:	48 8d 3d f9 6f 00 00 	lea    0x6ff9(%rip),%rdi        # 8460 <stdout@GLIBC_2.2.5>
    1467:	48 8d 35 f2 6f 00 00 	lea    0x6ff2(%rip),%rsi        # 8460 <stdout@GLIBC_2.2.5>
    146e:	48 29 fe             	sub    %rdi,%rsi
    1471:	48 89 f0             	mov    %rsi,%rax
    1474:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1478:	48 c1 f8 03          	sar    $0x3,%rax
    147c:	48 01 c6             	add    %rax,%rsi
    147f:	48 d1 fe             	sar    $1,%rsi
    1482:	74 14                	je     1498 <register_tm_clones+0x38>
    1484:	48 8b 05 65 5b 00 00 	mov    0x5b65(%rip),%rax        # 6ff0 <_ITM_registerTMCloneTable@Base>
    148b:	48 85 c0             	test   %rax,%rax
    148e:	74 08                	je     1498 <register_tm_clones+0x38>
    1490:	ff e0                	jmp    *%rax
    1492:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1498:	c3                   	ret
    1499:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000014a0 <__do_global_dtors_aux>:
    14a0:	f3 0f 1e fa          	endbr64
    14a4:	80 3d dd 6f 00 00 00 	cmpb   $0x0,0x6fdd(%rip)        # 8488 <completed.0>
    14ab:	75 2b                	jne    14d8 <__do_global_dtors_aux+0x38>
    14ad:	55                   	push   %rbp
    14ae:	48 83 3d 42 5b 00 00 	cmpq   $0x0,0x5b42(%rip)        # 6ff8 <__cxa_finalize@GLIBC_2.2.5>
    14b5:	00 
    14b6:	48 89 e5             	mov    %rsp,%rbp
    14b9:	74 0c                	je     14c7 <__do_global_dtors_aux+0x27>
    14bb:	48 8b 3d 46 5b 00 00 	mov    0x5b46(%rip),%rdi        # 7008 <__dso_handle>
    14c2:	e8 49 fd ff ff       	call   1210 <__cxa_finalize@plt>
    14c7:	e8 64 ff ff ff       	call   1430 <deregister_tm_clones>
    14cc:	c6 05 b5 6f 00 00 01 	movb   $0x1,0x6fb5(%rip)        # 8488 <completed.0>
    14d3:	5d                   	pop    %rbp
    14d4:	c3                   	ret
    14d5:	0f 1f 00             	nopl   (%rax)
    14d8:	c3                   	ret
    14d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000014e0 <frame_dummy>:
    14e0:	f3 0f 1e fa          	endbr64
    14e4:	e9 77 ff ff ff       	jmp    1460 <register_tm_clones>

00000000000014e9 <main>:
    14e9:	f3 0f 1e fa          	endbr64
    14ed:	53                   	push   %rbx

    14ee:	83 ff 01             	cmp    $0x1,%edi
    14f1:	0f 84 15 01 00 00    	je     160c <main+0x123>
    14f7:	48 89 f3             	mov    %rsi,%rbx
    14fa:	83 ff 02             	cmp    $0x2,%edi
    14fd:	0f 85 3e 01 00 00    	jne    1641 <main+0x158>
    1503:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    1507:	48 8d 35 d0 31 00 00 	lea    0x31d0(%rip),%rsi        # 46de <transition_table+0x3de>
    150e:	e8 5d fe ff ff       	call   1370 <fopen@plt>
    1513:	48 89 05 76 6f 00 00 	mov    %rax,0x6f76(%rip)        # 8490 <infile>
    151a:	48 85 c0             	test   %rax,%rax
    151d:	0f 84 fc 00 00 00    	je     161f <main+0x136>
    
    1523:	e8 6e 08 00 00       	call   1d96 <initialize_bomb>
    1528:	48 89 c3             	mov    %rax,%rbx

    152b:	48 8d 3d 5e 2b 00 00 	lea    0x2b5e(%rip),%rdi        # 4090 <_IO_stdin_used+0x90>
    1532:	e8 39 fd ff ff       	call   1270 <puts@plt>
    1537:	48 8d 3d 8a 2b 00 00 	lea    0x2b8a(%rip),%rdi        # 40c8 <_IO_stdin_used+0xc8>
    153e:	e8 2d fd ff ff       	call   1270 <puts@plt>
    1543:	e8 df 0b 00 00       	call   2127 <read_line>
    1548:	48 89 c7             	mov    %rax,%rdi
    154b:	e8 34 02 00 00       	call   1784 <phase_1>
    1550:	48 89 df             	mov    %rbx,%rdi
    1553:	e8 0d 0d 00 00       	call   2265 <phase_defused>
    1558:	48 8d 3d a9 2b 00 00 	lea    0x2ba9(%rip),%rdi        # 4108 <_IO_stdin_used+0x108>
    155f:	e8 0c fd ff ff       	call   1270 <puts@plt>
    1564:	e8 be 0b 00 00       	call   2127 <read_line>
    1569:	48 89 c7             	mov    %rax,%rdi
    156c:	e8 37 02 00 00       	call   17a8 <phase_2>
    1571:	48 89 df             	mov    %rbx,%rdi
    1574:	e8 ec 0c 00 00       	call   2265 <phase_defused>
    1579:	48 8d 3d bb 2a 00 00 	lea    0x2abb(%rip),%rdi        # 403b <_IO_stdin_used+0x3b>
    1580:	e8 eb fc ff ff       	call   1270 <puts@plt>
    1585:	e8 9d 0b 00 00       	call   2127 <read_line>
    158a:	48 89 c7             	mov    %rax,%rdi
    158d:	e8 93 02 00 00       	call   1825 <phase_3>
    1592:	48 89 df             	mov    %rbx,%rdi
    1595:	e8 cb 0c 00 00       	call   2265 <phase_defused>
    159a:	48 8d 3d b7 2a 00 00 	lea    0x2ab7(%rip),%rdi        # 4058 <_IO_stdin_used+0x58>
    15a1:	e8 ca fc ff ff       	call   1270 <puts@plt>
    15a6:	e8 7c 0b 00 00       	call   2127 <read_line>
    15ab:	48 89 c7             	mov    %rax,%rdi
    15ae:	e8 8e 03 00 00       	call   1941 <phase_4>
    15b3:	48 89 df             	mov    %rbx,%rdi
    15b6:	e8 aa 0c 00 00       	call   2265 <phase_defused>
    15bb:	48 8d 3d 76 2b 00 00 	lea    0x2b76(%rip),%rdi        # 4138 <_IO_stdin_used+0x138>
    15c2:	e8 a9 fc ff ff       	call   1270 <puts@plt>
    15c7:	e8 5b 0b 00 00       	call   2127 <read_line>
    15cc:	48 89 c7             	mov    %rax,%rdi
    15cf:	e8 ec 03 00 00       	call   19c0 <phase_5>
    15d4:	48 89 df             	mov    %rbx,%rdi
    15d7:	e8 89 0c 00 00       	call   2265 <phase_defused>
    15dc:	48 8d 3d 8e 2a 00 00 	lea    0x2a8e(%rip),%rdi        # 4071 <_IO_stdin_used+0x71>
    15e3:	e8 88 fc ff ff       	call   1270 <puts@plt>
    15e8:	e8 3a 0b 00 00       	call   2127 <read_line>
    15ed:	48 89 c7             	mov    %rax,%rdi
    15f0:	e8 5c 04 00 00       	call   1a51 <phase_6>
    15f5:	48 89 df             	mov    %rbx,%rdi
    15f8:	e8 68 0c 00 00       	call   2265 <phase_defused>
    15fd:	48 89 df             	mov    %rbx,%rdi
    1600:	e8 2b fc ff ff       	call   1230 <free@plt>
    1605:	b8 00 00 00 00       	mov    $0x0,%eax
    160a:	5b                   	pop    %rbx
    160b:	c3                   	ret
    160c:	48 8b 05 5d 6e 00 00 	mov    0x6e5d(%rip),%rax        # 8470 <stdin@GLIBC_2.2.5>
    1613:	48 89 05 76 6e 00 00 	mov    %rax,0x6e76(%rip)        # 8490 <infile>
    161a:	e9 04 ff ff ff       	jmp    1523 <main+0x3a>
    161f:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    1623:	48 8b 13             	mov    (%rbx),%rdx
    1626:	48 8d 35 d7 29 00 00 	lea    0x29d7(%rip),%rsi        # 4004 <_IO_stdin_used+0x4>
    162d:	bf 01 00 00 00       	mov    $0x1,%edi
    1632:	e8 29 fd ff ff       	call   1360 <__printf_chk@plt>
    1637:	bf 08 00 00 00       	mov    $0x8,%edi
    163c:	e8 4f fd ff ff       	call   1390 <exit@plt>
    1641:	48 8b 16             	mov    (%rsi),%rdx
    1644:	48 8d 35 d6 29 00 00 	lea    0x29d6(%rip),%rsi        # 4021 <_IO_stdin_used+0x21>
    164b:	bf 01 00 00 00       	mov    $0x1,%edi
    1650:	b8 00 00 00 00       	mov    $0x0,%eax
    1655:	e8 06 fd ff ff       	call   1360 <__printf_chk@plt>
    165a:	bf 08 00 00 00       	mov    $0x8,%edi
    165f:	e8 2c fd ff ff       	call   1390 <exit@plt>

0000000000001664 <abracadabra>:
    1664:	f3 0f 1e fa          	endbr64
    1668:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
    166f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1676:	00 00 
    1678:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
    167f:	00 
    1680:	31 c0                	xor    %eax,%eax

    1682:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    1687:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    168c:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1691:	48 8d 35 c3 2a 00 00 	lea    0x2ac3(%rip),%rsi        # 415b <_IO_stdin_used+0x15b>
    1698:	48 8d 3d e9 6f 00 00 	lea    0x6fe9(%rip),%rdi        # 8688 <input_strings+0x168>
    169f:	e8 9c fc ff ff       	call   1340 <__isoc99_sscanf@plt>
    16a4:	83 f8 03             	cmp    $0x3,%eax
    16a7:	74 20                	je     16c9 <abracadabra+0x65>

    16a9:	b8 00 00 00 00       	mov    $0x0,%eax
    16ae:	48 8b 94 24 88 00 00 	mov    0x88(%rsp),%rdx
    16b5:	00 
    16b6:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    16bd:	00 00 
    16bf:	75 2b                	jne    16ec <abracadabra+0x88>
    16c1:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
    16c8:	c3                   	ret

    16c9:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    16ce:	48 8d 35 9b 2a 00 00 	lea    0x2a9b(%rip),%rsi        # 4170 <_IO_stdin_used+0x170>
    16d5:	e8 6d 06 00 00       	call   1d47 <strings_not_equal>
    16da:	85 c0                	test   %eax,%eax
    16dc:	74 07                	je     16e5 <abracadabra+0x81>
    16de:	b8 00 00 00 00       	mov    $0x0,%eax
    16e3:	eb c9                	jmp    16ae <abracadabra+0x4a>
    16e5:	b8 01 00 00 00       	mov    $0x1,%eax
    16ea:	eb c2                	jmp    16ae <abracadabra+0x4a>
    16ec:	e8 af fb ff ff       	call   12a0 <__stack_chk_fail@plt>

00000000000016f1 <alohomora>:
    16f1:	f3 0f 1e fa          	endbr64
    16f5:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
    16fc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1703:	00 00 
    1705:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
    170a:	31 c0                	xor    %eax,%eax
    170c:	48 8d 05 85 6e 00 00 	lea    0x6e85(%rip),%rax        # 8598 <input_strings+0x78>
    1713:	eb 04                	jmp    1719 <alohomora+0x28>
    1715:	48 83 c0 01          	add    $0x1,%rax
    1719:	80 38 00             	cmpb   $0x0,(%rax)
    171c:	75 f7                	jne    1715 <alohomora+0x24>
    171e:	48 83 e8 01          	sub    $0x1,%rax
    1722:	48 89 e2             	mov    %rsp,%rdx    # rdx指向栈缓冲区（目标）
    1725:	eb 0a                	jmp    1731 <alohomora+0x40>

    1727:	88 0a                	mov    %cl,(%rdx)   # 存储字符到栈缓冲区
    1729:	48 83 c2 01          	add    $0x1,%rdx    # 目标指针前进
    172d:	48 83 e8 01          	sub    $0x1,%rax    # 源指针后退（关键：反向移动）

    1731:	0f b6 08             	movzbl (%rax),%ecx  # 读取当前字符到cl
    1734:	80 f9 20             	cmp    $0x20,%cl    # 检查是否为空格字符（空格的ascii是0x20）
    1737:	74 0c                	je     1745 <alohomora+0x54>    # 如果是空格，结束复制
    1739:	48 8d 35 58 6e 00 00 	lea    0x6e58(%rip),%rsi        # rsi = 字符串起始地址  # 8598 <input_strings+0x78>
    1740:	48 39 f0             	cmp    %rsi,%rax    # 检查是否回到字符串开头
    1743:	75 e2                	jne    1727 <alohomora+0x36>    # 如果没到开头，继续复制
    1745:	c6 02 00             	movb   $0x0,(%rdx)  # 在复制结果后添加NULL
    1748:	48 89 e7             	mov    %rsp,%rdi    # rdi = 反转后的字符串

    174b:	48 8d 35 46 2a 00 00 	lea    0x2a46(%rip),%rsi        # rsi = 目标字符串地址(0x4198) # 4198 <_IO_stdin_used+0x198>
    1752:	e8 f0 05 00 00       	call   1d47 <strings_not_equal> 
    1757:	85 c0                	test   %eax,%eax                # 检查是否相等
    1759:	74 1d                	je     1778 <alohomora+0x87>    # 如果相等，返回1
    175b:	b8 00 00 00 00       	mov    $0x0,%eax
    1760:	48 8b 54 24 78       	mov    0x78(%rsp),%rdx
    1765:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    176c:	00 00 
    176e:	75 0f                	jne    177f <alohomora+0x8e>
    1770:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
    1777:	c3                   	ret
    1778:	b8 01 00 00 00       	mov    $0x1,%eax
    177d:	eb e1                	jmp    1760 <alohomora+0x6f>
    177f:	e8 1c fb ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000001784 <phase_1>:
    1784:	f3 0f 1e fa          	endbr64
    1788:	48 83 ec 08          	sub    $0x8,%rsp
    178c:	48 8d 35 2d 2a 00 00 	lea    0x2a2d(%rip),%rsi        # 41c0 <_IO_stdin_used+0x1c0>
    1793:	e8 af 05 00 00       	call   1d47 <strings_not_equal>
    1798:	85 c0                	test   %eax,%eax
    179a:	75 05                	jne    17a1 <phase_1+0x1d>
    179c:	48 83 c4 08          	add    $0x8,%rsp
    17a0:	c3                   	ret
    17a1:	e8 b6 08 00 00       	call   205c <explode_bomb>
    17a6:	eb f4                	jmp    179c <phase_1+0x18>

00000000000017a8 <phase_2>:
    17a8:	f3 0f 1e fa          	endbr64
    17ac:	53                   	push   %rbx
    17ad:	48 83 ec 20          	sub    $0x20,%rsp
    17b1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    17b8:	00 00 
    17ba:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    17bf:	31 c0                	xor    %eax,%eax
    17c1:	48 89 e6             	mov    %rsp,%rsi
    17c4:	e8 19 09 00 00       	call   20e2 <read_six_numbers>
    17c9:	83 3c 24 00          	cmpl   $0x0,(%rsp)
    17cd:	75 07                	jne    17d6 <phase_2+0x2e>
    17cf:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
    17d4:	74 05                	je     17db <phase_2+0x33>
    17d6:	e8 81 08 00 00       	call   205c <explode_bomb>
    17db:	bb 02 00 00 00       	mov    $0x2,%ebx
    17e0:	eb 03                	jmp    17e5 <phase_2+0x3d>
    17e2:	83 c3 01             	add    $0x1,%ebx
    17e5:	83 fb 05             	cmp    $0x5,%ebx
    17e8:	7f 20                	jg     180a <phase_2+0x62>
    17ea:	48 63 d3             	movslq %ebx,%rdx
    17ed:	8d 4b fe             	lea    -0x2(%rbx),%ecx
    17f0:	48 63 c9             	movslq %ecx,%rcx
    17f3:	8d 43 ff             	lea    -0x1(%rbx),%eax
    17f6:	48 98                	cltq
    17f8:	8b 04 84             	mov    (%rsp,%rax,4),%eax
    17fb:	03 04 8c             	add    (%rsp,%rcx,4),%eax
    17fe:	39 04 94             	cmp    %eax,(%rsp,%rdx,4)
    1801:	74 df                	je     17e2 <phase_2+0x3a>
    1803:	e8 54 08 00 00       	call   205c <explode_bomb>
    1808:	eb d8                	jmp    17e2 <phase_2+0x3a>
    180a:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    180f:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1816:	00 00 
    1818:	75 06                	jne    1820 <phase_2+0x78>
    181a:	48 83 c4 20          	add    $0x20,%rsp
    181e:	5b                   	pop    %rbx
    181f:	c3                   	ret
    1820:	e8 7b fa ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000001825 <phase_3>:
    1825:	f3 0f 1e fa          	endbr64
    1829:	48 83 ec 18          	sub    $0x18,%rsp
    182d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1834:	00 00 
    1836:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    183b:	31 c0                	xor    %eax,%eax
    183d:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    1842:	48 89 e2             	mov    %rsp,%rdx
    1845:	48 8d 35 f4 2d 00 00 	lea    0x2df4(%rip),%rsi        # 4640 <transition_table+0x340>
    184c:	e8 ef fa ff ff       	call   1340 <__isoc99_sscanf@plt>
    1851:	83 f8 01             	cmp    $0x1,%eax
    1854:	7e 1e                	jle    1874 <phase_3+0x4f>
    1856:	83 3c 24 07          	cmpl   $0x7,(%rsp)
    185a:	0f 87 9a 00 00 00    	ja     18fa <phase_3+0xd5>
    1860:	8b 04 24             	mov    (%rsp),%eax
    1863:	48 8d 15 56 2a 00 00 	lea    0x2a56(%rip),%rdx        # 42c0 <_IO_stdin_used+0x2c0>
    186a:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    186e:	48 01 d0             	add    %rdx,%rax
    1871:	3e ff e0             	notrack jmp *%rax
    1874:	e8 e3 07 00 00       	call   205c <explode_bomb>
    1879:	eb db                	jmp    1856 <phase_3+0x31>
    187b:	b8 00 00 00 00       	mov    $0x0,%eax
    1880:	2d cf 00 00 00       	sub    $0xcf,%eax
    1885:	05 15 02 00 00       	add    $0x215,%eax
    188a:	2d d1 00 00 00       	sub    $0xd1,%eax
    188f:	05 d1 00 00 00       	add    $0xd1,%eax
    1894:	2d d1 00 00 00       	sub    $0xd1,%eax
    1899:	05 d1 00 00 00       	add    $0xd1,%eax
    189e:	2d d1 00 00 00       	sub    $0xd1,%eax
    18a3:	83 3c 24 05          	cmpl   $0x5,(%rsp)
    18a7:	7f 06                	jg     18af <phase_3+0x8a>
    18a9:	39 44 24 04          	cmp    %eax,0x4(%rsp)
    18ad:	74 05                	je     18b4 <phase_3+0x8f>
    18af:	e8 a8 07 00 00       	call   205c <explode_bomb>
    18b4:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    18b9:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    18c0:	00 00 
    18c2:	75 42                	jne    1906 <phase_3+0xe1>
    18c4:	48 83 c4 18          	add    $0x18,%rsp
    18c8:	c3                   	ret
    18c9:	b8 30 01 00 00       	mov    $0x130,%eax
    18ce:	eb b0                	jmp    1880 <phase_3+0x5b>
    18d0:	b8 00 00 00 00       	mov    $0x0,%eax
    18d5:	eb ae                	jmp    1885 <phase_3+0x60>
    18d7:	b8 00 00 00 00       	mov    $0x0,%eax
    18dc:	eb ac                	jmp    188a <phase_3+0x65>
    18de:	b8 00 00 00 00       	mov    $0x0,%eax
    18e3:	eb aa                	jmp    188f <phase_3+0x6a>
    18e5:	b8 00 00 00 00       	mov    $0x0,%eax
    18ea:	eb a8                	jmp    1894 <phase_3+0x6f>
    18ec:	b8 00 00 00 00       	mov    $0x0,%eax
    18f1:	eb a6                	jmp    1899 <phase_3+0x74>
    18f3:	b8 00 00 00 00       	mov    $0x0,%eax
    18f8:	eb a4                	jmp    189e <phase_3+0x79>
    18fa:	e8 5d 07 00 00       	call   205c <explode_bomb>
    18ff:	b8 00 00 00 00       	mov    $0x0,%eax
    1904:	eb 9d                	jmp    18a3 <phase_3+0x7e>
    1906:	e8 95 f9 ff ff       	call   12a0 <__stack_chk_fail@plt>

000000000000190b <func4>:
    190b:	f3 0f 1e fa          	endbr64
    190f:	53                   	push   %rbx
    1910:	89 d0                	mov    %edx,%eax
    1912:	29 f0                	sub    %esi,%eax
    1914:	89 c3                	mov    %eax,%ebx
    1916:	c1 eb 1f             	shr    $0x1f,%ebx
    1919:	01 c3                	add    %eax,%ebx
    191b:	d1 fb                	sar    $1,%ebx
    191d:	01 f3                	add    %esi,%ebx
    191f:	39 fb                	cmp    %edi,%ebx
    1921:	7f 06                	jg     1929 <func4+0x1e>
    1923:	7c 10                	jl     1935 <func4+0x2a>
    1925:	89 d8                	mov    %ebx,%eax
    1927:	5b                   	pop    %rbx
    1928:	c3                   	ret
    1929:	8d 53 ff             	lea    -0x1(%rbx),%edx
    192c:	e8 da ff ff ff       	call   190b <func4>
    1931:	01 c3                	add    %eax,%ebx
    1933:	eb f0                	jmp    1925 <func4+0x1a>
    1935:	8d 73 01             	lea    0x1(%rbx),%esi
    1938:	e8 ce ff ff ff       	call   190b <func4>
    193d:	01 c3                	add    %eax,%ebx
    193f:	eb e4                	jmp    1925 <func4+0x1a>

0000000000001941 <phase_4>:
    1941:	f3 0f 1e fa          	endbr64
    1945:	48 83 ec 18          	sub    $0x18,%rsp
    1949:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1950:	00 00 
    1952:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1957:	31 c0                	xor    %eax,%eax
    1959:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    195e:	48 89 e2             	mov    %rsp,%rdx
    1961:	48 8d 35 d8 2c 00 00 	lea    0x2cd8(%rip),%rsi        # 4640 <transition_table+0x340>
    1968:	e8 d3 f9 ff ff       	call   1340 <__isoc99_sscanf@plt>
    196d:	83 f8 02             	cmp    $0x2,%eax
    1970:	75 0c                	jne    197e <phase_4+0x3d>
    1972:	8b 04 24             	mov    (%rsp),%eax
    1975:	85 c0                	test   %eax,%eax
    1977:	78 05                	js     197e <phase_4+0x3d>
    1979:	83 f8 0e             	cmp    $0xe,%eax
    197c:	7e 05                	jle    1983 <phase_4+0x42>
    197e:	e8 d9 06 00 00       	call   205c <explode_bomb>
    1983:	ba 0e 00 00 00       	mov    $0xe,%edx
    1988:	be 00 00 00 00       	mov    $0x0,%esi
    198d:	8b 3c 24             	mov    (%rsp),%edi
    1990:	e8 76 ff ff ff       	call   190b <func4>
    1995:	83 f8 0d             	cmp    $0xd,%eax
    1998:	75 07                	jne    19a1 <phase_4+0x60>
    199a:	83 7c 24 04 0d       	cmpl   $0xd,0x4(%rsp)
    199f:	74 05                	je     19a6 <phase_4+0x65>
    19a1:	e8 b6 06 00 00       	call   205c <explode_bomb>
    19a6:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    19ab:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    19b2:	00 00 
    19b4:	75 05                	jne    19bb <phase_4+0x7a>
    19b6:	48 83 c4 18          	add    $0x18,%rsp
    19ba:	c3                   	ret
    19bb:	e8 e0 f8 ff ff       	call   12a0 <__stack_chk_fail@plt>

00000000000019c0 <phase_5>:
    19c0:	f3 0f 1e fa          	endbr64
    19c4:	53                   	push   %rbx
    19c5:	48 83 ec 10          	sub    $0x10,%rsp
    19c9:	48 89 fb             	mov    %rdi,%rbx
    19cc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    19d3:	00 00 
    19d5:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    19da:	31 c0                	xor    %eax,%eax
    19dc:	e8 4e 03 00 00       	call   1d2f <string_length>
    19e1:	83 f8 06             	cmp    $0x6,%eax
    19e4:	75 07                	jne    19ed <phase_5+0x2d>
    19e6:	b8 00 00 00 00       	mov    $0x0,%eax
    19eb:	eb 23                	jmp    1a10 <phase_5+0x50>
    19ed:	e8 6a 06 00 00       	call   205c <explode_bomb>
    19f2:	eb f2                	jmp    19e6 <phase_5+0x26>
    19f4:	48 63 c8             	movslq %eax,%rcx
    19f7:	0f b6 14 0b          	movzbl (%rbx,%rcx,1),%edx
    19fb:	83 e2 0f             	and    $0xf,%edx
    19fe:	48 8d 35 db 28 00 00 	lea    0x28db(%rip),%rsi        # 42e0 <array.0>
    1a05:	0f b6 14 16          	movzbl (%rsi,%rdx,1),%edx
    1a09:	88 54 0c 01          	mov    %dl,0x1(%rsp,%rcx,1)
    1a0d:	83 c0 01             	add    $0x1,%eax
    1a10:	83 f8 05             	cmp    $0x5,%eax
    1a13:	7e df                	jle    19f4 <phase_5+0x34>
    1a15:	c6 44 24 07 00       	movb   $0x0,0x7(%rsp)
    1a1a:	48 8d 7c 24 01       	lea    0x1(%rsp),%rdi
    1a1f:	48 8d 35 3e 27 00 00 	lea    0x273e(%rip),%rsi        # 4164 <_IO_stdin_used+0x164>
    1a26:	e8 1c 03 00 00       	call   1d47 <strings_not_equal>
    1a2b:	85 c0                	test   %eax,%eax
    1a2d:	75 16                	jne    1a45 <phase_5+0x85>
    1a2f:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1a34:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1a3b:	00 00 
    1a3d:	75 0d                	jne    1a4c <phase_5+0x8c>
    1a3f:	48 83 c4 10          	add    $0x10,%rsp
    1a43:	5b                   	pop    %rbx
    1a44:	c3                   	ret
    1a45:	e8 12 06 00 00       	call   205c <explode_bomb>
    1a4a:	eb e3                	jmp    1a2f <phase_5+0x6f>
    1a4c:	e8 4f f8 ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000001a51 <phase_6>:
    1a51:	f3 0f 1e fa          	endbr64
    1a55:	41 54                	push   %r12
    1a57:	55                   	push   %rbp
    1a58:	53                   	push   %rbx
    1a59:	48 83 ec 60          	sub    $0x60,%rsp
    1a5d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1a64:	00 00 
    1a66:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    1a6b:	31 c0                	xor    %eax,%eax
    1a6d:	48 89 e6             	mov    %rsp,%rsi
    1a70:	e8 6d 06 00 00       	call   20e2 <read_six_numbers>
    1a75:	bd 00 00 00 00       	mov    $0x0,%ebp
    1a7a:	eb 27                	jmp    1aa3 <phase_6+0x52>
    1a7c:	e8 db 05 00 00       	call   205c <explode_bomb>
    1a81:	eb 33                	jmp    1ab6 <phase_6+0x65>
    1a83:	83 c3 01             	add    $0x1,%ebx
    1a86:	83 fb 05             	cmp    $0x5,%ebx
    1a89:	7f 15                	jg     1aa0 <phase_6+0x4f>
    1a8b:	48 63 c5             	movslq %ebp,%rax
    1a8e:	48 63 d3             	movslq %ebx,%rdx
    1a91:	8b 3c 94             	mov    (%rsp,%rdx,4),%edi
    1a94:	39 3c 84             	cmp    %edi,(%rsp,%rax,4)
    1a97:	75 ea                	jne    1a83 <phase_6+0x32>
    1a99:	e8 be 05 00 00       	call   205c <explode_bomb>
    1a9e:	eb e3                	jmp    1a83 <phase_6+0x32>
    1aa0:	44 89 e5             	mov    %r12d,%ebp
    1aa3:	83 fd 05             	cmp    $0x5,%ebp
    1aa6:	7f 17                	jg     1abf <phase_6+0x6e>
    1aa8:	48 63 c5             	movslq %ebp,%rax
    1aab:	8b 04 84             	mov    (%rsp,%rax,4),%eax
    1aae:	83 e8 01             	sub    $0x1,%eax
    1ab1:	83 f8 05             	cmp    $0x5,%eax
    1ab4:	77 c6                	ja     1a7c <phase_6+0x2b>
    1ab6:	44 8d 65 01          	lea    0x1(%rbp),%r12d
    1aba:	44 89 e3             	mov    %r12d,%ebx
    1abd:	eb c7                	jmp    1a86 <phase_6+0x35>
    1abf:	be 00 00 00 00       	mov    $0x0,%esi
    1ac4:	eb 17                	jmp    1add <phase_6+0x8c>
    1ac6:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    1aca:	83 c0 01             	add    $0x1,%eax
    1acd:	48 63 ce             	movslq %esi,%rcx
    1ad0:	39 04 8c             	cmp    %eax,(%rsp,%rcx,4)
    1ad3:	7f f1                	jg     1ac6 <phase_6+0x75>
    1ad5:	48 89 54 cc 20       	mov    %rdx,0x20(%rsp,%rcx,8)
    1ada:	83 c6 01             	add    $0x1,%esi
    1add:	83 fe 05             	cmp    $0x5,%esi
    1ae0:	7f 0e                	jg     1af0 <phase_6+0x9f>
    1ae2:	b8 01 00 00 00       	mov    $0x1,%eax
    1ae7:	48 8d 15 62 65 00 00 	lea    0x6562(%rip),%rdx        # 8050 <node1>
    1aee:	eb dd                	jmp    1acd <phase_6+0x7c>
    1af0:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    1af5:	48 89 d9             	mov    %rbx,%rcx
    1af8:	b8 01 00 00 00       	mov    $0x1,%eax
    1afd:	eb 12                	jmp    1b11 <phase_6+0xc0>
    1aff:	48 63 d0             	movslq %eax,%rdx
    1b02:	48 8b 54 d4 20       	mov    0x20(%rsp,%rdx,8),%rdx
    1b07:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    1b0b:	83 c0 01             	add    $0x1,%eax
    1b0e:	48 89 d1             	mov    %rdx,%rcx
    1b11:	83 f8 05             	cmp    $0x5,%eax
    1b14:	7e e9                	jle    1aff <phase_6+0xae>
    1b16:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
    1b1d:	00 
    1b1e:	bd 00 00 00 00       	mov    $0x0,%ebp
    1b23:	eb 07                	jmp    1b2c <phase_6+0xdb>
    1b25:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    1b29:	83 c5 01             	add    $0x1,%ebp
    1b2c:	83 fd 04             	cmp    $0x4,%ebp
    1b2f:	7f 11                	jg     1b42 <phase_6+0xf1>
    1b31:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1b35:	8b 00                	mov    (%rax),%eax
    1b37:	39 03                	cmp    %eax,(%rbx)
    1b39:	7e ea                	jle    1b25 <phase_6+0xd4>
    1b3b:	e8 1c 05 00 00       	call   205c <explode_bomb>
    1b40:	eb e3                	jmp    1b25 <phase_6+0xd4>
    1b42:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    1b47:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1b4e:	00 00 
    1b50:	75 09                	jne    1b5b <phase_6+0x10a>
    1b52:	48 83 c4 60          	add    $0x60,%rsp
    1b56:	5b                   	pop    %rbx
    1b57:	5d                   	pop    %rbp
    1b58:	41 5c                	pop    %r12
    1b5a:	c3                   	ret
    1b5b:	e8 40 f7 ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000001b60 <emulate_fsm>:
    1b60:	f3 0f 1e fa          	endbr64
    1b64:	55                   	push   %rbp
    1b65:	53                   	push   %rbx
    1b66:	48 83 ec 08          	sub    $0x8,%rsp
    1b6a:	89 fd                	mov    %edi,%ebp
    1b6c:	48 89 f3             	mov    %rsi,%rbx
    1b6f:	eb 28                	jmp    1b99 <emulate_fsm+0x39>
    1b71:	0f be 03             	movsbl (%rbx),%eax
    1b74:	83 e8 30             	sub    $0x30,%eax
    1b77:	48 63 ed             	movslq %ebp,%rbp
    1b7a:	48 98                	cltq
    1b7c:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    1b83:	00 
    1b84:	48 29 c2             	sub    %rax,%rdx
    1b87:	48 8d 04 2a          	lea    (%rdx,%rbp,1),%rax
    1b8b:	48 8d 15 6e 27 00 00 	lea    0x276e(%rip),%rdx        # 4300 <transition_table>
    1b92:	8b 2c 82             	mov    (%rdx,%rax,4),%ebp
    1b95:	48 83 c3 01          	add    $0x1,%rbx
    1b99:	0f b6 03             	movzbl (%rbx),%eax
    1b9c:	84 c0                	test   %al,%al
    1b9e:	74 0e                	je     1bae <emulate_fsm+0x4e>
    1ba0:	83 e8 30             	sub    $0x30,%eax
    1ba3:	3c 01                	cmp    $0x1,%al
    1ba5:	76 ca                	jbe    1b71 <emulate_fsm+0x11>
    1ba7:	e8 b0 04 00 00       	call   205c <explode_bomb>
    1bac:	eb c3                	jmp    1b71 <emulate_fsm+0x11>
    1bae:	89 e8                	mov    %ebp,%eax
    1bb0:	48 83 c4 08          	add    $0x8,%rsp
    1bb4:	5b                   	pop    %rbx
    1bb5:	5d                   	pop    %rbp
    1bb6:	c3                   	ret

0000000000001bb7 <check_synchronizing_sequence>:
    1bb7:	f3 0f 1e fa          	endbr64
    1bbb:	41 54                	push   %r12
    1bbd:	55                   	push   %rbp
    1bbe:	53                   	push   %rbx
    1bbf:	48 89 fd             	mov    %rdi,%rbp
    1bc2:	48 89 fe             	mov    %rdi,%rsi
    1bc5:	bf 00 00 00 00       	mov    $0x0,%edi
    1bca:	e8 91 ff ff ff       	call   1b60 <emulate_fsm>
    1bcf:	41 89 c4             	mov    %eax,%r12d
    1bd2:	bb 01 00 00 00       	mov    $0x1,%ebx
    1bd7:	83 fb 06             	cmp    $0x6,%ebx
    1bda:	7f 14                	jg     1bf0 <check_synchronizing_sequence+0x39>
    1bdc:	48 89 ee             	mov    %rbp,%rsi
    1bdf:	89 df                	mov    %ebx,%edi
    1be1:	e8 7a ff ff ff       	call   1b60 <emulate_fsm>
    1be6:	44 39 e0             	cmp    %r12d,%eax
    1be9:	75 0f                	jne    1bfa <check_synchronizing_sequence+0x43>
    1beb:	83 c3 01             	add    $0x1,%ebx
    1bee:	eb e7                	jmp    1bd7 <check_synchronizing_sequence+0x20>
    1bf0:	b8 00 00 00 00       	mov    $0x0,%eax
    1bf5:	5b                   	pop    %rbx
    1bf6:	5d                   	pop    %rbp
    1bf7:	41 5c                	pop    %r12
    1bf9:	c3                   	ret
    1bfa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1bff:	eb f4                	jmp    1bf5 <check_synchronizing_sequence+0x3e>

0000000000001c01 <secret_phase>:
    1c01:	f3 0f 1e fa          	endbr64
    1c05:	55                   	push   %rbp
    1c06:	53                   	push   %rbx
    1c07:	48 83 ec 18          	sub    $0x18,%rsp
    1c0b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1c12:	00 00 
    1c14:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1c19:	31 c0                	xor    %eax,%eax
    1c1b:	e8 07 05 00 00       	call   2127 <read_line>
    1c20:	48 89 c5             	mov    %rax,%rbp
    1c23:	bb 00 00 00 00       	mov    $0x0,%ebx
    1c28:	eb 03                	jmp    1c2d <secret_phase+0x2c>
    1c2a:	83 c3 01             	add    $0x1,%ebx
    1c2d:	48 63 c3             	movslq %ebx,%rax
    1c30:	80 7c 05 00 00       	cmpb   $0x0,0x0(%rbp,%rax,1)
    1c35:	74 0c                	je     1c43 <secret_phase+0x42>
    1c37:	83 fb 10             	cmp    $0x10,%ebx
    1c3a:	7e ee                	jle    1c2a <secret_phase+0x29>
    1c3c:	e8 1b 04 00 00       	call   205c <explode_bomb>
    1c41:	eb e7                	jmp    1c2a <secret_phase+0x29>
    1c43:	48 89 ef             	mov    %rbp,%rdi
    1c46:	e8 6c ff ff ff       	call   1bb7 <check_synchronizing_sequence>
    1c4b:	85 c0                	test   %eax,%eax
    1c4d:	75 45                	jne    1c94 <secret_phase+0x93>
    1c4f:	48 8d 3d aa 25 00 00 	lea    0x25aa(%rip),%rdi        # 4200 <_IO_stdin_used+0x200>
    1c56:	e8 15 f6 ff ff       	call   1270 <puts@plt>
    1c5b:	48 8d 3d ce 25 00 00 	lea    0x25ce(%rip),%rdi        # 4230 <_IO_stdin_used+0x230>
    1c62:	e8 09 f6 ff ff       	call   1270 <puts@plt>
    1c67:	48 8d 3d 1a 26 00 00 	lea    0x261a(%rip),%rdi        # 4288 <_IO_stdin_used+0x288>
    1c6e:	e8 fd f5 ff ff       	call   1270 <puts@plt>
    1c73:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    1c78:	e8 e8 05 00 00       	call   2265 <phase_defused>
    1c7d:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1c82:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1c89:	00 00 
    1c8b:	75 0e                	jne    1c9b <secret_phase+0x9a>
    1c8d:	48 83 c4 18          	add    $0x18,%rsp
    1c91:	5b                   	pop    %rbx
    1c92:	5d                   	pop    %rbp
    1c93:	c3                   	ret
    1c94:	e8 c3 03 00 00       	call   205c <explode_bomb>
    1c99:	eb b4                	jmp    1c4f <secret_phase+0x4e>
    1c9b:	e8 00 f6 ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000001ca0 <sig_handler>:
    1ca0:	f3 0f 1e fa          	endbr64
    1ca4:	50                   	push   %rax
    1ca5:	58                   	pop    %rax
    1ca6:	48 83 ec 08          	sub    $0x8,%rsp
    1caa:	48 8d 3d 87 26 00 00 	lea    0x2687(%rip),%rdi        # 4338 <transition_table+0x38>
    1cb1:	e8 ba f5 ff ff       	call   1270 <puts@plt>
    1cb6:	bf 03 00 00 00       	mov    $0x3,%edi
    1cbb:	e8 00 f7 ff ff       	call   13c0 <sleep@plt>
    1cc0:	48 8d 35 f2 28 00 00 	lea    0x28f2(%rip),%rsi        # 45b9 <transition_table+0x2b9>
    1cc7:	bf 01 00 00 00       	mov    $0x1,%edi
    1ccc:	b8 00 00 00 00       	mov    $0x0,%eax
    1cd1:	e8 8a f6 ff ff       	call   1360 <__printf_chk@plt>
    1cd6:	48 8b 3d 83 67 00 00 	mov    0x6783(%rip),%rdi        # 8460 <stdout@GLIBC_2.2.5>
    1cdd:	e8 4e f6 ff ff       	call   1330 <fflush@plt>
    1ce2:	bf 01 00 00 00       	mov    $0x1,%edi
    1ce7:	e8 d4 f6 ff ff       	call   13c0 <sleep@plt>
    1cec:	48 8d 3d ce 28 00 00 	lea    0x28ce(%rip),%rdi        # 45c1 <transition_table+0x2c1>
    1cf3:	e8 78 f5 ff ff       	call   1270 <puts@plt>
    1cf8:	bf 10 00 00 00       	mov    $0x10,%edi
    1cfd:	e8 8e f6 ff ff       	call   1390 <exit@plt>

0000000000001d02 <invalid_phase>:
    1d02:	f3 0f 1e fa          	endbr64
    1d06:	50                   	push   %rax
    1d07:	58                   	pop    %rax
    1d08:	48 83 ec 08          	sub    $0x8,%rsp
    1d0c:	48 89 fa             	mov    %rdi,%rdx
    1d0f:	48 8d 35 b3 28 00 00 	lea    0x28b3(%rip),%rsi        # 45c9 <transition_table+0x2c9>
    1d16:	bf 01 00 00 00       	mov    $0x1,%edi
    1d1b:	b8 00 00 00 00       	mov    $0x0,%eax
    1d20:	e8 3b f6 ff ff       	call   1360 <__printf_chk@plt>
    1d25:	bf 08 00 00 00       	mov    $0x8,%edi
    1d2a:	e8 61 f6 ff ff       	call   1390 <exit@plt>

0000000000001d2f <string_length>:
    1d2f:	f3 0f 1e fa          	endbr64
    1d33:	b8 00 00 00 00       	mov    $0x0,%eax
    1d38:	eb 07                	jmp    1d41 <string_length+0x12>
    1d3a:	48 83 c7 01          	add    $0x1,%rdi
    1d3e:	83 c0 01             	add    $0x1,%eax
    1d41:	80 3f 00             	cmpb   $0x0,(%rdi)
    1d44:	75 f4                	jne    1d3a <string_length+0xb>
    1d46:	c3                   	ret

0000000000001d47 <strings_not_equal>:
    1d47:	f3 0f 1e fa          	endbr64
    1d4b:	41 54                	push   %r12
    1d4d:	55                   	push   %rbp
    1d4e:	53                   	push   %rbx
    1d4f:	48 89 fb             	mov    %rdi,%rbx
    1d52:	48 89 f5             	mov    %rsi,%rbp
    1d55:	e8 d5 ff ff ff       	call   1d2f <string_length>
    1d5a:	41 89 c4             	mov    %eax,%r12d
    1d5d:	48 89 ef             	mov    %rbp,%rdi
    1d60:	e8 ca ff ff ff       	call   1d2f <string_length>
    1d65:	41 39 c4             	cmp    %eax,%r12d
    1d68:	74 12                	je     1d7c <strings_not_equal+0x35>
    1d6a:	b8 01 00 00 00       	mov    $0x1,%eax
    1d6f:	5b                   	pop    %rbx
    1d70:	5d                   	pop    %rbp
    1d71:	41 5c                	pop    %r12
    1d73:	c3                   	ret
    1d74:	48 83 c3 01          	add    $0x1,%rbx
    1d78:	48 83 c5 01          	add    $0x1,%rbp
    1d7c:	0f b6 03             	movzbl (%rbx),%eax
    1d7f:	84 c0                	test   %al,%al
    1d81:	74 0c                	je     1d8f <strings_not_equal+0x48>
    1d83:	38 45 00             	cmp    %al,0x0(%rbp)
    1d86:	74 ec                	je     1d74 <strings_not_equal+0x2d>
    1d88:	b8 01 00 00 00       	mov    $0x1,%eax
    1d8d:	eb e0                	jmp    1d6f <strings_not_equal+0x28>
    1d8f:	b8 00 00 00 00       	mov    $0x0,%eax
    1d94:	eb d9                	jmp    1d6f <strings_not_equal+0x28>

0000000000001d96 <initialize_bomb>:
    1d96:	f3 0f 1e fa          	endbr64
    1d9a:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1da1:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1da6:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1dad:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1db2:	48 83 ec 58          	sub    $0x58,%rsp
    1db6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1dbd:	00 00 
    1dbf:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
    1dc6:	00 
    1dc7:	31 c0                	xor    %eax,%eax
    1dc9:	48 8d 35 d0 fe ff ff 	lea    -0x130(%rip),%rsi        # 1ca0 <sig_handler>
    1dd0:	bf 02 00 00 00       	mov    $0x2,%edi
    1dd5:	e8 06 f5 ff ff       	call   12e0 <signal@plt>
    1dda:	48 89 e7             	mov    %rsp,%rdi
    1ddd:	be 40 00 00 00       	mov    $0x40,%esi
    1de2:	e8 99 f5 ff ff       	call   1380 <gethostname@plt>
    1de7:	85 c0                	test   %eax,%eax
    1de9:	75 39                	jne    1e24 <initialize_bomb+0x8e>
    1deb:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    1df0:	e8 5b 10 00 00       	call   2e50 <init_driver>
    1df5:	85 c0                	test   %eax,%eax
    1df7:	78 41                	js     1e3a <initialize_bomb+0xa4>
    1df9:	bf 04 00 00 00       	mov    $0x4,%edi
    1dfe:	e8 1d f5 ff ff       	call   1320 <malloc@plt>
    1e03:	c7 00 11 fa 25 20    	movl   $0x2025fa11,(%rax)
    1e09:	48 8b 94 24 48 20 00 	mov    0x2048(%rsp),%rdx
    1e10:	00 
    1e11:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    1e18:	00 00 
    1e1a:	75 43                	jne    1e5f <initialize_bomb+0xc9>
    1e1c:	48 81 c4 58 20 00 00 	add    $0x2058,%rsp
    1e23:	c3                   	ret
    1e24:	48 8d 3d 45 25 00 00 	lea    0x2545(%rip),%rdi        # 4370 <transition_table+0x70>
    1e2b:	e8 40 f4 ff ff       	call   1270 <puts@plt>
    1e30:	bf 08 00 00 00       	mov    $0x8,%edi
    1e35:	e8 56 f5 ff ff       	call   1390 <exit@plt>
    1e3a:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    1e3f:	48 8d 35 94 27 00 00 	lea    0x2794(%rip),%rsi        # 45da <transition_table+0x2da>
    1e46:	bf 01 00 00 00       	mov    $0x1,%edi
    1e4b:	b8 00 00 00 00       	mov    $0x0,%eax
    1e50:	e8 0b f5 ff ff       	call   1360 <__printf_chk@plt>
    1e55:	bf 08 00 00 00       	mov    $0x8,%edi
    1e5a:	e8 31 f5 ff ff       	call   1390 <exit@plt>
    1e5f:	e8 3c f4 ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000001e64 <initialize_bomb_solve>:
    1e64:	f3 0f 1e fa          	endbr64
    1e68:	c3                   	ret

0000000000001e69 <blank_line>:
    1e69:	f3 0f 1e fa          	endbr64
    1e6d:	55                   	push   %rbp
    1e6e:	53                   	push   %rbx
    1e6f:	48 83 ec 08          	sub    $0x8,%rsp
    1e73:	48 89 fd             	mov    %rdi,%rbp
    1e76:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1e7a:	84 db                	test   %bl,%bl
    1e7c:	74 1e                	je     1e9c <blank_line+0x33>
    1e7e:	e8 4d f5 ff ff       	call   13d0 <__ctype_b_loc@plt>
    1e83:	48 8b 00             	mov    (%rax),%rax
    1e86:	48 83 c5 01          	add    $0x1,%rbp
    1e8a:	48 0f be db          	movsbq %bl,%rbx
    1e8e:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1e93:	75 e1                	jne    1e76 <blank_line+0xd>
    1e95:	b8 00 00 00 00       	mov    $0x0,%eax
    1e9a:	eb 05                	jmp    1ea1 <blank_line+0x38>
    1e9c:	b8 01 00 00 00       	mov    $0x1,%eax
    1ea1:	48 83 c4 08          	add    $0x8,%rsp
    1ea5:	5b                   	pop    %rbx
    1ea6:	5d                   	pop    %rbp
    1ea7:	c3                   	ret

0000000000001ea8 <skip>:
    1ea8:	f3 0f 1e fa          	endbr64
    1eac:	53                   	push   %rbx
    1ead:	48 63 15 64 66 00 00 	movslq 0x6664(%rip),%rdx        # 8518 <num_input_strings>
    1eb4:	48 89 d0             	mov    %rdx,%rax
    1eb7:	48 c1 e0 04          	shl    $0x4,%rax
    1ebb:	48 29 d0             	sub    %rdx,%rax
    1ebe:	48 8d 15 5b 66 00 00 	lea    0x665b(%rip),%rdx        # 8520 <input_strings>
    1ec5:	48 8d 3c c2          	lea    (%rdx,%rax,8),%rdi
    1ec9:	48 8b 0d c0 65 00 00 	mov    0x65c0(%rip),%rcx        # 8490 <infile>
    1ed0:	ba 78 00 00 00       	mov    $0x78,%edx
    1ed5:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
    1edc:	e8 6f f4 ff ff       	call   1350 <__fgets_chk@plt>
    1ee1:	48 89 c3             	mov    %rax,%rbx
    1ee4:	48 85 c0             	test   %rax,%rax
    1ee7:	74 0c                	je     1ef5 <skip+0x4d>
    1ee9:	48 89 c7             	mov    %rax,%rdi
    1eec:	e8 78 ff ff ff       	call   1e69 <blank_line>
    1ef1:	85 c0                	test   %eax,%eax
    1ef3:	75 b8                	jne    1ead <skip+0x5>
    1ef5:	48 89 d8             	mov    %rbx,%rax
    1ef8:	5b                   	pop    %rbx
    1ef9:	c3                   	ret

0000000000001efa <send_msg>:
    1efa:	f3 0f 1e fa          	endbr64
    1efe:	41 55                	push   %r13
    1f00:	41 54                	push   %r12
    1f02:	55                   	push   %rbp
    1f03:	53                   	push   %rbx
    1f04:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
    1f0b:	ff 
    1f0c:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1f13:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1f18:	4c 39 dc             	cmp    %r11,%rsp
    1f1b:	75 ef                	jne    1f0c <send_msg+0x12>
    1f1d:	48 83 ec 18          	sub    $0x18,%rsp
    1f21:	89 fd                	mov    %edi,%ebp
    1f23:	48 89 f3             	mov    %rsi,%rbx
    1f26:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1f2d:	00 00 
    1f2f:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    1f36:	00 
    1f37:	31 c0                	xor    %eax,%eax
    1f39:	44 8b 25 d8 65 00 00 	mov    0x65d8(%rip),%r12d        # 8518 <num_input_strings>
    1f40:	41 8d 44 24 ff       	lea    -0x1(%r12),%eax
    1f45:	48 98                	cltq
    1f47:	48 89 c2             	mov    %rax,%rdx
    1f4a:	48 c1 e2 04          	shl    $0x4,%rdx
    1f4e:	48 29 c2             	sub    %rax,%rdx
    1f51:	48 8d 05 c8 65 00 00 	lea    0x65c8(%rip),%rax        # 8520 <input_strings>
    1f58:	4c 8d 2c d0          	lea    (%rax,%rdx,8),%r13
    1f5c:	4c 89 ef             	mov    %r13,%rdi
    1f5f:	e8 2c f3 ff ff       	call   1290 <strlen@plt>
    1f64:	48 83 c0 64          	add    $0x64,%rax
    1f68:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    1f6e:	0f 87 a0 00 00 00    	ja     2014 <send_msg+0x11a>
    1f74:	85 ed                	test   %ebp,%ebp
    1f76:	0f 84 b8 00 00 00    	je     2034 <send_msg+0x13a>
    1f7c:	48 8d 05 71 26 00 00 	lea    0x2671(%rip),%rax        # 45f4 <transition_table+0x2f4>
    1f83:	48 89 e5             	mov    %rsp,%rbp
    1f86:	48 83 ec 08          	sub    $0x8,%rsp
    1f8a:	41 55                	push   %r13
    1f8c:	41 54                	push   %r12
    1f8e:	50                   	push   %rax
    1f8f:	4c 8d 0d aa 58 00 00 	lea    0x58aa(%rip),%r9        # 7840 <authkey>
    1f96:	44 8b 05 a3 60 00 00 	mov    0x60a3(%rip),%r8d        # 8040 <bomb_id>
    1f9d:	48 8d 0d 61 26 00 00 	lea    0x2661(%rip),%rcx        # 4605 <transition_table+0x305>
    1fa4:	ba 00 20 00 00       	mov    $0x2000,%edx
    1fa9:	be 01 00 00 00       	mov    $0x1,%esi
    1fae:	48 89 ef             	mov    %rbp,%rdi
    1fb1:	b8 00 00 00 00       	mov    $0x0,%eax
    1fb6:	e8 25 f4 ff ff       	call   13e0 <__sprintf_chk@plt>
    1fbb:	48 89 ec             	mov    %rbp,%rsp
    1fbe:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
    1fc5:	00 
    1fc6:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    1fcc:	48 89 e9             	mov    %rbp,%rcx
    1fcf:	48 8d 15 6a 50 00 00 	lea    0x506a(%rip),%rdx        # 7040 <lab>
    1fd6:	48 8d 35 63 54 00 00 	lea    0x5463(%rip),%rsi        # 7440 <course>
    1fdd:	48 8d 3d 5c 5c 00 00 	lea    0x5c5c(%rip),%rdi        # 7c40 <userid>
    1fe4:	e8 96 10 00 00       	call   307f <driver_post>
    1fe9:	c7 03 01 00 00 00    	movl   $0x1,(%rbx)
    1fef:	85 c0                	test   %eax,%eax
    1ff1:	78 4d                	js     2040 <send_msg+0x146>
    1ff3:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    1ffa:	00 
    1ffb:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    2002:	00 00 
    2004:	75 51                	jne    2057 <send_msg+0x15d>
    2006:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
    200d:	5b                   	pop    %rbx
    200e:	5d                   	pop    %rbp
    200f:	41 5c                	pop    %r12
    2011:	41 5d                	pop    %r13
    2013:	c3                   	ret
    2014:	48 8d 35 8d 23 00 00 	lea    0x238d(%rip),%rsi        # 43a8 <transition_table+0xa8>
    201b:	bf 01 00 00 00       	mov    $0x1,%edi
    2020:	b8 00 00 00 00       	mov    $0x0,%eax
    2025:	e8 36 f3 ff ff       	call   1360 <__printf_chk@plt>
    202a:	bf 08 00 00 00       	mov    $0x8,%edi
    202f:	e8 5c f3 ff ff       	call   1390 <exit@plt>
    2034:	48 8d 05 c1 25 00 00 	lea    0x25c1(%rip),%rax        # 45fc <transition_table+0x2fc>
    203b:	e9 43 ff ff ff       	jmp    1f83 <send_msg+0x89>
    2040:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
    2047:	00 
    2048:	e8 23 f2 ff ff       	call   1270 <puts@plt>
    204d:	bf 00 00 00 00       	mov    $0x0,%edi
    2052:	e8 39 f3 ff ff       	call   1390 <exit@plt>
    2057:	e8 44 f2 ff ff       	call   12a0 <__stack_chk_fail@plt>

000000000000205c <explode_bomb>:
    205c:	f3 0f 1e fa          	endbr64
    2060:	50                   	push   %rax
    2061:	58                   	pop    %rax
    2062:	48 83 ec 18          	sub    $0x18,%rsp
    2066:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    206d:	00 00 
    206f:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    2074:	31 c0                	xor    %eax,%eax
    2076:	48 8d 3d 97 25 00 00 	lea    0x2597(%rip),%rdi        # 4614 <transition_table+0x314>
    207d:	e8 ee f1 ff ff       	call   1270 <puts@plt>
    2082:	48 8d 3d 94 25 00 00 	lea    0x2594(%rip),%rdi        # 461d <transition_table+0x31d>
    2089:	e8 e2 f1 ff ff       	call   1270 <puts@plt>
    208e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%rsp)
    2095:	00 
    2096:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
    209b:	bf 00 00 00 00       	mov    $0x0,%edi
    20a0:	e8 55 fe ff ff       	call   1efa <send_msg>
    20a5:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
    20aa:	74 20                	je     20cc <explode_bomb+0x70>
    20ac:	48 8d 35 1d 23 00 00 	lea    0x231d(%rip),%rsi        # 43d0 <transition_table+0xd0>
    20b3:	bf 01 00 00 00       	mov    $0x1,%edi
    20b8:	b8 00 00 00 00       	mov    $0x0,%eax
    20bd:	e8 9e f2 ff ff       	call   1360 <__printf_chk@plt>
    20c2:	bf 08 00 00 00       	mov    $0x8,%edi
    20c7:	e8 c4 f2 ff ff       	call   1390 <exit@plt>
    20cc:	48 8d 3d 45 23 00 00 	lea    0x2345(%rip),%rdi        # 4418 <transition_table+0x118>
    20d3:	e8 98 f1 ff ff       	call   1270 <puts@plt>
    20d8:	bf 08 00 00 00       	mov    $0x8,%edi
    20dd:	e8 ae f2 ff ff       	call   1390 <exit@plt>

00000000000020e2 <read_six_numbers>:
    20e2:	f3 0f 1e fa          	endbr64
    20e6:	48 83 ec 08          	sub    $0x8,%rsp
    20ea:	48 89 f2             	mov    %rsi,%rdx
    20ed:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    20f1:	48 8d 46 14          	lea    0x14(%rsi),%rax
    20f5:	50                   	push   %rax
    20f6:	48 8d 46 10          	lea    0x10(%rsi),%rax
    20fa:	50                   	push   %rax
    20fb:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    20ff:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    2103:	48 8d 35 2a 25 00 00 	lea    0x252a(%rip),%rsi        # 4634 <transition_table+0x334>
    210a:	b8 00 00 00 00       	mov    $0x0,%eax
    210f:	e8 2c f2 ff ff       	call   1340 <__isoc99_sscanf@plt>
    2114:	48 83 c4 10          	add    $0x10,%rsp
    2118:	83 f8 05             	cmp    $0x5,%eax
    211b:	7e 05                	jle    2122 <read_six_numbers+0x40>
    211d:	48 83 c4 08          	add    $0x8,%rsp
    2121:	c3                   	ret
    2122:	e8 35 ff ff ff       	call   205c <explode_bomb>

0000000000002127 <read_line>:
    2127:	f3 0f 1e fa          	endbr64
    212b:	55                   	push   %rbp
    212c:	53                   	push   %rbx
    212d:	48 83 ec 08          	sub    $0x8,%rsp
    2131:	b8 00 00 00 00       	mov    $0x0,%eax
    2136:	e8 6d fd ff ff       	call   1ea8 <skip>
    213b:	48 85 c0             	test   %rax,%rax
    213e:	74 63                	je     21a3 <read_line+0x7c>
    2140:	8b 1d d2 63 00 00    	mov    0x63d2(%rip),%ebx        # 8518 <num_input_strings>
    2146:	48 63 d3             	movslq %ebx,%rdx
    2149:	48 89 d0             	mov    %rdx,%rax
    214c:	48 c1 e0 04          	shl    $0x4,%rax
    2150:	48 29 d0             	sub    %rdx,%rax
    2153:	48 8d 15 c6 63 00 00 	lea    0x63c6(%rip),%rdx        # 8520 <input_strings>
    215a:	48 8d 2c c2          	lea    (%rdx,%rax,8),%rbp
    215e:	48 89 ef             	mov    %rbp,%rdi
    2161:	e8 2a f1 ff ff       	call   1290 <strlen@plt>
    2166:	83 f8 76             	cmp    $0x76,%eax
    2169:	0f 8f ac 00 00 00    	jg     221b <read_line+0xf4>
    216f:	83 e8 01             	sub    $0x1,%eax
    2172:	48 98                	cltq
    2174:	48 63 cb             	movslq %ebx,%rcx
    2177:	48 89 ca             	mov    %rcx,%rdx
    217a:	48 c1 e2 04          	shl    $0x4,%rdx
    217e:	48 29 ca             	sub    %rcx,%rdx
    2181:	48 8d 0d 98 63 00 00 	lea    0x6398(%rip),%rcx        # 8520 <input_strings>
    2188:	48 8d 14 d1          	lea    (%rcx,%rdx,8),%rdx
    218c:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    2190:	83 c3 01             	add    $0x1,%ebx
    2193:	89 1d 7f 63 00 00    	mov    %ebx,0x637f(%rip)        # 8518 <num_input_strings>
    2199:	48 89 e8             	mov    %rbp,%rax
    219c:	48 83 c4 08          	add    $0x8,%rsp
    21a0:	5b                   	pop    %rbx
    21a1:	5d                   	pop    %rbp
    21a2:	c3                   	ret
    21a3:	48 8b 05 c6 62 00 00 	mov    0x62c6(%rip),%rax        # 8470 <stdin@GLIBC_2.2.5>
    21aa:	48 39 05 df 62 00 00 	cmp    %rax,0x62df(%rip)        # 8490 <infile>
    21b1:	74 1b                	je     21ce <read_line+0xa7>
    21b3:	48 8d 3d aa 24 00 00 	lea    0x24aa(%rip),%rdi        # 4664 <transition_table+0x364>
    21ba:	e8 61 f0 ff ff       	call   1220 <getenv@plt>
    21bf:	48 85 c0             	test   %rax,%rax
    21c2:	74 20                	je     21e4 <read_line+0xbd>
    21c4:	bf 00 00 00 00       	mov    $0x0,%edi
    21c9:	e8 c2 f1 ff ff       	call   1390 <exit@plt>
    21ce:	48 8d 3d 71 24 00 00 	lea    0x2471(%rip),%rdi        # 4646 <transition_table+0x346>
    21d5:	e8 96 f0 ff ff       	call   1270 <puts@plt>
    21da:	bf 08 00 00 00       	mov    $0x8,%edi
    21df:	e8 ac f1 ff ff       	call   1390 <exit@plt>
    21e4:	48 8b 05 85 62 00 00 	mov    0x6285(%rip),%rax        # 8470 <stdin@GLIBC_2.2.5>
    21eb:	48 89 05 9e 62 00 00 	mov    %rax,0x629e(%rip)        # 8490 <infile>
    21f2:	b8 00 00 00 00       	mov    $0x0,%eax
    21f7:	e8 ac fc ff ff       	call   1ea8 <skip>
    21fc:	48 85 c0             	test   %rax,%rax
    21ff:	0f 85 3b ff ff ff    	jne    2140 <read_line+0x19>
    2205:	48 8d 3d 3a 24 00 00 	lea    0x243a(%rip),%rdi        # 4646 <transition_table+0x346>
    220c:	e8 5f f0 ff ff       	call   1270 <puts@plt>
    2211:	bf 00 00 00 00       	mov    $0x0,%edi
    2216:	e8 75 f1 ff ff       	call   1390 <exit@plt>
    221b:	48 8d 3d 4d 24 00 00 	lea    0x244d(%rip),%rdi        # 466f <transition_table+0x36f>
    2222:	e8 49 f0 ff ff       	call   1270 <puts@plt>
    2227:	8b 05 eb 62 00 00    	mov    0x62eb(%rip),%eax        # 8518 <num_input_strings>
    222d:	8d 50 01             	lea    0x1(%rax),%edx
    2230:	89 15 e2 62 00 00    	mov    %edx,0x62e2(%rip)        # 8518 <num_input_strings>
    2236:	48 98                	cltq
    2238:	48 6b c0 78          	imul   $0x78,%rax,%rax
    223c:	48 8d 15 dd 62 00 00 	lea    0x62dd(%rip),%rdx        # 8520 <input_strings>
    2243:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    224a:	75 6e 63 
    224d:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    2254:	2a 2a 00 
    2257:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    225b:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    2260:	e8 f7 fd ff ff       	call   205c <explode_bomb>

0000000000002265 <phase_defused>:
    2265:	f3 0f 1e fa          	endbr64
    2269:	53                   	push   %rbx
    226a:	48 89 fb             	mov    %rdi,%rbx
    226d:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
    2273:	48 89 fe             	mov    %rdi,%rsi
    2276:	bf 01 00 00 00       	mov    $0x1,%edi
    227b:	e8 7a fc ff ff       	call   1efa <send_msg>
    2280:	83 3b 01             	cmpl   $0x1,(%rbx)
    2283:	75 0b                	jne    2290 <phase_defused+0x2b>
    2285:	83 3d 8c 62 00 00 06 	cmpl   $0x6,0x628c(%rip)        # 8518 <num_input_strings>
    228c:	74 22                	je     22b0 <phase_defused+0x4b>
    228e:	5b                   	pop    %rbx
    228f:	c3                   	ret
    2290:	48 8d 35 39 21 00 00 	lea    0x2139(%rip),%rsi        # 43d0 <transition_table+0xd0>
    2297:	bf 01 00 00 00       	mov    $0x1,%edi
    229c:	b8 00 00 00 00       	mov    $0x0,%eax
    22a1:	e8 ba f0 ff ff       	call   1360 <__printf_chk@plt>
    22a6:	bf 08 00 00 00       	mov    $0x8,%edi
    22ab:	e8 e0 f0 ff ff       	call   1390 <exit@plt>
    22b0:	e8 af f3 ff ff       	call   1664 <abracadabra>
    22b5:	85 c0                	test   %eax,%eax
    22b7:	75 1a                	jne    22d3 <phase_defused+0x6e>
    22b9:	48 8d 3d 70 22 00 00 	lea    0x2270(%rip),%rdi        # 4530 <transition_table+0x230>
    22c0:	e8 ab ef ff ff       	call   1270 <puts@plt>
    22c5:	48 8d 3d ac 22 00 00 	lea    0x22ac(%rip),%rdi        # 4578 <transition_table+0x278>
    22cc:	e8 9f ef ff ff       	call   1270 <puts@plt>
    22d1:	eb bb                	jmp    228e <phase_defused+0x29>
    22d3:	e8 19 f4 ff ff       	call   16f1 <alohomora>
    22d8:	85 c0                	test   %eax,%eax
    22da:	74 30                	je     230c <phase_defused+0xa7>
    22dc:	48 8d 3d 5d 21 00 00 	lea    0x215d(%rip),%rdi        # 4440 <transition_table+0x140>
    22e3:	e8 88 ef ff ff       	call   1270 <puts@plt>
    22e8:	48 8d 3d 79 21 00 00 	lea    0x2179(%rip),%rdi        # 4468 <transition_table+0x168>
    22ef:	e8 7c ef ff ff       	call   1270 <puts@plt>
    22f4:	48 8d 3d a5 21 00 00 	lea    0x21a5(%rip),%rdi        # 44a0 <transition_table+0x1a0>
    22fb:	e8 70 ef ff ff       	call   1270 <puts@plt>
    2300:	b8 00 00 00 00       	mov    $0x0,%eax
    2305:	e8 f7 f8 ff ff       	call   1c01 <secret_phase>
    230a:	eb ad                	jmp    22b9 <phase_defused+0x54>
    230c:	48 8d 3d dd 21 00 00 	lea    0x21dd(%rip),%rdi        # 44f0 <transition_table+0x1f0>
    2313:	e8 58 ef ff ff       	call   1270 <puts@plt>
    2318:	48 8d 3d 81 21 00 00 	lea    0x2181(%rip),%rdi        # 44a0 <transition_table+0x1a0>
    231f:	e8 4c ef ff ff       	call   1270 <puts@plt>
    2324:	eb 93                	jmp    22b9 <phase_defused+0x54>

0000000000002326 <rio_readinitb>:
    2326:	89 37                	mov    %esi,(%rdi)
    2328:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
    232f:	48 8d 47 10          	lea    0x10(%rdi),%rax
    2333:	48 89 47 08          	mov    %rax,0x8(%rdi)
    2337:	c3                   	ret

0000000000002338 <sigalrm_handler>:
    2338:	f3 0f 1e fa          	endbr64
    233c:	50                   	push   %rax
    233d:	58                   	pop    %rax
    233e:	48 83 ec 08          	sub    $0x8,%rsp
    2342:	b9 00 00 00 00       	mov    $0x0,%ecx
    2347:	48 8d 15 92 23 00 00 	lea    0x2392(%rip),%rdx        # 46e0 <transition_table+0x3e0>
    234e:	be 01 00 00 00       	mov    $0x1,%esi
    2353:	48 8b 3d 26 61 00 00 	mov    0x6126(%rip),%rdi        # 8480 <stderr@GLIBC_2.2.5>
    235a:	b8 00 00 00 00       	mov    $0x0,%eax
    235f:	e8 4c f0 ff ff       	call   13b0 <__fprintf_chk@plt>
    2364:	bf 01 00 00 00       	mov    $0x1,%edi
    2369:	e8 22 f0 ff ff       	call   1390 <exit@plt>

000000000000236e <rio_writen>:
    236e:	41 55                	push   %r13
    2370:	41 54                	push   %r12
    2372:	55                   	push   %rbp
    2373:	53                   	push   %rbx
    2374:	48 83 ec 08          	sub    $0x8,%rsp
    2378:	41 89 fc             	mov    %edi,%r12d
    237b:	48 89 f5             	mov    %rsi,%rbp
    237e:	49 89 d5             	mov    %rdx,%r13
    2381:	48 89 d3             	mov    %rdx,%rbx
    2384:	eb 06                	jmp    238c <rio_writen+0x1e>
    2386:	48 29 c3             	sub    %rax,%rbx
    2389:	48 01 c5             	add    %rax,%rbp
    238c:	48 85 db             	test   %rbx,%rbx
    238f:	74 24                	je     23b5 <rio_writen+0x47>
    2391:	48 89 da             	mov    %rbx,%rdx
    2394:	48 89 ee             	mov    %rbp,%rsi
    2397:	44 89 e7             	mov    %r12d,%edi
    239a:	e8 e1 ee ff ff       	call   1280 <write@plt>
    239f:	48 85 c0             	test   %rax,%rax
    23a2:	7f e2                	jg     2386 <rio_writen+0x18>
    23a4:	e8 97 ee ff ff       	call   1240 <__errno_location@plt>
    23a9:	83 38 04             	cmpl   $0x4,(%rax)
    23ac:	75 15                	jne    23c3 <rio_writen+0x55>
    23ae:	b8 00 00 00 00       	mov    $0x0,%eax
    23b3:	eb d1                	jmp    2386 <rio_writen+0x18>
    23b5:	4c 89 e8             	mov    %r13,%rax
    23b8:	48 83 c4 08          	add    $0x8,%rsp
    23bc:	5b                   	pop    %rbx
    23bd:	5d                   	pop    %rbp
    23be:	41 5c                	pop    %r12
    23c0:	41 5d                	pop    %r13
    23c2:	c3                   	ret
    23c3:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    23ca:	eb ec                	jmp    23b8 <rio_writen+0x4a>

00000000000023cc <rio_read>:
    23cc:	41 55                	push   %r13
    23ce:	41 54                	push   %r12
    23d0:	55                   	push   %rbp
    23d1:	53                   	push   %rbx
    23d2:	48 83 ec 08          	sub    $0x8,%rsp
    23d6:	48 89 fb             	mov    %rdi,%rbx
    23d9:	49 89 f5             	mov    %rsi,%r13
    23dc:	49 89 d4             	mov    %rdx,%r12
    23df:	eb 0a                	jmp    23eb <rio_read+0x1f>
    23e1:	e8 5a ee ff ff       	call   1240 <__errno_location@plt>
    23e6:	83 38 04             	cmpl   $0x4,(%rax)
    23e9:	75 61                	jne    244c <rio_read+0x80>
    23eb:	8b 6b 04             	mov    0x4(%rbx),%ebp
    23ee:	85 ed                	test   %ebp,%ebp
    23f0:	7f 29                	jg     241b <rio_read+0x4f>
    23f2:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
    23f6:	8b 3b                	mov    (%rbx),%edi
    23f8:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    23ff:	ba 00 20 00 00       	mov    $0x2000,%edx
    2404:	48 89 ee             	mov    %rbp,%rsi
    2407:	e8 54 ee ff ff       	call   1260 <__read_chk@plt>
    240c:	89 43 04             	mov    %eax,0x4(%rbx)
    240f:	85 c0                	test   %eax,%eax
    2411:	78 ce                	js     23e1 <rio_read+0x15>
    2413:	74 40                	je     2455 <rio_read+0x89>
    2415:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    2419:	eb d0                	jmp    23eb <rio_read+0x1f>
    241b:	89 e8                	mov    %ebp,%eax
    241d:	4c 39 e0             	cmp    %r12,%rax
    2420:	72 03                	jb     2425 <rio_read+0x59>
    2422:	44 89 e5             	mov    %r12d,%ebp
    2425:	4c 63 e5             	movslq %ebp,%r12
    2428:	48 8b 73 08          	mov    0x8(%rbx),%rsi
    242c:	4c 89 e2             	mov    %r12,%rdx
    242f:	4c 89 ef             	mov    %r13,%rdi
    2432:	e8 d9 ee ff ff       	call   1310 <memcpy@plt>
    2437:	4c 01 63 08          	add    %r12,0x8(%rbx)
    243b:	29 6b 04             	sub    %ebp,0x4(%rbx)
    243e:	4c 89 e0             	mov    %r12,%rax
    2441:	48 83 c4 08          	add    $0x8,%rsp
    2445:	5b                   	pop    %rbx
    2446:	5d                   	pop    %rbp
    2447:	41 5c                	pop    %r12
    2449:	41 5d                	pop    %r13
    244b:	c3                   	ret
    244c:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2453:	eb ec                	jmp    2441 <rio_read+0x75>
    2455:	b8 00 00 00 00       	mov    $0x0,%eax
    245a:	eb e5                	jmp    2441 <rio_read+0x75>

000000000000245c <rio_readlineb>:
    245c:	41 55                	push   %r13
    245e:	41 54                	push   %r12
    2460:	55                   	push   %rbp
    2461:	53                   	push   %rbx
    2462:	48 83 ec 18          	sub    $0x18,%rsp
    2466:	49 89 fd             	mov    %rdi,%r13
    2469:	48 89 f5             	mov    %rsi,%rbp
    246c:	49 89 d4             	mov    %rdx,%r12
    246f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2476:	00 00 
    2478:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    247d:	31 c0                	xor    %eax,%eax
    247f:	bb 01 00 00 00       	mov    $0x1,%ebx
    2484:	eb 18                	jmp    249e <rio_readlineb+0x42>
    2486:	85 c0                	test   %eax,%eax
    2488:	75 65                	jne    24ef <rio_readlineb+0x93>
    248a:	48 83 fb 01          	cmp    $0x1,%rbx
    248e:	75 3d                	jne    24cd <rio_readlineb+0x71>
    2490:	b8 00 00 00 00       	mov    $0x0,%eax
    2495:	eb 3d                	jmp    24d4 <rio_readlineb+0x78>
    2497:	48 83 c3 01          	add    $0x1,%rbx
    249b:	48 89 d5             	mov    %rdx,%rbp
    249e:	4c 39 e3             	cmp    %r12,%rbx
    24a1:	73 2a                	jae    24cd <rio_readlineb+0x71>
    24a3:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
    24a8:	ba 01 00 00 00       	mov    $0x1,%edx
    24ad:	4c 89 ef             	mov    %r13,%rdi
    24b0:	e8 17 ff ff ff       	call   23cc <rio_read>
    24b5:	83 f8 01             	cmp    $0x1,%eax
    24b8:	75 cc                	jne    2486 <rio_readlineb+0x2a>
    24ba:	48 8d 55 01          	lea    0x1(%rbp),%rdx
    24be:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
    24c3:	88 45 00             	mov    %al,0x0(%rbp)
    24c6:	3c 0a                	cmp    $0xa,%al
    24c8:	75 cd                	jne    2497 <rio_readlineb+0x3b>
    24ca:	48 89 d5             	mov    %rdx,%rbp
    24cd:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
    24d1:	48 89 d8             	mov    %rbx,%rax
    24d4:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    24d9:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    24e0:	00 00 
    24e2:	75 14                	jne    24f8 <rio_readlineb+0x9c>
    24e4:	48 83 c4 18          	add    $0x18,%rsp
    24e8:	5b                   	pop    %rbx
    24e9:	5d                   	pop    %rbp
    24ea:	41 5c                	pop    %r12
    24ec:	41 5d                	pop    %r13
    24ee:	c3                   	ret
    24ef:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    24f6:	eb dc                	jmp    24d4 <rio_readlineb+0x78>
    24f8:	e8 a3 ed ff ff       	call   12a0 <__stack_chk_fail@plt>

00000000000024fd <urlencode>:
    24fd:	41 54                	push   %r12
    24ff:	55                   	push   %rbp
    2500:	53                   	push   %rbx
    2501:	48 83 ec 10          	sub    $0x10,%rsp
    2505:	48 89 fb             	mov    %rdi,%rbx
    2508:	48 89 f5             	mov    %rsi,%rbp
    250b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2512:	00 00 
    2514:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    2519:	31 c0                	xor    %eax,%eax
    251b:	e8 70 ed ff ff       	call   1290 <strlen@plt>
    2520:	eb 0f                	jmp    2531 <urlencode+0x34>
    2522:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    2526:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    252a:	48 83 c3 01          	add    $0x1,%rbx
    252e:	44 89 e0             	mov    %r12d,%eax
    2531:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
    2535:	85 c0                	test   %eax,%eax
    2537:	0f 84 a8 00 00 00    	je     25e5 <urlencode+0xe8>
    253d:	44 0f b6 03          	movzbl (%rbx),%r8d
    2541:	41 80 f8 2a          	cmp    $0x2a,%r8b
    2545:	0f 94 c0             	sete   %al
    2548:	41 80 f8 2d          	cmp    $0x2d,%r8b
    254c:	0f 94 c2             	sete   %dl
    254f:	08 d0                	or     %dl,%al
    2551:	75 cf                	jne    2522 <urlencode+0x25>
    2553:	41 80 f8 2e          	cmp    $0x2e,%r8b
    2557:	74 c9                	je     2522 <urlencode+0x25>
    2559:	41 80 f8 5f          	cmp    $0x5f,%r8b
    255d:	74 c3                	je     2522 <urlencode+0x25>
    255f:	41 8d 40 d0          	lea    -0x30(%r8),%eax
    2563:	3c 09                	cmp    $0x9,%al
    2565:	76 bb                	jbe    2522 <urlencode+0x25>
    2567:	41 8d 40 bf          	lea    -0x41(%r8),%eax
    256b:	3c 19                	cmp    $0x19,%al
    256d:	76 b3                	jbe    2522 <urlencode+0x25>
    256f:	41 8d 40 9f          	lea    -0x61(%r8),%eax
    2573:	3c 19                	cmp    $0x19,%al
    2575:	76 ab                	jbe    2522 <urlencode+0x25>
    2577:	41 80 f8 20          	cmp    $0x20,%r8b
    257b:	74 56                	je     25d3 <urlencode+0xd6>
    257d:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    2581:	3c 5f                	cmp    $0x5f,%al
    2583:	0f 96 c0             	setbe  %al
    2586:	41 80 f8 09          	cmp    $0x9,%r8b
    258a:	0f 94 c2             	sete   %dl
    258d:	08 d0                	or     %dl,%al
    258f:	74 4f                	je     25e0 <urlencode+0xe3>
    2591:	48 89 e7             	mov    %rsp,%rdi
    2594:	45 0f b6 c0          	movzbl %r8b,%r8d
    2598:	48 8d 0d f6 21 00 00 	lea    0x21f6(%rip),%rcx        # 4795 <transition_table+0x495>
    259f:	ba 08 00 00 00       	mov    $0x8,%edx
    25a4:	be 01 00 00 00       	mov    $0x1,%esi
    25a9:	b8 00 00 00 00       	mov    $0x0,%eax
    25ae:	e8 2d ee ff ff       	call   13e0 <__sprintf_chk@plt>
    25b3:	0f b6 04 24          	movzbl (%rsp),%eax
    25b7:	88 45 00             	mov    %al,0x0(%rbp)
    25ba:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
    25bf:	88 45 01             	mov    %al,0x1(%rbp)
    25c2:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
    25c7:	88 45 02             	mov    %al,0x2(%rbp)
    25ca:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    25ce:	e9 57 ff ff ff       	jmp    252a <urlencode+0x2d>
    25d3:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    25d7:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    25db:	e9 4a ff ff ff       	jmp    252a <urlencode+0x2d>
    25e0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    25e5:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    25ea:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    25f1:	00 00 
    25f3:	75 09                	jne    25fe <urlencode+0x101>
    25f5:	48 83 c4 10          	add    $0x10,%rsp
    25f9:	5b                   	pop    %rbx
    25fa:	5d                   	pop    %rbp
    25fb:	41 5c                	pop    %r12
    25fd:	c3                   	ret
    25fe:	e8 9d ec ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000002603 <submitr>:
    2603:	f3 0f 1e fa          	endbr64
    2607:	41 57                	push   %r15
    2609:	41 56                	push   %r14
    260b:	41 55                	push   %r13
    260d:	41 54                	push   %r12
    260f:	55                   	push   %rbp
    2610:	53                   	push   %rbx
    2611:	4c 8d 9c 24 00 40 ff 	lea    -0xc000(%rsp),%r11
    2618:	ff 
    2619:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    2620:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    2625:	4c 39 dc             	cmp    %r11,%rsp
    2628:	75 ef                	jne    2619 <submitr+0x16>
    262a:	48 83 ec 68          	sub    $0x68,%rsp
    262e:	49 89 fc             	mov    %rdi,%r12
    2631:	89 74 24 18          	mov    %esi,0x18(%rsp)
    2635:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    263a:	49 89 cd             	mov    %rcx,%r13
    263d:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
    2642:	4d 89 ce             	mov    %r9,%r14
    2645:	48 8b ac 24 a0 c0 00 	mov    0xc0a0(%rsp),%rbp
    264c:	00 
    264d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2654:	00 00 
    2656:	48 89 84 24 58 c0 00 	mov    %rax,0xc058(%rsp)
    265d:	00 
    265e:	31 c0                	xor    %eax,%eax
    2660:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
    2667:	00 
    2668:	ba 00 00 00 00       	mov    $0x0,%edx
    266d:	be 01 00 00 00       	mov    $0x1,%esi
    2672:	bf 02 00 00 00       	mov    $0x2,%edi
    2677:	e8 74 ed ff ff       	call   13f0 <socket@plt>
    267c:	85 c0                	test   %eax,%eax
    267e:	0f 88 ab 02 00 00    	js     292f <submitr+0x32c>
    2684:	89 c3                	mov    %eax,%ebx
    2686:	4c 89 e7             	mov    %r12,%rdi
    2689:	e8 62 ec ff ff       	call   12f0 <gethostbyname@plt>
    268e:	48 85 c0             	test   %rax,%rax
    2691:	0f 84 e4 02 00 00    	je     297b <submitr+0x378>
    2697:	4c 8d 7c 24 30       	lea    0x30(%rsp),%r15
    269c:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
    26a3:	00 00 
    26a5:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
    26ac:	00 00 
    26ae:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
    26b5:	48 63 50 14          	movslq 0x14(%rax),%rdx
    26b9:	48 8b 40 18          	mov    0x18(%rax),%rax
    26bd:	48 8b 30             	mov    (%rax),%rsi
    26c0:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
    26c5:	b9 0c 00 00 00       	mov    $0xc,%ecx
    26ca:	e8 31 ec ff ff       	call   1300 <__memmove_chk@plt>
    26cf:	0f b7 44 24 18       	movzwl 0x18(%rsp),%eax
    26d4:	66 c1 c0 08          	rol    $0x8,%ax
    26d8:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
    26dd:	ba 10 00 00 00       	mov    $0x10,%edx
    26e2:	4c 89 fe             	mov    %r15,%rsi
    26e5:	89 df                	mov    %ebx,%edi
    26e7:	e8 b4 ec ff ff       	call   13a0 <connect@plt>
    26ec:	85 c0                	test   %eax,%eax
    26ee:	0f 88 fd 02 00 00    	js     29f1 <submitr+0x3ee>
    26f4:	4c 89 f7             	mov    %r14,%rdi
    26f7:	e8 94 eb ff ff       	call   1290 <strlen@plt>
    26fc:	49 89 c7             	mov    %rax,%r15
    26ff:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    2704:	e8 87 eb ff ff       	call   1290 <strlen@plt>
    2709:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    270e:	4c 89 ef             	mov    %r13,%rdi
    2711:	e8 7a eb ff ff       	call   1290 <strlen@plt>
    2716:	48 03 44 24 18       	add    0x18(%rsp),%rax
    271b:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2720:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    2725:	e8 66 eb ff ff       	call   1290 <strlen@plt>
    272a:	48 03 44 24 18       	add    0x18(%rsp),%rax
    272f:	4b 8d 14 7f          	lea    (%r15,%r15,2),%rdx
    2733:	48 8d 84 10 80 00 00 	lea    0x80(%rax,%rdx,1),%rax
    273a:	00 
    273b:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    2741:	0f 87 12 03 00 00    	ja     2a59 <submitr+0x456>
    2747:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
    274e:	00 
    274f:	b9 00 04 00 00       	mov    $0x400,%ecx
    2754:	b8 00 00 00 00       	mov    $0x0,%eax
    2759:	48 89 f7             	mov    %rsi,%rdi
    275c:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    275f:	4c 89 f7             	mov    %r14,%rdi
    2762:	e8 96 fd ff ff       	call   24fd <urlencode>
    2767:	85 c0                	test   %eax,%eax
    2769:	0f 88 5d 03 00 00    	js     2acc <submitr+0x4c9>
    276f:	48 8d b4 24 50 60 00 	lea    0x6050(%rsp),%rsi
    2776:	00 
    2777:	b9 00 04 00 00       	mov    $0x400,%ecx
    277c:	b8 00 00 00 00       	mov    $0x0,%eax
    2781:	48 89 f7             	mov    %rsi,%rdi
    2784:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    2787:	4c 89 ef             	mov    %r13,%rdi
    278a:	e8 6e fd ff ff       	call   24fd <urlencode>
    278f:	85 c0                	test   %eax,%eax
    2791:	0f 88 c0 03 00 00    	js     2b57 <submitr+0x554>
    2797:	4c 8d bc 24 50 20 00 	lea    0x2050(%rsp),%r15
    279e:	00 
    279f:	48 83 ec 08          	sub    $0x8,%rsp
    27a3:	41 54                	push   %r12
    27a5:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
    27ac:	00 
    27ad:	50                   	push   %rax
    27ae:	48 8d 84 24 68 60 00 	lea    0x6068(%rsp),%rax
    27b5:	00 
    27b6:	50                   	push   %rax
    27b7:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    27bc:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    27c1:	48 8d 0d 40 1f 00 00 	lea    0x1f40(%rip),%rcx        # 4708 <transition_table+0x408>
    27c8:	ba 00 20 00 00       	mov    $0x2000,%edx
    27cd:	be 01 00 00 00       	mov    $0x1,%esi
    27d2:	4c 89 ff             	mov    %r15,%rdi
    27d5:	b8 00 00 00 00       	mov    $0x0,%eax
    27da:	e8 01 ec ff ff       	call   13e0 <__sprintf_chk@plt>
    27df:	48 83 c4 20          	add    $0x20,%rsp
    27e3:	4c 89 ff             	mov    %r15,%rdi
    27e6:	e8 a5 ea ff ff       	call   1290 <strlen@plt>
    27eb:	48 89 c2             	mov    %rax,%rdx
    27ee:	4c 89 fe             	mov    %r15,%rsi
    27f1:	89 df                	mov    %ebx,%edi
    27f3:	e8 76 fb ff ff       	call   236e <rio_writen>
    27f8:	48 85 c0             	test   %rax,%rax
    27fb:	0f 88 e1 03 00 00    	js     2be2 <submitr+0x5df>
    2801:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
    2806:	89 de                	mov    %ebx,%esi
    2808:	4c 89 e7             	mov    %r12,%rdi
    280b:	e8 16 fb ff ff       	call   2326 <rio_readinitb>
    2810:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2817:	00 
    2818:	ba 00 20 00 00       	mov    $0x2000,%edx
    281d:	4c 89 e7             	mov    %r12,%rdi
    2820:	e8 37 fc ff ff       	call   245c <rio_readlineb>
    2825:	48 85 c0             	test   %rax,%rax
    2828:	0f 8e 20 04 00 00    	jle    2c4e <submitr+0x64b>
    282e:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
    2833:	48 8d 94 24 50 80 00 	lea    0x8050(%rsp),%rdx
    283a:	00 
    283b:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    2842:	00 
    2843:	4c 8d 84 24 50 a0 00 	lea    0xa050(%rsp),%r8
    284a:	00 
    284b:	48 8d 35 4a 1f 00 00 	lea    0x1f4a(%rip),%rsi        # 479c <transition_table+0x49c>
    2852:	b8 00 00 00 00       	mov    $0x0,%eax
    2857:	e8 e4 ea ff ff       	call   1340 <__isoc99_sscanf@plt>
    285c:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    2863:	00 
    2864:	48 8d 35 48 1f 00 00 	lea    0x1f48(%rip),%rsi        # 47b3 <transition_table+0x4b3>
    286b:	e8 60 ea ff ff       	call   12d0 <strcmp@plt>
    2870:	85 c0                	test   %eax,%eax
    2872:	0f 84 56 04 00 00    	je     2cce <submitr+0x6cb>
    2878:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    287f:	00 
    2880:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2885:	ba 00 20 00 00       	mov    $0x2000,%edx
    288a:	e8 cd fb ff ff       	call   245c <rio_readlineb>
    288f:	48 85 c0             	test   %rax,%rax
    2892:	7f c8                	jg     285c <submitr+0x259>
    2894:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    289b:	3a 20 43 
    289e:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    28a5:	20 75 6e 
    28a8:	48 89 45 00          	mov    %rax,0x0(%rbp)
    28ac:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    28b0:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    28b7:	74 6f 20 
    28ba:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    28c1:	68 65 61 
    28c4:	48 89 45 10          	mov    %rax,0x10(%rbp)
    28c8:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    28cc:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    28d3:	66 72 6f 
    28d6:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
    28dd:	6f 6c 61 
    28e0:	48 89 45 20          	mov    %rax,0x20(%rbp)
    28e4:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    28e8:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
    28ef:	76 65 72 
    28f2:	48 89 45 30          	mov    %rax,0x30(%rbp)
    28f6:	c6 45 38 00          	movb   $0x0,0x38(%rbp)
    28fa:	89 df                	mov    %ebx,%edi
    28fc:	e8 bf e9 ff ff       	call   12c0 <close@plt>
    2901:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2906:	48 8b 94 24 58 c0 00 	mov    0xc058(%rsp),%rdx
    290d:	00 
    290e:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    2915:	00 00 
    2917:	0f 85 ff 04 00 00    	jne    2e1c <submitr+0x819>
    291d:	48 81 c4 68 c0 00 00 	add    $0xc068,%rsp
    2924:	5b                   	pop    %rbx
    2925:	5d                   	pop    %rbp
    2926:	41 5c                	pop    %r12
    2928:	41 5d                	pop    %r13
    292a:	41 5e                	pop    %r14
    292c:	41 5f                	pop    %r15
    292e:	c3                   	ret
    292f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2936:	3a 20 43 
    2939:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2940:	20 75 6e 
    2943:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2947:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    294b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2952:	74 6f 20 
    2955:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    295c:	65 20 73 
    295f:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2963:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2967:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    296e:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    2974:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2979:	eb 8b                	jmp    2906 <submitr+0x303>
    297b:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2982:	3a 20 44 
    2985:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    298c:	20 75 6e 
    298f:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2993:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2997:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    299e:	74 6f 20 
    29a1:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    29a8:	76 65 20 
    29ab:	48 89 45 10          	mov    %rax,0x10(%rbp)
    29af:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    29b3:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
    29ba:	61 62 20 
    29bd:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
    29c4:	72 20 61 
    29c7:	48 89 45 20          	mov    %rax,0x20(%rbp)
    29cb:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    29cf:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
    29d6:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
    29dc:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
    29e0:	89 df                	mov    %ebx,%edi
    29e2:	e8 d9 e8 ff ff       	call   12c0 <close@plt>
    29e7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    29ec:	e9 15 ff ff ff       	jmp    2906 <submitr+0x303>
    29f1:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    29f8:	3a 20 55 
    29fb:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    2a02:	20 74 6f 
    2a05:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2a09:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2a0d:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    2a14:	65 63 74 
    2a17:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    2a1e:	68 65 20 
    2a21:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2a25:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2a29:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
    2a30:	61 62 20 
    2a33:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2a37:	c7 45 28 73 65 72 76 	movl   $0x76726573,0x28(%rbp)
    2a3e:	66 c7 45 2c 65 72    	movw   $0x7265,0x2c(%rbp)
    2a44:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    2a48:	89 df                	mov    %ebx,%edi
    2a4a:	e8 71 e8 ff ff       	call   12c0 <close@plt>
    2a4f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2a54:	e9 ad fe ff ff       	jmp    2906 <submitr+0x303>
    2a59:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2a60:	3a 20 52 
    2a63:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2a6a:	20 73 74 
    2a6d:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2a71:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2a75:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    2a7c:	74 6f 6f 
    2a7f:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    2a86:	65 2e 20 
    2a89:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2a8d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2a91:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    2a98:	61 73 65 
    2a9b:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    2aa2:	49 54 52 
    2aa5:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2aa9:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2aad:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    2ab4:	55 46 00 
    2ab7:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2abb:	89 df                	mov    %ebx,%edi
    2abd:	e8 fe e7 ff ff       	call   12c0 <close@plt>
    2ac2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2ac7:	e9 3a fe ff ff       	jmp    2906 <submitr+0x303>
    2acc:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2ad3:	3a 20 52 
    2ad6:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2add:	20 73 74 
    2ae0:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2ae4:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2ae8:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    2aef:	63 6f 6e 
    2af2:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    2af9:	20 61 6e 
    2afc:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2b00:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2b04:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    2b0b:	67 61 6c 
    2b0e:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    2b15:	6e 70 72 
    2b18:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2b1c:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2b20:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2b27:	6c 65 20 
    2b2a:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    2b31:	63 74 65 
    2b34:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2b38:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    2b3c:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
    2b42:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
    2b46:	89 df                	mov    %ebx,%edi
    2b48:	e8 73 e7 ff ff       	call   12c0 <close@plt>
    2b4d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2b52:	e9 af fd ff ff       	jmp    2906 <submitr+0x303>
    2b57:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2b5e:	3a 20 55 
    2b61:	48 ba 73 65 72 69 64 	movabs $0x7473206469726573,%rdx
    2b68:	20 73 74 
    2b6b:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2b6f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2b73:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    2b7a:	63 6f 6e 
    2b7d:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    2b84:	20 61 6e 
    2b87:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2b8b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2b8f:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    2b96:	67 61 6c 
    2b99:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    2ba0:	6e 70 72 
    2ba3:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2ba7:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2bab:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2bb2:	6c 65 20 
    2bb5:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    2bbc:	63 74 65 
    2bbf:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2bc3:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    2bc7:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
    2bcd:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
    2bd1:	89 df                	mov    %ebx,%edi
    2bd3:	e8 e8 e6 ff ff       	call   12c0 <close@plt>
    2bd8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2bdd:	e9 24 fd ff ff       	jmp    2906 <submitr+0x303>
    2be2:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2be9:	3a 20 43 
    2bec:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2bf3:	20 75 6e 
    2bf6:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2bfa:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2bfe:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2c05:	74 6f 20 
    2c08:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    2c0f:	20 74 6f 
    2c12:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2c16:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2c1a:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
    2c21:	41 75 74 
    2c24:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
    2c2b:	73 65 72 
    2c2e:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2c32:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2c36:	c7 45 30 76 65 72 00 	movl   $0x726576,0x30(%rbp)
    2c3d:	89 df                	mov    %ebx,%edi
    2c3f:	e8 7c e6 ff ff       	call   12c0 <close@plt>
    2c44:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2c49:	e9 b8 fc ff ff       	jmp    2906 <submitr+0x303>
    2c4e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2c55:	3a 20 43 
    2c58:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2c5f:	20 75 6e 
    2c62:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2c66:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2c6a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2c71:	74 6f 20 
    2c74:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    2c7b:	66 69 72 
    2c7e:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2c82:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2c86:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    2c8d:	61 64 65 
    2c90:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
    2c97:	6d 20 41 
    2c9a:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2c9e:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2ca2:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
    2ca9:	62 20 73 
    2cac:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2cb0:	c7 45 38 65 72 76 65 	movl   $0x65767265,0x38(%rbp)
    2cb7:	66 c7 45 3c 72 00    	movw   $0x72,0x3c(%rbp)
    2cbd:	89 df                	mov    %ebx,%edi
    2cbf:	e8 fc e5 ff ff       	call   12c0 <close@plt>
    2cc4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2cc9:	e9 38 fc ff ff       	jmp    2906 <submitr+0x303>
    2cce:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2cd5:	00 
    2cd6:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2cdb:	ba 00 20 00 00       	mov    $0x2000,%edx
    2ce0:	e8 77 f7 ff ff       	call   245c <rio_readlineb>
    2ce5:	48 85 c0             	test   %rax,%rax
    2ce8:	7e 78                	jle    2d62 <submitr+0x75f>
    2cea:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
    2cef:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    2cf6:	0f 85 e7 00 00 00    	jne    2de3 <submitr+0x7e0>
    2cfc:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2d03:	00 
    2d04:	48 89 ef             	mov    %rbp,%rdi
    2d07:	e8 44 e5 ff ff       	call   1250 <strcpy@plt>
    2d0c:	89 df                	mov    %ebx,%edi
    2d0e:	e8 ad e5 ff ff       	call   12c0 <close@plt>
    2d13:	48 8d 35 93 1a 00 00 	lea    0x1a93(%rip),%rsi        # 47ad <transition_table+0x4ad>
    2d1a:	48 89 ef             	mov    %rbp,%rdi
    2d1d:	e8 ae e5 ff ff       	call   12d0 <strcmp@plt>
    2d22:	85 c0                	test   %eax,%eax
    2d24:	0f 84 dc fb ff ff    	je     2906 <submitr+0x303>
    2d2a:	48 8d 35 80 1a 00 00 	lea    0x1a80(%rip),%rsi        # 47b1 <transition_table+0x4b1>
    2d31:	48 89 ef             	mov    %rbp,%rdi
    2d34:	e8 97 e5 ff ff       	call   12d0 <strcmp@plt>
    2d39:	85 c0                	test   %eax,%eax
    2d3b:	0f 84 c5 fb ff ff    	je     2906 <submitr+0x303>
    2d41:	48 8d 35 6e 1a 00 00 	lea    0x1a6e(%rip),%rsi        # 47b6 <transition_table+0x4b6>
    2d48:	48 89 ef             	mov    %rbp,%rdi
    2d4b:	e8 80 e5 ff ff       	call   12d0 <strcmp@plt>
    2d50:	85 c0                	test   %eax,%eax
    2d52:	0f 84 ae fb ff ff    	je     2906 <submitr+0x303>
    2d58:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2d5d:	e9 a4 fb ff ff       	jmp    2906 <submitr+0x303>
    2d62:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2d69:	3a 20 43 
    2d6c:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2d73:	20 75 6e 
    2d76:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2d7a:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2d7e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2d85:	74 6f 20 
    2d88:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2d8f:	73 74 61 
    2d92:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2d96:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2d9a:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2da1:	65 73 73 
    2da4:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    2dab:	72 6f 6d 
    2dae:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2db2:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2db6:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
    2dbd:	6c 61 62 
    2dc0:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
    2dc7:	65 72 00 
    2dca:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2dce:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    2dd2:	89 df                	mov    %ebx,%edi
    2dd4:	e8 e7 e4 ff ff       	call   12c0 <close@plt>
    2dd9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2dde:	e9 23 fb ff ff       	jmp    2906 <submitr+0x303>
    2de3:	4c 8d 8c 24 50 a0 00 	lea    0xa050(%rsp),%r9
    2dea:	00 
    2deb:	48 8d 0d 76 19 00 00 	lea    0x1976(%rip),%rcx        # 4768 <transition_table+0x468>
    2df2:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2df9:	be 01 00 00 00       	mov    $0x1,%esi
    2dfe:	48 89 ef             	mov    %rbp,%rdi
    2e01:	b8 00 00 00 00       	mov    $0x0,%eax
    2e06:	e8 d5 e5 ff ff       	call   13e0 <__sprintf_chk@plt>
    2e0b:	89 df                	mov    %ebx,%edi
    2e0d:	e8 ae e4 ff ff       	call   12c0 <close@plt>
    2e12:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2e17:	e9 ea fa ff ff       	jmp    2906 <submitr+0x303>
    2e1c:	e8 7f e4 ff ff       	call   12a0 <__stack_chk_fail@plt>

0000000000002e21 <init_timeout>:
    2e21:	f3 0f 1e fa          	endbr64
    2e25:	85 ff                	test   %edi,%edi
    2e27:	74 26                	je     2e4f <init_timeout+0x2e>
    2e29:	53                   	push   %rbx
    2e2a:	89 fb                	mov    %edi,%ebx
    2e2c:	78 1a                	js     2e48 <init_timeout+0x27>
    2e2e:	48 8d 35 03 f5 ff ff 	lea    -0xafd(%rip),%rsi        # 2338 <sigalrm_handler>
    2e35:	bf 0e 00 00 00       	mov    $0xe,%edi
    2e3a:	e8 a1 e4 ff ff       	call   12e0 <signal@plt>
    2e3f:	89 df                	mov    %ebx,%edi
    2e41:	e8 6a e4 ff ff       	call   12b0 <alarm@plt>
    2e46:	5b                   	pop    %rbx
    2e47:	c3                   	ret
    2e48:	bb 00 00 00 00       	mov    $0x0,%ebx
    2e4d:	eb df                	jmp    2e2e <init_timeout+0xd>
    2e4f:	c3                   	ret

0000000000002e50 <init_driver>:
    2e50:	f3 0f 1e fa          	endbr64
    2e54:	41 54                	push   %r12
    2e56:	55                   	push   %rbp
    2e57:	53                   	push   %rbx
    2e58:	48 83 ec 20          	sub    $0x20,%rsp
    2e5c:	48 89 fd             	mov    %rdi,%rbp
    2e5f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2e66:	00 00 
    2e68:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2e6d:	31 c0                	xor    %eax,%eax
    2e6f:	be 01 00 00 00       	mov    $0x1,%esi
    2e74:	bf 0d 00 00 00       	mov    $0xd,%edi
    2e79:	e8 62 e4 ff ff       	call   12e0 <signal@plt>
    2e7e:	be 01 00 00 00       	mov    $0x1,%esi
    2e83:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2e88:	e8 53 e4 ff ff       	call   12e0 <signal@plt>
    2e8d:	be 01 00 00 00       	mov    $0x1,%esi
    2e92:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2e97:	e8 44 e4 ff ff       	call   12e0 <signal@plt>
    2e9c:	ba 00 00 00 00       	mov    $0x0,%edx
    2ea1:	be 01 00 00 00       	mov    $0x1,%esi
    2ea6:	bf 02 00 00 00       	mov    $0x2,%edi
    2eab:	e8 40 e5 ff ff       	call   13f0 <socket@plt>
    2eb0:	85 c0                	test   %eax,%eax
    2eb2:	0f 88 9c 00 00 00    	js     2f54 <init_driver+0x104>
    2eb8:	89 c3                	mov    %eax,%ebx
    2eba:	48 8d 3d f8 18 00 00 	lea    0x18f8(%rip),%rdi        # 47b9 <transition_table+0x4b9>
    2ec1:	e8 2a e4 ff ff       	call   12f0 <gethostbyname@plt>
    2ec6:	48 85 c0             	test   %rax,%rax
    2ec9:	0f 84 d1 00 00 00    	je     2fa0 <init_driver+0x150>
    2ecf:	49 89 e4             	mov    %rsp,%r12
    2ed2:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    2ed9:	00 
    2eda:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    2ee1:	00 00 
    2ee3:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    2ee9:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2eed:	48 8b 40 18          	mov    0x18(%rax),%rax
    2ef1:	48 8b 30             	mov    (%rax),%rsi
    2ef4:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    2ef9:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2efe:	e8 fd e3 ff ff       	call   1300 <__memmove_chk@plt>
    2f03:	66 c7 44 24 02 00 50 	movw   $0x5000,0x2(%rsp)
    2f0a:	ba 10 00 00 00       	mov    $0x10,%edx
    2f0f:	4c 89 e6             	mov    %r12,%rsi
    2f12:	89 df                	mov    %ebx,%edi
    2f14:	e8 87 e4 ff ff       	call   13a0 <connect@plt>
    2f19:	85 c0                	test   %eax,%eax
    2f1b:	0f 88 e7 00 00 00    	js     3008 <init_driver+0x1b8>
    2f21:	89 df                	mov    %ebx,%edi
    2f23:	e8 98 e3 ff ff       	call   12c0 <close@plt>
    2f28:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    2f2e:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    2f32:	b8 00 00 00 00       	mov    $0x0,%eax
    2f37:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    2f3c:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    2f43:	00 00 
    2f45:	0f 85 2f 01 00 00    	jne    307a <init_driver+0x22a>
    2f4b:	48 83 c4 20          	add    $0x20,%rsp
    2f4f:	5b                   	pop    %rbx
    2f50:	5d                   	pop    %rbp
    2f51:	41 5c                	pop    %r12
    2f53:	c3                   	ret
    2f54:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2f5b:	3a 20 43 
    2f5e:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2f65:	20 75 6e 
    2f68:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2f6c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2f70:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2f77:	74 6f 20 
    2f7a:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2f81:	65 20 73 
    2f84:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2f88:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2f8c:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    2f93:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    2f99:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2f9e:	eb 97                	jmp    2f37 <init_driver+0xe7>
    2fa0:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2fa7:	3a 20 44 
    2faa:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2fb1:	20 75 6e 
    2fb4:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2fb8:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2fbc:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2fc3:	74 6f 20 
    2fc6:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2fcd:	76 65 20 
    2fd0:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2fd4:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2fd8:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2fdf:	72 20 61 
    2fe2:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2fe6:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    2fed:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    2ff3:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    2ff7:	89 df                	mov    %ebx,%edi
    2ff9:	e8 c2 e2 ff ff       	call   12c0 <close@plt>
    2ffe:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3003:	e9 2f ff ff ff       	jmp    2f37 <init_driver+0xe7>
    3008:	48 b8 31 36 32 2e 31 	movabs $0x2e3530312e323631,%rax
    300f:	30 35 2e 
    3012:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3016:	c7 45 08 33 31 2e 32 	movl   $0x322e3133,0x8(%rbp)
    301d:	66 c7 45 0c 33 32    	movw   $0x3233,0xc(%rbp)
    3023:	c6 45 0e 00          	movb   $0x0,0xe(%rbp)
    3027:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    302e:	3a 20 55 
    3031:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    3038:	20 74 6f 
    303b:	48 89 45 00          	mov    %rax,0x0(%rbp)
    303f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3043:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    304a:	65 63 74 
    304d:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
    3054:	65 72 76 
    3057:	48 89 45 10          	mov    %rax,0x10(%rbp)
    305b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    305f:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
    3065:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
    3069:	89 df                	mov    %ebx,%edi
    306b:	e8 50 e2 ff ff       	call   12c0 <close@plt>
    3070:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3075:	e9 bd fe ff ff       	jmp    2f37 <init_driver+0xe7>
    307a:	e8 21 e2 ff ff       	call   12a0 <__stack_chk_fail@plt>

000000000000307f <driver_post>:
    307f:	f3 0f 1e fa          	endbr64
    3083:	53                   	push   %rbx
    3084:	4c 89 cb             	mov    %r9,%rbx
    3087:	45 85 c0             	test   %r8d,%r8d
    308a:	75 18                	jne    30a4 <driver_post+0x25>
    308c:	48 85 ff             	test   %rdi,%rdi
    308f:	74 05                	je     3096 <driver_post+0x17>
    3091:	80 3f 00             	cmpb   $0x0,(%rdi)
    3094:	75 37                	jne    30cd <driver_post+0x4e>
    3096:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    309b:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    309f:	44 89 c0             	mov    %r8d,%eax
    30a2:	5b                   	pop    %rbx
    30a3:	c3                   	ret
    30a4:	48 89 ca             	mov    %rcx,%rdx
    30a7:	48 8d 35 1a 17 00 00 	lea    0x171a(%rip),%rsi        # 47c8 <transition_table+0x4c8>
    30ae:	bf 01 00 00 00       	mov    $0x1,%edi
    30b3:	b8 00 00 00 00       	mov    $0x0,%eax
    30b8:	e8 a3 e2 ff ff       	call   1360 <__printf_chk@plt>
    30bd:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    30c2:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    30c6:	b8 00 00 00 00       	mov    $0x0,%eax
    30cb:	eb d5                	jmp    30a2 <driver_post+0x23>
    30cd:	48 83 ec 08          	sub    $0x8,%rsp
    30d1:	41 51                	push   %r9
    30d3:	49 89 c9             	mov    %rcx,%r9
    30d6:	49 89 d0             	mov    %rdx,%r8
    30d9:	48 89 f9             	mov    %rdi,%rcx
    30dc:	48 89 f2             	mov    %rsi,%rdx
    30df:	be 50 00 00 00       	mov    $0x50,%esi
    30e4:	48 8d 3d ce 16 00 00 	lea    0x16ce(%rip),%rdi        # 47b9 <transition_table+0x4b9>
    30eb:	e8 13 f5 ff ff       	call   2603 <submitr>
    30f0:	48 83 c4 10          	add    $0x10,%rsp
    30f4:	eb ac                	jmp    30a2 <driver_post+0x23>

Disassembly of section .fini:

00000000000030f8 <_fini>:
    30f8:	f3 0f 1e fa          	endbr64
    30fc:	48 83 ec 08          	sub    $0x8,%rsp
    3100:	48 83 c4 08          	add    $0x8,%rsp
    3104:	c3                   	ret
