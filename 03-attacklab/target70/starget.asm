
starget:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 d1 5f 00 00 	mov    0x5fd1(%rip),%rax        # 406fe0 <__gmon_start__@Base>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	ret

Disassembly of section .plt:

0000000000401020 <__errno_location@plt-0x10>:
  401020:	ff 35 ca 5f 00 00    	push   0x5fca(%rip)        # 406ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 cc 5f 00 00    	jmp    *0x5fcc(%rip)        # 406ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <__errno_location@plt>:
  401030:	ff 25 ca 5f 00 00    	jmp    *0x5fca(%rip)        # 407000 <__errno_location@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	push   $0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401040 <srandom@plt>:
  401040:	ff 25 c2 5f 00 00    	jmp    *0x5fc2(%rip)        # 407008 <srandom@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	push   $0x1
  40104b:	e9 d0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401050 <strncpy@plt>:
  401050:	ff 25 ba 5f 00 00    	jmp    *0x5fba(%rip)        # 407010 <strncpy@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	push   $0x2
  40105b:	e9 c0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401060 <strncmp@plt>:
  401060:	ff 25 b2 5f 00 00    	jmp    *0x5fb2(%rip)        # 407018 <strncmp@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	push   $0x3
  40106b:	e9 b0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401070 <strcpy@plt>:
  401070:	ff 25 aa 5f 00 00    	jmp    *0x5faa(%rip)        # 407020 <strcpy@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	push   $0x4
  40107b:	e9 a0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401080 <puts@plt>:
  401080:	ff 25 a2 5f 00 00    	jmp    *0x5fa2(%rip)        # 407028 <puts@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	push   $0x5
  40108b:	e9 90 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401090 <write@plt>:
  401090:	ff 25 9a 5f 00 00    	jmp    *0x5f9a(%rip)        # 407030 <write@GLIBC_2.2.5>
  401096:	68 06 00 00 00       	push   $0x6
  40109b:	e9 80 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010a0 <strlen@plt>:
  4010a0:	ff 25 92 5f 00 00    	jmp    *0x5f92(%rip)        # 407038 <strlen@GLIBC_2.2.5>
  4010a6:	68 07 00 00 00       	push   $0x7
  4010ab:	e9 70 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010b0 <mmap@plt>:
  4010b0:	ff 25 8a 5f 00 00    	jmp    *0x5f8a(%rip)        # 407040 <mmap@GLIBC_2.2.5>
  4010b6:	68 08 00 00 00       	push   $0x8
  4010bb:	e9 60 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010c0 <alarm@plt>:
  4010c0:	ff 25 82 5f 00 00    	jmp    *0x5f82(%rip)        # 407048 <alarm@GLIBC_2.2.5>
  4010c6:	68 09 00 00 00       	push   $0x9
  4010cb:	e9 50 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010d0 <close@plt>:
  4010d0:	ff 25 7a 5f 00 00    	jmp    *0x5f7a(%rip)        # 407050 <close@GLIBC_2.2.5>
  4010d6:	68 0a 00 00 00       	push   $0xa
  4010db:	e9 40 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010e0 <read@plt>:
  4010e0:	ff 25 72 5f 00 00    	jmp    *0x5f72(%rip)        # 407058 <read@GLIBC_2.2.5>
  4010e6:	68 0b 00 00 00       	push   $0xb
  4010eb:	e9 30 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010f0 <strcmp@plt>:
  4010f0:	ff 25 6a 5f 00 00    	jmp    *0x5f6a(%rip)        # 407060 <strcmp@GLIBC_2.2.5>
  4010f6:	68 0c 00 00 00       	push   $0xc
  4010fb:	e9 20 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401100 <signal@plt>:
  401100:	ff 25 62 5f 00 00    	jmp    *0x5f62(%rip)        # 407068 <signal@GLIBC_2.2.5>
  401106:	68 0d 00 00 00       	push   $0xd
  40110b:	e9 10 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401110 <gethostbyname@plt>:
  401110:	ff 25 5a 5f 00 00    	jmp    *0x5f5a(%rip)        # 407070 <gethostbyname@GLIBC_2.2.5>
  401116:	68 0e 00 00 00       	push   $0xe
  40111b:	e9 00 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401120 <__memmove_chk@plt>:
  401120:	ff 25 52 5f 00 00    	jmp    *0x5f52(%rip)        # 407078 <__memmove_chk@GLIBC_2.3.4>
  401126:	68 0f 00 00 00       	push   $0xf
  40112b:	e9 f0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401130 <strtol@plt>:
  401130:	ff 25 4a 5f 00 00    	jmp    *0x5f4a(%rip)        # 407080 <strtol@GLIBC_2.2.5>
  401136:	68 10 00 00 00       	push   $0x10
  40113b:	e9 e0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401140 <memcpy@plt>:
  401140:	ff 25 42 5f 00 00    	jmp    *0x5f42(%rip)        # 407088 <memcpy@GLIBC_2.14>
  401146:	68 11 00 00 00       	push   $0x11
  40114b:	e9 d0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401150 <time@plt>:
  401150:	ff 25 3a 5f 00 00    	jmp    *0x5f3a(%rip)        # 407090 <time@GLIBC_2.2.5>
  401156:	68 12 00 00 00       	push   $0x12
  40115b:	e9 c0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401160 <random@plt>:
  401160:	ff 25 32 5f 00 00    	jmp    *0x5f32(%rip)        # 407098 <random@GLIBC_2.2.5>
  401166:	68 13 00 00 00       	push   $0x13
  40116b:	e9 b0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401170 <__isoc99_sscanf@plt>:
  401170:	ff 25 2a 5f 00 00    	jmp    *0x5f2a(%rip)        # 4070a0 <__isoc99_sscanf@GLIBC_2.7>
  401176:	68 14 00 00 00       	push   $0x14
  40117b:	e9 a0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401180 <munmap@plt>:
  401180:	ff 25 22 5f 00 00    	jmp    *0x5f22(%rip)        # 4070a8 <munmap@GLIBC_2.2.5>
  401186:	68 15 00 00 00       	push   $0x15
  40118b:	e9 90 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401190 <__printf_chk@plt>:
  401190:	ff 25 1a 5f 00 00    	jmp    *0x5f1a(%rip)        # 4070b0 <__printf_chk@GLIBC_2.3.4>
  401196:	68 16 00 00 00       	push   $0x16
  40119b:	e9 80 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011a0 <fopen@plt>:
  4011a0:	ff 25 12 5f 00 00    	jmp    *0x5f12(%rip)        # 4070b8 <fopen@GLIBC_2.2.5>
  4011a6:	68 17 00 00 00       	push   $0x17
  4011ab:	e9 70 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011b0 <getopt@plt>:
  4011b0:	ff 25 0a 5f 00 00    	jmp    *0x5f0a(%rip)        # 4070c0 <getopt@GLIBC_2.2.5>
  4011b6:	68 18 00 00 00       	push   $0x18
  4011bb:	e9 60 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011c0 <strtoul@plt>:
  4011c0:	ff 25 02 5f 00 00    	jmp    *0x5f02(%rip)        # 4070c8 <strtoul@GLIBC_2.2.5>
  4011c6:	68 19 00 00 00       	push   $0x19
  4011cb:	e9 50 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011d0 <__memset_chk@plt>:
  4011d0:	ff 25 fa 5e 00 00    	jmp    *0x5efa(%rip)        # 4070d0 <__memset_chk@GLIBC_2.3.4>
  4011d6:	68 1a 00 00 00       	push   $0x1a
  4011db:	e9 40 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011e0 <exit@plt>:
  4011e0:	ff 25 f2 5e 00 00    	jmp    *0x5ef2(%rip)        # 4070d8 <exit@GLIBC_2.2.5>
  4011e6:	68 1b 00 00 00       	push   $0x1b
  4011eb:	e9 30 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011f0 <connect@plt>:
  4011f0:	ff 25 ea 5e 00 00    	jmp    *0x5eea(%rip)        # 4070e0 <connect@GLIBC_2.2.5>
  4011f6:	68 1c 00 00 00       	push   $0x1c
  4011fb:	e9 20 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401200 <__fprintf_chk@plt>:
  401200:	ff 25 e2 5e 00 00    	jmp    *0x5ee2(%rip)        # 4070e8 <__fprintf_chk@GLIBC_2.3.4>
  401206:	68 1d 00 00 00       	push   $0x1d
  40120b:	e9 10 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401210 <getc@plt>:
  401210:	ff 25 da 5e 00 00    	jmp    *0x5eda(%rip)        # 4070f0 <getc@GLIBC_2.2.5>
  401216:	68 1e 00 00 00       	push   $0x1e
  40121b:	e9 00 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401220 <__sprintf_chk@plt>:
  401220:	ff 25 d2 5e 00 00    	jmp    *0x5ed2(%rip)        # 4070f8 <__sprintf_chk@GLIBC_2.3.4>
  401226:	68 1f 00 00 00       	push   $0x1f
  40122b:	e9 f0 fd ff ff       	jmp    401020 <_init+0x20>

0000000000401230 <socket@plt>:
  401230:	ff 25 ca 5e 00 00    	jmp    *0x5eca(%rip)        # 407100 <socket@GLIBC_2.2.5>
  401236:	68 20 00 00 00       	push   $0x20
  40123b:	e9 e0 fd ff ff       	jmp    401020 <_init+0x20>

Disassembly of section .text:

0000000000401240 <_start>:
  401240:	f3 0f 1e fa          	endbr64
  401244:	31 ed                	xor    %ebp,%ebp
  401246:	49 89 d1             	mov    %rdx,%r9
  401249:	5e                   	pop    %rsi
  40124a:	48 89 e2             	mov    %rsp,%rdx
  40124d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401251:	50                   	push   %rax
  401252:	54                   	push   %rsp
  401253:	45 31 c0             	xor    %r8d,%r8d
  401256:	31 c9                	xor    %ecx,%ecx
  401258:	48 c7 c7 de 14 40 00 	mov    $0x4014de,%rdi
  40125f:	ff 15 73 5d 00 00    	call   *0x5d73(%rip)        # 406fd8 <__libc_start_main@GLIBC_2.34>
  401265:	f4                   	hlt
  401266:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40126d:	00 00 00 

0000000000401270 <_dl_relocate_static_pie>:
  401270:	f3 0f 1e fa          	endbr64
  401274:	c3                   	ret
  401275:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40127c:	00 00 00 
  40127f:	90                   	nop

0000000000401280 <deregister_tm_clones>:
  401280:	b8 90 74 40 00       	mov    $0x407490,%eax
  401285:	48 3d 90 74 40 00    	cmp    $0x407490,%rax
  40128b:	74 13                	je     4012a0 <deregister_tm_clones+0x20>
  40128d:	b8 00 00 00 00       	mov    $0x0,%eax
  401292:	48 85 c0             	test   %rax,%rax
  401295:	74 09                	je     4012a0 <deregister_tm_clones+0x20>
  401297:	bf 90 74 40 00       	mov    $0x407490,%edi
  40129c:	ff e0                	jmp    *%rax
  40129e:	66 90                	xchg   %ax,%ax
  4012a0:	c3                   	ret
  4012a1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4012a8:	00 00 00 00 
  4012ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012b0 <register_tm_clones>:
  4012b0:	be 90 74 40 00       	mov    $0x407490,%esi
  4012b5:	48 81 ee 90 74 40 00 	sub    $0x407490,%rsi
  4012bc:	48 89 f0             	mov    %rsi,%rax
  4012bf:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4012c3:	48 c1 f8 03          	sar    $0x3,%rax
  4012c7:	48 01 c6             	add    %rax,%rsi
  4012ca:	48 d1 fe             	sar    $1,%rsi
  4012cd:	74 11                	je     4012e0 <register_tm_clones+0x30>
  4012cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4012d4:	48 85 c0             	test   %rax,%rax
  4012d7:	74 07                	je     4012e0 <register_tm_clones+0x30>
  4012d9:	bf 90 74 40 00       	mov    $0x407490,%edi
  4012de:	ff e0                	jmp    *%rax
  4012e0:	c3                   	ret
  4012e1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4012e8:	00 00 00 00 
  4012ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012f0 <__do_global_dtors_aux>:
  4012f0:	f3 0f 1e fa          	endbr64
  4012f4:	80 3d ed 61 00 00 00 	cmpb   $0x0,0x61ed(%rip)        # 4074e8 <completed.0>
  4012fb:	75 13                	jne    401310 <__do_global_dtors_aux+0x20>
  4012fd:	55                   	push   %rbp
  4012fe:	48 89 e5             	mov    %rsp,%rbp
  401301:	e8 7a ff ff ff       	call   401280 <deregister_tm_clones>
  401306:	c6 05 db 61 00 00 01 	movb   $0x1,0x61db(%rip)        # 4074e8 <completed.0>
  40130d:	5d                   	pop    %rbp
  40130e:	c3                   	ret
  40130f:	90                   	nop
  401310:	c3                   	ret
  401311:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401318:	00 00 00 00 
  40131c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401320 <frame_dummy>:
  401320:	f3 0f 1e fa          	endbr64
  401324:	eb 8a                	jmp    4012b0 <register_tm_clones>

0000000000401326 <usage>:
  401326:	50                   	push   %rax
  401327:	58                   	pop    %rax
  401328:	48 83 ec 08          	sub    $0x8,%rsp
  40132c:	48 89 fa             	mov    %rdi,%rdx
  40132f:	83 3d fa 61 00 00 00 	cmpl   $0x0,0x61fa(%rip)        # 407530 <is_checker>
  401336:	74 50                	je     401388 <usage+0x62>
  401338:	48 8d 35 c9 2c 00 00 	lea    0x2cc9(%rip),%rsi        # 404008 <_IO_stdin_used+0x8>
  40133f:	bf 02 00 00 00       	mov    $0x2,%edi
  401344:	b8 00 00 00 00       	mov    $0x0,%eax
  401349:	e8 42 fe ff ff       	call   401190 <__printf_chk@plt>
  40134e:	48 8d 3d eb 2c 00 00 	lea    0x2ceb(%rip),%rdi        # 404040 <_IO_stdin_used+0x40>
  401355:	e8 26 fd ff ff       	call   401080 <puts@plt>
  40135a:	48 8d 3d bc 31 00 00 	lea    0x31bc(%rip),%rdi        # 40451d <_IO_stdin_used+0x51d>
  401361:	e8 1a fd ff ff       	call   401080 <puts@plt>
  401366:	48 8d 3d fb 2c 00 00 	lea    0x2cfb(%rip),%rdi        # 404068 <_IO_stdin_used+0x68>
  40136d:	e8 0e fd ff ff       	call   401080 <puts@plt>
  401372:	48 8d 3d be 31 00 00 	lea    0x31be(%rip),%rdi        # 404537 <_IO_stdin_used+0x537>
  401379:	e8 02 fd ff ff       	call   401080 <puts@plt>
  40137e:	bf 00 00 00 00       	mov    $0x0,%edi
  401383:	e8 58 fe ff ff       	call   4011e0 <exit@plt>
  401388:	48 8d 35 c4 31 00 00 	lea    0x31c4(%rip),%rsi        # 404553 <_IO_stdin_used+0x553>
  40138f:	bf 02 00 00 00       	mov    $0x2,%edi
  401394:	b8 00 00 00 00       	mov    $0x0,%eax
  401399:	e8 f2 fd ff ff       	call   401190 <__printf_chk@plt>
  40139e:	48 8d 3d eb 2c 00 00 	lea    0x2ceb(%rip),%rdi        # 404090 <_IO_stdin_used+0x90>
  4013a5:	e8 d6 fc ff ff       	call   401080 <puts@plt>
  4013aa:	48 8d 3d 07 2d 00 00 	lea    0x2d07(%rip),%rdi        # 4040b8 <_IO_stdin_used+0xb8>
  4013b1:	e8 ca fc ff ff       	call   401080 <puts@plt>
  4013b6:	48 8d 3d b4 31 00 00 	lea    0x31b4(%rip),%rdi        # 404571 <_IO_stdin_used+0x571>
  4013bd:	e8 be fc ff ff       	call   401080 <puts@plt>
  4013c2:	eb ba                	jmp    40137e <usage+0x58>

00000000004013c4 <initialize_target>:
  4013c4:	55                   	push   %rbp
  4013c5:	53                   	push   %rbx
  4013c6:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4013cd:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  4013d2:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4013d9:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  4013de:	48 83 ec 18          	sub    $0x18,%rsp
  4013e2:	89 f5                	mov    %esi,%ebp
  4013e4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4013eb:	00 00 
  4013ed:	48 89 84 24 08 20 00 	mov    %rax,0x2008(%rsp)
  4013f4:	00 
  4013f5:	31 c0                	xor    %eax,%eax
  4013f7:	89 3d 23 61 00 00    	mov    %edi,0x6123(%rip)        # 407520 <check_level>
  4013fd:	8b 3d 2d 5d 00 00    	mov    0x5d2d(%rip),%edi        # 407130 <target_id>
  401403:	e8 d8 21 00 00       	call   4035e0 <gencookie>
  401408:	89 c7                	mov    %eax,%edi
  40140a:	89 05 1c 61 00 00    	mov    %eax,0x611c(%rip)        # 40752c <cookie>
  401410:	e8 cb 21 00 00       	call   4035e0 <gencookie>
  401415:	89 05 0d 61 00 00    	mov    %eax,0x610d(%rip)        # 407528 <authkey>
  40141b:	8b 05 0f 5d 00 00    	mov    0x5d0f(%rip),%eax        # 407130 <target_id>
  401421:	8d 78 01             	lea    0x1(%rax),%edi
  401424:	e8 17 fc ff ff       	call   401040 <srandom@plt>
  401429:	e8 32 fd ff ff       	call   401160 <random@plt>
  40142e:	89 c7                	mov    %eax,%edi
  401430:	e8 0e 03 00 00       	call   401743 <scramble>
  401435:	89 c3                	mov    %eax,%ebx
  401437:	85 ed                	test   %ebp,%ebp
  401439:	75 57                	jne    401492 <initialize_target+0xce>
  40143b:	b8 00 00 00 00       	mov    $0x0,%eax
  401440:	01 d8                	add    %ebx,%eax
  401442:	0f b7 c0             	movzwl %ax,%eax
  401445:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  40144c:	89 c0                	mov    %eax,%eax
  40144e:	48 89 05 33 60 00 00 	mov    %rax,0x6033(%rip)        # 407488 <buf_offset>
  401455:	c6 05 ec 6c 00 00 72 	movb   $0x72,0x6cec(%rip)        # 408148 <target_prefix>
  40145c:	c6 05 e5 6c 00 00 73 	movb   $0x73,0x6ce5(%rip)        # 408148 <target_prefix>
  401463:	83 3d 16 60 00 00 00 	cmpl   $0x0,0x6016(%rip)        # 407480 <notify>
  40146a:	74 09                	je     401475 <initialize_target+0xb1>
  40146c:	83 3d bd 60 00 00 00 	cmpl   $0x0,0x60bd(%rip)        # 407530 <is_checker>
  401473:	74 35                	je     4014aa <initialize_target+0xe6>
  401475:	48 8b 84 24 08 20 00 	mov    0x2008(%rsp),%rax
  40147c:	00 
  40147d:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401484:	00 00 
  401486:	75 51                	jne    4014d9 <initialize_target+0x115>
  401488:	48 81 c4 18 20 00 00 	add    $0x2018,%rsp
  40148f:	5b                   	pop    %rbx
  401490:	5d                   	pop    %rbp
  401491:	c3                   	ret
  401492:	bf 00 00 00 00       	mov    $0x0,%edi
  401497:	e8 b4 fc ff ff       	call   401150 <time@plt>
  40149c:	89 c7                	mov    %eax,%edi
  40149e:	e8 9d fb ff ff       	call   401040 <srandom@plt>
  4014a3:	e8 b8 fc ff ff       	call   401160 <random@plt>
  4014a8:	eb 96                	jmp    401440 <initialize_target+0x7c>
  4014aa:	48 89 e7             	mov    %rsp,%rdi
  4014ad:	e8 65 1e 00 00       	call   403317 <init_driver>
  4014b2:	85 c0                	test   %eax,%eax
  4014b4:	79 bf                	jns    401475 <initialize_target+0xb1>
  4014b6:	48 89 e2             	mov    %rsp,%rdx
  4014b9:	48 8d 35 28 2c 00 00 	lea    0x2c28(%rip),%rsi        # 4040e8 <_IO_stdin_used+0xe8>
  4014c0:	bf 02 00 00 00       	mov    $0x2,%edi
  4014c5:	b8 00 00 00 00       	mov    $0x0,%eax
  4014ca:	e8 c1 fc ff ff       	call   401190 <__printf_chk@plt>
  4014cf:	bf 08 00 00 00       	mov    $0x8,%edi
  4014d4:	e8 07 fd ff ff       	call   4011e0 <exit@plt>
  4014d9:	e8 b5 11 00 00       	call   402693 <__stack_chk_fail>

00000000004014de <main>:
  4014de:	f3 0f 1e fa          	endbr64
  4014e2:	41 56                	push   %r14
  4014e4:	41 55                	push   %r13
  4014e6:	41 54                	push   %r12
  4014e8:	55                   	push   %rbp
  4014e9:	53                   	push   %rbx
  4014ea:	48 83 ec 60          	sub    $0x60,%rsp
  4014ee:	89 fd                	mov    %edi,%ebp
  4014f0:	48 89 f3             	mov    %rsi,%rbx
  4014f3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4014fa:	00 00 
  4014fc:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  401501:	31 c0                	xor    %eax,%eax
  401503:	48 b8 53 70 69 72 69 	movabs $0x6465746972697053,%rax
  40150a:	74 65 64 
  40150d:	48 89 04 24          	mov    %rax,(%rsp)
  401511:	48 b8 64 41 77 61 79 	movabs $0x4e437961774164,%rax
  401518:	43 4e 00 
  40151b:	48 89 44 24 07       	mov    %rax,0x7(%rsp)
  401520:	48 c7 c6 82 25 40 00 	mov    $0x402582,%rsi
  401527:	bf 0b 00 00 00       	mov    $0xb,%edi
  40152c:	e8 cf fb ff ff       	call   401100 <signal@plt>
  401531:	48 c7 c6 28 25 40 00 	mov    $0x402528,%rsi
  401538:	bf 07 00 00 00       	mov    $0x7,%edi
  40153d:	e8 be fb ff ff       	call   401100 <signal@plt>
  401542:	48 c7 c6 dc 25 40 00 	mov    $0x4025dc,%rsi
  401549:	bf 04 00 00 00       	mov    $0x4,%edi
  40154e:	e8 ad fb ff ff       	call   401100 <signal@plt>
  401553:	83 3d d6 5f 00 00 00 	cmpl   $0x0,0x5fd6(%rip)        # 407530 <is_checker>
  40155a:	75 26                	jne    401582 <main+0xa4>
  40155c:	4c 8d 25 27 30 00 00 	lea    0x3027(%rip),%r12        # 40458a <_IO_stdin_used+0x58a>
  401563:	48 8b 05 36 5f 00 00 	mov    0x5f36(%rip),%rax        # 4074a0 <stdin@GLIBC_2.2.5>
  40156a:	48 89 05 a7 5f 00 00 	mov    %rax,0x5fa7(%rip)        # 407518 <infile>
  401571:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401577:	41 be 00 00 00 00    	mov    $0x0,%r14d
  40157d:	e9 8d 00 00 00       	jmp    40160f <main+0x131>
  401582:	48 c7 c6 36 26 40 00 	mov    $0x402636,%rsi
  401589:	bf 0e 00 00 00       	mov    $0xe,%edi
  40158e:	e8 6d fb ff ff       	call   401100 <signal@plt>
  401593:	bf 02 00 00 00       	mov    $0x2,%edi
  401598:	e8 23 fb ff ff       	call   4010c0 <alarm@plt>
  40159d:	4c 8d 25 eb 2f 00 00 	lea    0x2feb(%rip),%r12        # 40458f <_IO_stdin_used+0x58f>
  4015a4:	eb bd                	jmp    401563 <main+0x85>
  4015a6:	48 8b 3b             	mov    (%rbx),%rdi
  4015a9:	e8 78 fd ff ff       	call   401326 <usage>
  4015ae:	48 8d 35 54 30 00 00 	lea    0x3054(%rip),%rsi        # 404609 <_IO_stdin_used+0x609>
  4015b5:	48 8b 3d 04 5f 00 00 	mov    0x5f04(%rip),%rdi        # 4074c0 <optarg@GLIBC_2.2.5>
  4015bc:	e8 df fb ff ff       	call   4011a0 <fopen@plt>
  4015c1:	48 89 05 50 5f 00 00 	mov    %rax,0x5f50(%rip)        # 407518 <infile>
  4015c8:	48 85 c0             	test   %rax,%rax
  4015cb:	75 42                	jne    40160f <main+0x131>
  4015cd:	48 8b 0d ec 5e 00 00 	mov    0x5eec(%rip),%rcx        # 4074c0 <optarg@GLIBC_2.2.5>
  4015d4:	48 8d 15 be 2f 00 00 	lea    0x2fbe(%rip),%rdx        # 404599 <_IO_stdin_used+0x599>
  4015db:	be 02 00 00 00       	mov    $0x2,%esi
  4015e0:	48 8b 3d f9 5e 00 00 	mov    0x5ef9(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  4015e7:	e8 14 fc ff ff       	call   401200 <__fprintf_chk@plt>
  4015ec:	b8 01 00 00 00       	mov    $0x1,%eax
  4015f1:	e9 2b 01 00 00       	jmp    401721 <main+0x243>
  4015f6:	ba 10 00 00 00       	mov    $0x10,%edx
  4015fb:	be 00 00 00 00       	mov    $0x0,%esi
  401600:	48 8b 3d b9 5e 00 00 	mov    0x5eb9(%rip),%rdi        # 4074c0 <optarg@GLIBC_2.2.5>
  401607:	e8 b4 fb ff ff       	call   4011c0 <strtoul@plt>
  40160c:	41 89 c6             	mov    %eax,%r14d
  40160f:	4c 89 e2             	mov    %r12,%rdx
  401612:	48 89 de             	mov    %rbx,%rsi
  401615:	89 ef                	mov    %ebp,%edi
  401617:	e8 94 fb ff ff       	call   4011b0 <getopt@plt>
  40161c:	3c ff                	cmp    $0xff,%al
  40161e:	74 7a                	je     40169a <main+0x1bc>
  401620:	8d 50 9f             	lea    -0x61(%rax),%edx
  401623:	80 fa 14             	cmp    $0x14,%dl
  401626:	77 51                	ja     401679 <main+0x19b>
  401628:	0f b6 d2             	movzbl %dl,%edx
  40162b:	48 8d 0d 6e 31 00 00 	lea    0x316e(%rip),%rcx        # 4047a0 <_IO_stdin_used+0x7a0>
  401632:	48 63 14 91          	movslq (%rcx,%rdx,4),%rdx
  401636:	48 01 ca             	add    %rcx,%rdx
  401639:	3e ff e2             	notrack jmp *%rdx
  40163c:	ba 0a 00 00 00       	mov    $0xa,%edx
  401641:	be 00 00 00 00       	mov    $0x0,%esi
  401646:	48 8b 3d 73 5e 00 00 	mov    0x5e73(%rip),%rdi        # 4074c0 <optarg@GLIBC_2.2.5>
  40164d:	e8 de fa ff ff       	call   401130 <strtol@plt>
  401652:	41 89 c5             	mov    %eax,%r13d
  401655:	eb b8                	jmp    40160f <main+0x131>
  401657:	c7 05 1f 5e 00 00 00 	movl   $0x0,0x5e1f(%rip)        # 407480 <notify>
  40165e:	00 00 00 
  401661:	eb ac                	jmp    40160f <main+0x131>
  401663:	48 89 e7             	mov    %rsp,%rdi
  401666:	ba 50 00 00 00       	mov    $0x50,%edx
  40166b:	48 8b 35 4e 5e 00 00 	mov    0x5e4e(%rip),%rsi        # 4074c0 <optarg@GLIBC_2.2.5>
  401672:	e8 d9 f9 ff ff       	call   401050 <strncpy@plt>
  401677:	eb 96                	jmp    40160f <main+0x131>
  401679:	0f be d0             	movsbl %al,%edx
  40167c:	48 8d 35 33 2f 00 00 	lea    0x2f33(%rip),%rsi        # 4045b6 <_IO_stdin_used+0x5b6>
  401683:	bf 02 00 00 00       	mov    $0x2,%edi
  401688:	b8 00 00 00 00       	mov    $0x0,%eax
  40168d:	e8 fe fa ff ff       	call   401190 <__printf_chk@plt>
  401692:	48 8b 3b             	mov    (%rbx),%rdi
  401695:	e8 8c fc ff ff       	call   401326 <usage>
  40169a:	be 01 00 00 00       	mov    $0x1,%esi
  40169f:	44 89 ef             	mov    %r13d,%edi
  4016a2:	e8 1d fd ff ff       	call   4013c4 <initialize_target>
  4016a7:	83 3d 82 5e 00 00 00 	cmpl   $0x0,0x5e82(%rip)        # 407530 <is_checker>
  4016ae:	74 3f                	je     4016ef <main+0x211>
  4016b0:	44 39 35 71 5e 00 00 	cmp    %r14d,0x5e71(%rip)        # 407528 <authkey>
  4016b7:	75 13                	jne    4016cc <main+0x1ee>
  4016b9:	48 89 e7             	mov    %rsp,%rdi
  4016bc:	48 8b 35 7d 5a 00 00 	mov    0x5a7d(%rip),%rsi        # 407140 <user_id>
  4016c3:	e8 28 fa ff ff       	call   4010f0 <strcmp@plt>
  4016c8:	85 c0                	test   %eax,%eax
  4016ca:	74 23                	je     4016ef <main+0x211>
  4016cc:	44 89 f2             	mov    %r14d,%edx
  4016cf:	48 8d 35 3a 2a 00 00 	lea    0x2a3a(%rip),%rsi        # 404110 <_IO_stdin_used+0x110>
  4016d6:	bf 02 00 00 00       	mov    $0x2,%edi
  4016db:	b8 00 00 00 00       	mov    $0x0,%eax
  4016e0:	e8 ab fa ff ff       	call   401190 <__printf_chk@plt>
  4016e5:	b8 00 00 00 00       	mov    $0x0,%eax
  4016ea:	e8 77 0a 00 00       	call   402166 <check_fail>
  4016ef:	8b 15 37 5e 00 00    	mov    0x5e37(%rip),%edx        # 40752c <cookie>
  4016f5:	48 8d 35 cd 2e 00 00 	lea    0x2ecd(%rip),%rsi        # 4045c9 <_IO_stdin_used+0x5c9>
  4016fc:	bf 02 00 00 00       	mov    $0x2,%edi
  401701:	b8 00 00 00 00       	mov    $0x0,%eax
  401706:	e8 85 fa ff ff       	call   401190 <__printf_chk@plt>
  40170b:	be 01 00 00 00       	mov    $0x1,%esi
  401710:	48 8b 3d 71 5d 00 00 	mov    0x5d71(%rip),%rdi        # 407488 <buf_offset>
  401717:	e8 d1 0f 00 00       	call   4026ed <launch>
  40171c:	b8 00 00 00 00       	mov    $0x0,%eax
  401721:	48 8b 54 24 58       	mov    0x58(%rsp),%rdx
  401726:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40172d:	00 00 
  40172f:	75 0d                	jne    40173e <main+0x260>
  401731:	48 83 c4 60          	add    $0x60,%rsp
  401735:	5b                   	pop    %rbx
  401736:	5d                   	pop    %rbp
  401737:	41 5c                	pop    %r12
  401739:	41 5d                	pop    %r13
  40173b:	41 5e                	pop    %r14
  40173d:	c3                   	ret
  40173e:	e8 50 0f 00 00       	call   402693 <__stack_chk_fail>

0000000000401743 <scramble>:
  401743:	f3 0f 1e fa          	endbr64
  401747:	48 83 ec 38          	sub    $0x38,%rsp
  40174b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401752:	00 00 
  401754:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401759:	31 c0                	xor    %eax,%eax
  40175b:	eb 10                	jmp    40176d <scramble+0x2a>
  40175d:	69 d0 34 17 00 00    	imul   $0x1734,%eax,%edx
  401763:	01 fa                	add    %edi,%edx
  401765:	89 c1                	mov    %eax,%ecx
  401767:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  40176a:	83 c0 01             	add    $0x1,%eax
  40176d:	83 f8 09             	cmp    $0x9,%eax
  401770:	76 eb                	jbe    40175d <scramble+0x1a>
  401772:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401776:	69 c0 03 c2 00 00    	imul   $0xc203,%eax,%eax
  40177c:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401780:	8b 04 24             	mov    (%rsp),%eax
  401783:	69 c0 3a c3 00 00    	imul   $0xc33a,%eax,%eax
  401789:	89 04 24             	mov    %eax,(%rsp)
  40178c:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401790:	69 c0 d9 e2 00 00    	imul   $0xe2d9,%eax,%eax
  401796:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40179a:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40179e:	69 c0 c4 6b 00 00    	imul   $0x6bc4,%eax,%eax
  4017a4:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4017a8:	8b 04 24             	mov    (%rsp),%eax
  4017ab:	69 c0 03 e4 00 00    	imul   $0xe403,%eax,%eax
  4017b1:	89 04 24             	mov    %eax,(%rsp)
  4017b4:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4017b8:	69 c0 ed 00 00 00    	imul   $0xed,%eax,%eax
  4017be:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4017c2:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4017c6:	69 c0 66 ec 00 00    	imul   $0xec66,%eax,%eax
  4017cc:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4017d0:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4017d4:	69 c0 53 ac 00 00    	imul   $0xac53,%eax,%eax
  4017da:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4017de:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4017e2:	69 c0 a0 6e 00 00    	imul   $0x6ea0,%eax,%eax
  4017e8:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4017ec:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4017f0:	69 c0 f2 12 00 00    	imul   $0x12f2,%eax,%eax
  4017f6:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4017fa:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4017fe:	69 c0 5f 7a 00 00    	imul   $0x7a5f,%eax,%eax
  401804:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401808:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40180c:	69 c0 2e 2a 00 00    	imul   $0x2a2e,%eax,%eax
  401812:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401816:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40181a:	69 c0 3a 71 00 00    	imul   $0x713a,%eax,%eax
  401820:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401824:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401828:	69 c0 49 14 00 00    	imul   $0x1449,%eax,%eax
  40182e:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401832:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401836:	69 c0 89 b5 00 00    	imul   $0xb589,%eax,%eax
  40183c:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401840:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401844:	69 c0 49 f9 00 00    	imul   $0xf949,%eax,%eax
  40184a:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40184e:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401852:	69 c0 19 c3 00 00    	imul   $0xc319,%eax,%eax
  401858:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40185c:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401860:	69 c0 62 97 00 00    	imul   $0x9762,%eax,%eax
  401866:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40186a:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40186e:	69 c0 be c7 00 00    	imul   $0xc7be,%eax,%eax
  401874:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401878:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40187c:	69 c0 7c f9 00 00    	imul   $0xf97c,%eax,%eax
  401882:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401886:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40188a:	69 c0 d5 01 00 00    	imul   $0x1d5,%eax,%eax
  401890:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401894:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401898:	69 c0 ff c4 00 00    	imul   $0xc4ff,%eax,%eax
  40189e:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4018a2:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4018a6:	69 c0 b3 bb 00 00    	imul   $0xbbb3,%eax,%eax
  4018ac:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4018b0:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4018b4:	69 c0 86 14 00 00    	imul   $0x1486,%eax,%eax
  4018ba:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4018be:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4018c2:	69 c0 2d f2 00 00    	imul   $0xf22d,%eax,%eax
  4018c8:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4018cc:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4018d0:	69 c0 75 6a 00 00    	imul   $0x6a75,%eax,%eax
  4018d6:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4018da:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4018de:	69 c0 9d 27 00 00    	imul   $0x279d,%eax,%eax
  4018e4:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4018e8:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4018ec:	69 c0 db 2a 00 00    	imul   $0x2adb,%eax,%eax
  4018f2:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4018f6:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4018fa:	69 c0 d4 7e 00 00    	imul   $0x7ed4,%eax,%eax
  401900:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401904:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401908:	69 c0 ec 7a 00 00    	imul   $0x7aec,%eax,%eax
  40190e:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401912:	8b 04 24             	mov    (%rsp),%eax
  401915:	69 c0 02 fd 00 00    	imul   $0xfd02,%eax,%eax
  40191b:	89 04 24             	mov    %eax,(%rsp)
  40191e:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401922:	69 c0 ea ab 00 00    	imul   $0xabea,%eax,%eax
  401928:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40192c:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401930:	69 c0 ba 30 00 00    	imul   $0x30ba,%eax,%eax
  401936:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40193a:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40193e:	69 c0 0d 66 00 00    	imul   $0x660d,%eax,%eax
  401944:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401948:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40194c:	69 c0 73 46 00 00    	imul   $0x4673,%eax,%eax
  401952:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401956:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40195a:	69 c0 3a a4 00 00    	imul   $0xa43a,%eax,%eax
  401960:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401964:	8b 04 24             	mov    (%rsp),%eax
  401967:	69 c0 f3 59 00 00    	imul   $0x59f3,%eax,%eax
  40196d:	89 04 24             	mov    %eax,(%rsp)
  401970:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401974:	69 c0 83 36 00 00    	imul   $0x3683,%eax,%eax
  40197a:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40197e:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401982:	69 c0 8c da 00 00    	imul   $0xda8c,%eax,%eax
  401988:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40198c:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401990:	69 c0 f9 3f 00 00    	imul   $0x3ff9,%eax,%eax
  401996:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40199a:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40199e:	69 c0 81 72 00 00    	imul   $0x7281,%eax,%eax
  4019a4:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4019a8:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4019ac:	69 c0 45 39 00 00    	imul   $0x3945,%eax,%eax
  4019b2:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4019b6:	8b 04 24             	mov    (%rsp),%eax
  4019b9:	69 c0 13 3f 00 00    	imul   $0x3f13,%eax,%eax
  4019bf:	89 04 24             	mov    %eax,(%rsp)
  4019c2:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4019c6:	69 c0 f6 32 00 00    	imul   $0x32f6,%eax,%eax
  4019cc:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4019d0:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4019d4:	69 c0 45 a3 00 00    	imul   $0xa345,%eax,%eax
  4019da:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4019de:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4019e2:	69 c0 44 f2 00 00    	imul   $0xf244,%eax,%eax
  4019e8:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4019ec:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4019f0:	69 c0 18 22 00 00    	imul   $0x2218,%eax,%eax
  4019f6:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4019fa:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4019fe:	69 c0 62 60 00 00    	imul   $0x6062,%eax,%eax
  401a04:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401a08:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401a0c:	69 c0 7b e1 00 00    	imul   $0xe17b,%eax,%eax
  401a12:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401a16:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401a1a:	69 c0 4b 4b 00 00    	imul   $0x4b4b,%eax,%eax
  401a20:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401a24:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401a28:	69 c0 f9 25 00 00    	imul   $0x25f9,%eax,%eax
  401a2e:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401a32:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401a36:	69 c0 36 70 00 00    	imul   $0x7036,%eax,%eax
  401a3c:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401a40:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401a44:	69 c0 bf 58 00 00    	imul   $0x58bf,%eax,%eax
  401a4a:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401a4e:	8b 04 24             	mov    (%rsp),%eax
  401a51:	69 c0 93 95 00 00    	imul   $0x9593,%eax,%eax
  401a57:	89 04 24             	mov    %eax,(%rsp)
  401a5a:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401a5e:	69 c0 c2 f1 00 00    	imul   $0xf1c2,%eax,%eax
  401a64:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401a68:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401a6c:	8d 04 80             	lea    (%rax,%rax,4),%eax
  401a6f:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401a73:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401a77:	69 c0 fc 7f 00 00    	imul   $0x7ffc,%eax,%eax
  401a7d:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401a81:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401a85:	69 c0 61 fe 00 00    	imul   $0xfe61,%eax,%eax
  401a8b:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401a8f:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401a93:	69 c0 6b 9d 00 00    	imul   $0x9d6b,%eax,%eax
  401a99:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401a9d:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401aa1:	69 c0 f6 7c 00 00    	imul   $0x7cf6,%eax,%eax
  401aa7:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401aab:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401aaf:	69 c0 3a df 00 00    	imul   $0xdf3a,%eax,%eax
  401ab5:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401ab9:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401abd:	69 c0 f7 e0 00 00    	imul   $0xe0f7,%eax,%eax
  401ac3:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401ac7:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401acb:	69 c0 69 0d 00 00    	imul   $0xd69,%eax,%eax
  401ad1:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401ad5:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401ad9:	69 c0 25 54 00 00    	imul   $0x5425,%eax,%eax
  401adf:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401ae3:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401ae7:	69 c0 c9 07 00 00    	imul   $0x7c9,%eax,%eax
  401aed:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401af1:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401af5:	69 c0 d2 16 00 00    	imul   $0x16d2,%eax,%eax
  401afb:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401aff:	8b 04 24             	mov    (%rsp),%eax
  401b02:	69 c0 f5 8e 00 00    	imul   $0x8ef5,%eax,%eax
  401b08:	89 04 24             	mov    %eax,(%rsp)
  401b0b:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b0f:	69 c0 af ad 00 00    	imul   $0xadaf,%eax,%eax
  401b15:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b19:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b1d:	69 c0 c1 2d 00 00    	imul   $0x2dc1,%eax,%eax
  401b23:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b27:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401b2b:	69 c0 01 1b 00 00    	imul   $0x1b01,%eax,%eax
  401b31:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401b35:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401b39:	69 c0 d0 18 00 00    	imul   $0x18d0,%eax,%eax
  401b3f:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401b43:	8b 04 24             	mov    (%rsp),%eax
  401b46:	69 c0 c6 83 00 00    	imul   $0x83c6,%eax,%eax
  401b4c:	89 04 24             	mov    %eax,(%rsp)
  401b4f:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401b53:	69 c0 51 54 00 00    	imul   $0x5451,%eax,%eax
  401b59:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401b5d:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401b61:	69 c0 db 57 00 00    	imul   $0x57db,%eax,%eax
  401b67:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401b6b:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401b6f:	69 c0 7f b3 00 00    	imul   $0xb37f,%eax,%eax
  401b75:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401b79:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b7d:	69 c0 6d 32 00 00    	imul   $0x326d,%eax,%eax
  401b83:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b87:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401b8b:	69 c0 0b 44 00 00    	imul   $0x440b,%eax,%eax
  401b91:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401b95:	8b 04 24             	mov    (%rsp),%eax
  401b98:	69 c0 0b 94 00 00    	imul   $0x940b,%eax,%eax
  401b9e:	89 04 24             	mov    %eax,(%rsp)
  401ba1:	8b 04 24             	mov    (%rsp),%eax
  401ba4:	69 c0 be 54 00 00    	imul   $0x54be,%eax,%eax
  401baa:	89 04 24             	mov    %eax,(%rsp)
  401bad:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401bb1:	69 c0 58 40 00 00    	imul   $0x4058,%eax,%eax
  401bb7:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401bbb:	8b 04 24             	mov    (%rsp),%eax
  401bbe:	69 c0 a0 87 00 00    	imul   $0x87a0,%eax,%eax
  401bc4:	89 04 24             	mov    %eax,(%rsp)
  401bc7:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401bcb:	69 c0 4a 8a 00 00    	imul   $0x8a4a,%eax,%eax
  401bd1:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401bd5:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401bd9:	69 c0 32 de 00 00    	imul   $0xde32,%eax,%eax
  401bdf:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401be3:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401be7:	69 c0 4b fe 00 00    	imul   $0xfe4b,%eax,%eax
  401bed:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401bf1:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401bf5:	69 c0 3c 7b 00 00    	imul   $0x7b3c,%eax,%eax
  401bfb:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401bff:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401c03:	69 c0 76 2b 00 00    	imul   $0x2b76,%eax,%eax
  401c09:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401c0d:	8b 04 24             	mov    (%rsp),%eax
  401c10:	69 c0 52 34 00 00    	imul   $0x3452,%eax,%eax
  401c16:	89 04 24             	mov    %eax,(%rsp)
  401c19:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401c1d:	69 c0 d8 2c 00 00    	imul   $0x2cd8,%eax,%eax
  401c23:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401c27:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401c2b:	69 c0 64 31 00 00    	imul   $0x3164,%eax,%eax
  401c31:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401c35:	b8 00 00 00 00       	mov    $0x0,%eax
  401c3a:	ba 00 00 00 00       	mov    $0x0,%edx
  401c3f:	eb 0a                	jmp    401c4b <scramble+0x508>
  401c41:	89 c1                	mov    %eax,%ecx
  401c43:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  401c46:	01 ca                	add    %ecx,%edx
  401c48:	83 c0 01             	add    $0x1,%eax
  401c4b:	83 f8 09             	cmp    $0x9,%eax
  401c4e:	76 f1                	jbe    401c41 <scramble+0x4fe>
  401c50:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  401c55:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401c5c:	00 00 
  401c5e:	75 07                	jne    401c67 <scramble+0x524>
  401c60:	89 d0                	mov    %edx,%eax
  401c62:	48 83 c4 38          	add    $0x38,%rsp
  401c66:	c3                   	ret
  401c67:	e8 27 0a 00 00       	call   402693 <__stack_chk_fail>

0000000000401c6c <getbuf>:
  401c6c:	f3 0f 1e fa          	endbr64
  401c70:	48 83 ec 28          	sub    $0x28,%rsp
  401c74:	48 89 e7             	mov    %rsp,%rdi
  401c77:	e8 28 05 00 00       	call   4021a4 <Gets>
  401c7c:	b8 01 00 00 00       	mov    $0x1,%eax
  401c81:	48 83 c4 28          	add    $0x28,%rsp
  401c85:	c3                   	ret

0000000000401c86 <touch1>:
  401c86:	f3 0f 1e fa          	endbr64
  401c8a:	50                   	push   %rax
  401c8b:	58                   	pop    %rax
  401c8c:	48 83 ec 08          	sub    $0x8,%rsp
  401c90:	c7 05 8a 58 00 00 01 	movl   $0x1,0x588a(%rip)        # 407524 <vlevel>
  401c97:	00 00 00 
  401c9a:	48 8d 3d 6a 29 00 00 	lea    0x296a(%rip),%rdi        # 40460b <_IO_stdin_used+0x60b>
  401ca1:	e8 da f3 ff ff       	call   401080 <puts@plt>
  401ca6:	bf 01 00 00 00       	mov    $0x1,%edi
  401cab:	e8 71 07 00 00       	call   402421 <validate>
  401cb0:	bf 00 00 00 00       	mov    $0x0,%edi
  401cb5:	e8 26 f5 ff ff       	call   4011e0 <exit@plt>

0000000000401cba <touch2>:
  401cba:	f3 0f 1e fa          	endbr64
  401cbe:	50                   	push   %rax
  401cbf:	58                   	pop    %rax
  401cc0:	48 83 ec 08          	sub    $0x8,%rsp
  401cc4:	89 fa                	mov    %edi,%edx
  401cc6:	c7 05 54 58 00 00 02 	movl   $0x2,0x5854(%rip)        # 407524 <vlevel>
  401ccd:	00 00 00 
  401cd0:	39 3d 56 58 00 00    	cmp    %edi,0x5856(%rip)        # 40752c <cookie>
  401cd6:	74 2a                	je     401d02 <touch2+0x48>
  401cd8:	48 8d 35 a1 24 00 00 	lea    0x24a1(%rip),%rsi        # 404180 <_IO_stdin_used+0x180>
  401cdf:	bf 02 00 00 00       	mov    $0x2,%edi
  401ce4:	b8 00 00 00 00       	mov    $0x0,%eax
  401ce9:	e8 a2 f4 ff ff       	call   401190 <__printf_chk@plt>
  401cee:	bf 02 00 00 00       	mov    $0x2,%edi
  401cf3:	e8 04 08 00 00       	call   4024fc <fail>
  401cf8:	bf 00 00 00 00       	mov    $0x0,%edi
  401cfd:	e8 de f4 ff ff       	call   4011e0 <exit@plt>
  401d02:	48 8d 35 4f 24 00 00 	lea    0x244f(%rip),%rsi        # 404158 <_IO_stdin_used+0x158>
  401d09:	bf 02 00 00 00       	mov    $0x2,%edi
  401d0e:	b8 00 00 00 00       	mov    $0x0,%eax
  401d13:	e8 78 f4 ff ff       	call   401190 <__printf_chk@plt>
  401d18:	bf 02 00 00 00       	mov    $0x2,%edi
  401d1d:	e8 ff 06 00 00       	call   402421 <validate>
  401d22:	eb d4                	jmp    401cf8 <touch2+0x3e>

0000000000401d24 <hexmatch>:
  401d24:	f3 0f 1e fa          	endbr64
  401d28:	41 54                	push   %r12
  401d2a:	55                   	push   %rbp
  401d2b:	53                   	push   %rbx
  401d2c:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  401d30:	89 fd                	mov    %edi,%ebp
  401d32:	48 89 f3             	mov    %rsi,%rbx
  401d35:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401d3c:	00 00 
  401d3e:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401d43:	31 c0                	xor    %eax,%eax
  401d45:	e8 16 f4 ff ff       	call   401160 <random@plt>
  401d4a:	48 89 c6             	mov    %rax,%rsi
  401d4d:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401d54:	0a d7 a3 
  401d57:	48 f7 ea             	imul   %rdx
  401d5a:	48 8d 0c 32          	lea    (%rdx,%rsi,1),%rcx
  401d5e:	48 c1 f9 06          	sar    $0x6,%rcx
  401d62:	48 89 f0             	mov    %rsi,%rax
  401d65:	48 c1 f8 3f          	sar    $0x3f,%rax
  401d69:	48 29 c1             	sub    %rax,%rcx
  401d6c:	48 8d 04 89          	lea    (%rcx,%rcx,4),%rax
  401d70:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401d74:	48 c1 e0 02          	shl    $0x2,%rax
  401d78:	48 29 c6             	sub    %rax,%rsi
  401d7b:	4c 8d 24 34          	lea    (%rsp,%rsi,1),%r12
  401d7f:	ba 6e 00 00 00       	mov    $0x6e,%edx
  401d84:	48 39 d6             	cmp    %rdx,%rsi
  401d87:	48 0f 43 d6          	cmovae %rsi,%rdx
  401d8b:	48 29 f2             	sub    %rsi,%rdx
  401d8e:	41 89 e8             	mov    %ebp,%r8d
  401d91:	48 8d 0d 90 28 00 00 	lea    0x2890(%rip),%rcx        # 404628 <_IO_stdin_used+0x628>
  401d98:	be 02 00 00 00       	mov    $0x2,%esi
  401d9d:	4c 89 e7             	mov    %r12,%rdi
  401da0:	b8 00 00 00 00       	mov    $0x0,%eax
  401da5:	e8 76 f4 ff ff       	call   401220 <__sprintf_chk@plt>
  401daa:	ba 09 00 00 00       	mov    $0x9,%edx
  401daf:	4c 89 e6             	mov    %r12,%rsi
  401db2:	48 89 df             	mov    %rbx,%rdi
  401db5:	e8 a6 f2 ff ff       	call   401060 <strncmp@plt>
  401dba:	85 c0                	test   %eax,%eax
  401dbc:	0f 94 c0             	sete   %al
  401dbf:	48 8b 54 24 78       	mov    0x78(%rsp),%rdx
  401dc4:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  401dcb:	00 00 
  401dcd:	75 0c                	jne    401ddb <hexmatch+0xb7>
  401dcf:	0f b6 c0             	movzbl %al,%eax
  401dd2:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  401dd6:	5b                   	pop    %rbx
  401dd7:	5d                   	pop    %rbp
  401dd8:	41 5c                	pop    %r12
  401dda:	c3                   	ret
  401ddb:	e8 b3 08 00 00       	call   402693 <__stack_chk_fail>

0000000000401de0 <touch3>:
  401de0:	f3 0f 1e fa          	endbr64
  401de4:	53                   	push   %rbx
  401de5:	48 89 fb             	mov    %rdi,%rbx
  401de8:	c7 05 32 57 00 00 03 	movl   $0x3,0x5732(%rip)        # 407524 <vlevel>
  401def:	00 00 00 
  401df2:	48 89 fe             	mov    %rdi,%rsi
  401df5:	8b 3d 31 57 00 00    	mov    0x5731(%rip),%edi        # 40752c <cookie>
  401dfb:	e8 24 ff ff ff       	call   401d24 <hexmatch>
  401e00:	85 c0                	test   %eax,%eax
  401e02:	74 2d                	je     401e31 <touch3+0x51>
  401e04:	48 89 da             	mov    %rbx,%rdx
  401e07:	48 8d 35 9a 23 00 00 	lea    0x239a(%rip),%rsi        # 4041a8 <_IO_stdin_used+0x1a8>
  401e0e:	bf 02 00 00 00       	mov    $0x2,%edi
  401e13:	b8 00 00 00 00       	mov    $0x0,%eax
  401e18:	e8 73 f3 ff ff       	call   401190 <__printf_chk@plt>
  401e1d:	bf 03 00 00 00       	mov    $0x3,%edi
  401e22:	e8 fa 05 00 00       	call   402421 <validate>
  401e27:	bf 00 00 00 00       	mov    $0x0,%edi
  401e2c:	e8 af f3 ff ff       	call   4011e0 <exit@plt>
  401e31:	48 89 da             	mov    %rbx,%rdx
  401e34:	48 8d 35 95 23 00 00 	lea    0x2395(%rip),%rsi        # 4041d0 <_IO_stdin_used+0x1d0>
  401e3b:	bf 02 00 00 00       	mov    $0x2,%edi
  401e40:	b8 00 00 00 00       	mov    $0x0,%eax
  401e45:	e8 46 f3 ff ff       	call   401190 <__printf_chk@plt>
  401e4a:	bf 03 00 00 00       	mov    $0x3,%edi
  401e4f:	e8 a8 06 00 00       	call   4024fc <fail>
  401e54:	eb d1                	jmp    401e27 <touch3+0x47>

0000000000401e56 <test>:
  401e56:	f3 0f 1e fa          	endbr64
  401e5a:	48 83 ec 08          	sub    $0x8,%rsp
  401e5e:	b8 00 00 00 00       	mov    $0x0,%eax
  401e63:	e8 04 fe ff ff       	call   401c6c <getbuf>
  401e68:	89 c2                	mov    %eax,%edx
  401e6a:	48 8d 35 87 23 00 00 	lea    0x2387(%rip),%rsi        # 4041f8 <_IO_stdin_used+0x1f8>
  401e71:	bf 02 00 00 00       	mov    $0x2,%edi
  401e76:	b8 00 00 00 00       	mov    $0x0,%eax
  401e7b:	e8 10 f3 ff ff       	call   401190 <__printf_chk@plt>
  401e80:	48 83 c4 08          	add    $0x8,%rsp
  401e84:	c3                   	ret

0000000000401e85 <test2>:
  401e85:	f3 0f 1e fa          	endbr64
  401e89:	48 83 ec 08          	sub    $0x8,%rsp
  401e8d:	b8 00 00 00 00       	mov    $0x0,%eax
  401e92:	e8 1d 00 00 00       	call   401eb4 <getbuf_withcanary>
  401e97:	89 c2                	mov    %eax,%edx
  401e99:	48 8d 35 80 23 00 00 	lea    0x2380(%rip),%rsi        # 404220 <_IO_stdin_used+0x220>
  401ea0:	bf 02 00 00 00       	mov    $0x2,%edi
  401ea5:	b8 00 00 00 00       	mov    $0x0,%eax
  401eaa:	e8 e1 f2 ff ff       	call   401190 <__printf_chk@plt>
  401eaf:	48 83 c4 08          	add    $0x8,%rsp
  401eb3:	c3                   	ret

0000000000401eb4 <getbuf_withcanary>:
  401eb4:	55                   	push   %rbp
  401eb5:	48 89 e5             	mov    %rsp,%rbp
  401eb8:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  401ebf:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401ec6:	00 00 
  401ec8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401ecc:	31 c0                	xor    %eax,%eax
  401ece:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  401ed5:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401edc:	48 89 c7             	mov    %rax,%rdi
  401edf:	e8 c0 02 00 00       	call   4021a4 <Gets>
  401ee4:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401ee7:	48 98                	cltq
  401ee9:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  401ef0:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
  401ef4:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401efb:	ba 80 00 00 00       	mov    $0x80,%edx
  401f00:	48 89 c6             	mov    %rax,%rsi
  401f03:	48 89 cf             	mov    %rcx,%rdi
  401f06:	e8 35 f2 ff ff       	call   401140 <memcpy@plt>
  401f0b:	b8 01 00 00 00       	mov    $0x1,%eax
  401f10:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  401f14:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401f1b:	00 00 
  401f1d:	74 05                	je     401f24 <getbuf_withcanary+0x70>
  401f1f:	e8 6f 07 00 00       	call   402693 <__stack_chk_fail>
  401f24:	c9                   	leave
  401f25:	c3                   	ret

0000000000401f26 <start_farm>:
  401f26:	f3 0f 1e fa          	endbr64
  401f2a:	b8 01 00 00 00       	mov    $0x1,%eax
  401f2f:	c3                   	ret

0000000000401f30 <addval_334>:
  401f30:	f3 0f 1e fa          	endbr64
  401f34:	8d 87 0f 58 58 90    	lea    -0x6fa7a7f1(%rdi),%eax
  401f3a:	c3                   	ret

0000000000401f3b <addval_451>:
  401f3b:	f3 0f 1e fa          	endbr64
  401f3f:	8d 87 e5 72 58 90    	lea    -0x6fa78d1b(%rdi),%eax
  401f45:	c3                   	ret

0000000000401f46 <getval_471>:
  401f46:	f3 0f 1e fa          	endbr64
  401f4a:	b8 58 91 c3 43       	mov    $0x43c39158,%eax
  401f4f:	c3                   	ret

0000000000401f50 <addval_154>:
  401f50:	f3 0f 1e fa          	endbr64
  401f54:	8d 87 4a 89 c7 c3    	lea    -0x3c3876b6(%rdi),%eax
  401f5a:	c3                   	ret

0000000000401f5b <setval_392>:
  401f5b:	f3 0f 1e fa          	endbr64
  401f5f:	c7 07 48 89 c7 c3    	movl   $0xc3c78948,(%rdi)
  401f65:	c3                   	ret

0000000000401f66 <getval_283>:
  401f66:	f3 0f 1e fa          	endbr64
  401f6a:	b8 3b e8 f4 50       	mov    $0x50f4e83b,%eax
  401f6f:	c3                   	ret

0000000000401f70 <getval_162>:
  401f70:	f3 0f 1e fa          	endbr64
  401f74:	b8 68 89 c7 90       	mov    $0x90c78968,%eax
  401f79:	c3                   	ret

0000000000401f7a <setval_490>:
  401f7a:	f3 0f 1e fa          	endbr64
  401f7e:	c7 07 48 89 c7 c3    	movl   $0xc3c78948,(%rdi)
  401f84:	c3                   	ret

0000000000401f85 <mid_farm>:
  401f85:	f3 0f 1e fa          	endbr64
  401f89:	b8 01 00 00 00       	mov    $0x1,%eax
  401f8e:	c3                   	ret

0000000000401f8f <add_xy>:
  401f8f:	f3 0f 1e fa          	endbr64
  401f93:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  401f97:	c3                   	ret

0000000000401f98 <getval_376>:
  401f98:	f3 0f 1e fa          	endbr64
  401f9c:	b8 89 c1 08 c9       	mov    $0xc908c189,%eax
  401fa1:	c3                   	ret

0000000000401fa2 <setval_439>:
  401fa2:	f3 0f 1e fa          	endbr64
  401fa6:	c7 07 a9 d6 38 c9    	movl   $0xc938d6a9,(%rdi)
  401fac:	c3                   	ret

0000000000401fad <addval_311>:
  401fad:	f3 0f 1e fa          	endbr64
  401fb1:	8d 87 09 ca 84 db    	lea    -0x247b35f7(%rdi),%eax
  401fb7:	c3                   	ret

0000000000401fb8 <getval_436>:
  401fb8:	f3 0f 1e fa          	endbr64
  401fbc:	b8 89 c1 18 c0       	mov    $0xc018c189,%eax
  401fc1:	c3                   	ret

0000000000401fc2 <addval_353>:
  401fc2:	f3 0f 1e fa          	endbr64
  401fc6:	8d 87 89 c1 00 c9    	lea    -0x36ff3e77(%rdi),%eax
  401fcc:	c3                   	ret

0000000000401fcd <addval_366>:
  401fcd:	f3 0f 1e fa          	endbr64
  401fd1:	8d 87 48 89 e0 c3    	lea    -0x3c1f76b8(%rdi),%eax
  401fd7:	c3                   	ret

0000000000401fd8 <addval_378>:
  401fd8:	f3 0f 1e fa          	endbr64
  401fdc:	8d 87 09 d6 38 d2    	lea    -0x2dc729f7(%rdi),%eax
  401fe2:	c3                   	ret

0000000000401fe3 <addval_483>:
  401fe3:	f3 0f 1e fa          	endbr64
  401fe7:	8d 87 48 89 e0 c1    	lea    -0x3e1f76b8(%rdi),%eax
  401fed:	c3                   	ret

0000000000401fee <getval_385>:
  401fee:	f3 0f 1e fa          	endbr64
  401ff2:	b8 48 c9 e0 c3       	mov    $0xc3e0c948,%eax
  401ff7:	c3                   	ret

0000000000401ff8 <setval_325>:
  401ff8:	f3 0f 1e fa          	endbr64
  401ffc:	c7 07 81 ca 84 db    	movl   $0xdb84ca81,(%rdi)
  402002:	c3                   	ret

0000000000402003 <setval_102>:
  402003:	f3 0f 1e fa          	endbr64
  402007:	c7 07 89 d6 90 c2    	movl   $0xc290d689,(%rdi)
  40200d:	c3                   	ret

000000000040200e <setval_321>:
  40200e:	f3 0f 1e fa          	endbr64
  402012:	c7 07 89 ca 91 90    	movl   $0x9091ca89,(%rdi)
  402018:	c3                   	ret

0000000000402019 <setval_449>:
  402019:	f3 0f 1e fa          	endbr64
  40201d:	c7 07 89 d6 c1 66    	movl   $0x66c1d689,(%rdi)
  402023:	c3                   	ret

0000000000402024 <getval_493>:
  402024:	f3 0f 1e fa          	endbr64
  402028:	b8 a9 d6 20 db       	mov    $0xdb20d6a9,%eax
  40202d:	c3                   	ret

000000000040202e <setval_478>:
  40202e:	f3 0f 1e fa          	endbr64
  402032:	c7 07 48 99 e0 90    	movl   $0x90e09948,(%rdi)
  402038:	c3                   	ret

0000000000402039 <getval_180>:
  402039:	f3 0f 1e fa          	endbr64
  40203d:	b8 4a 89 e0 c3       	mov    $0xc3e0894a,%eax
  402042:	c3                   	ret

0000000000402043 <addval_109>:
  402043:	f3 0f 1e fa          	endbr64
  402047:	8d 87 35 89 c1 92    	lea    -0x6d3e76cb(%rdi),%eax
  40204d:	c3                   	ret

000000000040204e <setval_374>:
  40204e:	f3 0f 1e fa          	endbr64
  402052:	c7 07 89 c1 94 c0    	movl   $0xc094c189,(%rdi)
  402058:	c3                   	ret

0000000000402059 <setval_181>:
  402059:	f3 0f 1e fa          	endbr64
  40205d:	c7 07 89 ca c3 e2    	movl   $0xe2c3ca89,(%rdi)
  402063:	c3                   	ret

0000000000402064 <setval_259>:
  402064:	f3 0f 1e fa          	endbr64
  402068:	c7 07 89 ca 30 c9    	movl   $0xc930ca89,(%rdi)
  40206e:	c3                   	ret

000000000040206f <getval_105>:
  40206f:	f3 0f 1e fa          	endbr64
  402073:	b8 89 ca 90 c3       	mov    $0xc390ca89,%eax
  402078:	c3                   	ret

0000000000402079 <addval_494>:
  402079:	f3 0f 1e fa          	endbr64
  40207d:	8d 87 89 c1 20 db    	lea    -0x24df3e77(%rdi),%eax
  402083:	c3                   	ret

0000000000402084 <setval_137>:
  402084:	f3 0f 1e fa          	endbr64
  402088:	c7 07 f2 89 d6 c3    	movl   $0xc3d689f2,(%rdi)
  40208e:	c3                   	ret

000000000040208f <getval_243>:
  40208f:	f3 0f 1e fa          	endbr64
  402093:	b8 5b 99 d6 c3       	mov    $0xc3d6995b,%eax
  402098:	c3                   	ret

0000000000402099 <getval_335>:
  402099:	f3 0f 1e fa          	endbr64
  40209d:	b8 48 89 e0 90       	mov    $0x90e08948,%eax
  4020a2:	c3                   	ret

00000000004020a3 <getval_115>:
  4020a3:	f3 0f 1e fa          	endbr64
  4020a7:	b8 68 89 e0 c3       	mov    $0xc3e08968,%eax
  4020ac:	c3                   	ret

00000000004020ad <addval_158>:
  4020ad:	f3 0f 1e fa          	endbr64
  4020b1:	8d 87 89 d6 84 c0    	lea    -0x3f7b2977(%rdi),%eax
  4020b7:	c3                   	ret

00000000004020b8 <getval_457>:
  4020b8:	f3 0f 1e fa          	endbr64
  4020bc:	b8 89 c1 94 c3       	mov    $0xc394c189,%eax
  4020c1:	c3                   	ret

00000000004020c2 <addval_400>:
  4020c2:	f3 0f 1e fa          	endbr64
  4020c6:	8d 87 89 ca 94 db    	lea    -0x246b3577(%rdi),%eax
  4020cc:	c3                   	ret

00000000004020cd <getval_202>:
  4020cd:	f3 0f 1e fa          	endbr64
  4020d1:	b8 48 89 e0 94       	mov    $0x94e08948,%eax
  4020d6:	c3                   	ret

00000000004020d7 <addval_293>:
  4020d7:	f3 0f 1e fa          	endbr64
  4020db:	8d 87 89 c1 c2 18    	lea    0x18c2c189(%rdi),%eax
  4020e1:	c3                   	ret

00000000004020e2 <setval_479>:
  4020e2:	f3 0f 1e fa          	endbr64
  4020e6:	c7 07 89 ca 28 db    	movl   $0xdb28ca89,(%rdi)
  4020ec:	c3                   	ret

00000000004020ed <end_farm>:
  4020ed:	f3 0f 1e fa          	endbr64
  4020f1:	b8 01 00 00 00       	mov    $0x1,%eax
  4020f6:	c3                   	ret

00000000004020f7 <save_char>:
  4020f7:	8b 05 47 60 00 00    	mov    0x6047(%rip),%eax        # 408144 <gets_cnt>
  4020fd:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  402102:	7f 4a                	jg     40214e <save_char+0x57>
  402104:	89 f9                	mov    %edi,%ecx
  402106:	c0 e9 04             	shr    $0x4,%cl
  402109:	8d 14 40             	lea    (%rax,%rax,2),%edx
  40210c:	4c 8d 05 ed 26 00 00 	lea    0x26ed(%rip),%r8        # 404800 <trans_char>
  402113:	83 e1 0f             	and    $0xf,%ecx
  402116:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  40211b:	48 8d 0d 1e 54 00 00 	lea    0x541e(%rip),%rcx        # 407540 <gets_buf>
  402122:	48 63 f2             	movslq %edx,%rsi
  402125:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  402129:	8d 72 01             	lea    0x1(%rdx),%esi
  40212c:	83 e7 0f             	and    $0xf,%edi
  40212f:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  402134:	48 63 f6             	movslq %esi,%rsi
  402137:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  40213b:	83 c2 02             	add    $0x2,%edx
  40213e:	48 63 d2             	movslq %edx,%rdx
  402141:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  402145:	83 c0 01             	add    $0x1,%eax
  402148:	89 05 f6 5f 00 00    	mov    %eax,0x5ff6(%rip)        # 408144 <gets_cnt>
  40214e:	c3                   	ret

000000000040214f <save_term>:
  40214f:	8b 05 ef 5f 00 00    	mov    0x5fef(%rip),%eax        # 408144 <gets_cnt>
  402155:	8d 04 40             	lea    (%rax,%rax,2),%eax
  402158:	48 98                	cltq
  40215a:	48 8d 15 df 53 00 00 	lea    0x53df(%rip),%rdx        # 407540 <gets_buf>
  402161:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  402165:	c3                   	ret

0000000000402166 <check_fail>:
  402166:	f3 0f 1e fa          	endbr64
  40216a:	50                   	push   %rax
  40216b:	58                   	pop    %rax
  40216c:	48 83 ec 08          	sub    $0x8,%rsp
  402170:	0f be 15 d1 5f 00 00 	movsbl 0x5fd1(%rip),%edx        # 408148 <target_prefix>
  402177:	4c 8d 05 c2 53 00 00 	lea    0x53c2(%rip),%r8        # 407540 <gets_buf>
  40217e:	8b 0d 9c 53 00 00    	mov    0x539c(%rip),%ecx        # 407520 <check_level>
  402184:	48 8d 35 a2 24 00 00 	lea    0x24a2(%rip),%rsi        # 40462d <_IO_stdin_used+0x62d>
  40218b:	bf 02 00 00 00       	mov    $0x2,%edi
  402190:	b8 00 00 00 00       	mov    $0x0,%eax
  402195:	e8 f6 ef ff ff       	call   401190 <__printf_chk@plt>
  40219a:	bf 01 00 00 00       	mov    $0x1,%edi
  40219f:	e8 3c f0 ff ff       	call   4011e0 <exit@plt>

00000000004021a4 <Gets>:
  4021a4:	f3 0f 1e fa          	endbr64
  4021a8:	41 54                	push   %r12
  4021aa:	55                   	push   %rbp
  4021ab:	53                   	push   %rbx
  4021ac:	49 89 fc             	mov    %rdi,%r12
  4021af:	c7 05 8b 5f 00 00 00 	movl   $0x0,0x5f8b(%rip)        # 408144 <gets_cnt>
  4021b6:	00 00 00 
  4021b9:	48 89 fb             	mov    %rdi,%rbx
  4021bc:	eb 11                	jmp    4021cf <Gets+0x2b>
  4021be:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  4021c2:	88 03                	mov    %al,(%rbx)
  4021c4:	0f b6 f8             	movzbl %al,%edi
  4021c7:	e8 2b ff ff ff       	call   4020f7 <save_char>
  4021cc:	48 89 eb             	mov    %rbp,%rbx
  4021cf:	48 8b 3d 42 53 00 00 	mov    0x5342(%rip),%rdi        # 407518 <infile>
  4021d6:	e8 35 f0 ff ff       	call   401210 <getc@plt>
  4021db:	83 f8 ff             	cmp    $0xffffffff,%eax
  4021de:	74 05                	je     4021e5 <Gets+0x41>
  4021e0:	83 f8 0a             	cmp    $0xa,%eax
  4021e3:	75 d9                	jne    4021be <Gets+0x1a>
  4021e5:	c6 03 00             	movb   $0x0,(%rbx)
  4021e8:	b8 00 00 00 00       	mov    $0x0,%eax
  4021ed:	e8 5d ff ff ff       	call   40214f <save_term>
  4021f2:	4c 89 e0             	mov    %r12,%rax
  4021f5:	5b                   	pop    %rbx
  4021f6:	5d                   	pop    %rbp
  4021f7:	41 5c                	pop    %r12
  4021f9:	c3                   	ret

00000000004021fa <notify_server>:
  4021fa:	f3 0f 1e fa          	endbr64
  4021fe:	55                   	push   %rbp
  4021ff:	53                   	push   %rbx
  402200:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
  402207:	ff 
  402208:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  40220f:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402214:	4c 39 dc             	cmp    %r11,%rsp
  402217:	75 ef                	jne    402208 <notify_server+0xe>
  402219:	48 83 ec 18          	sub    $0x18,%rsp
  40221d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402224:	00 00 
  402226:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  40222d:	00 
  40222e:	31 c0                	xor    %eax,%eax
  402230:	83 3d f9 52 00 00 00 	cmpl   $0x0,0x52f9(%rip)        # 407530 <is_checker>
  402237:	0f 85 c2 01 00 00    	jne    4023ff <notify_server+0x205>
  40223d:	89 fb                	mov    %edi,%ebx
  40223f:	81 3d fb 5e 00 00 9c 	cmpl   $0x1f9c,0x5efb(%rip)        # 408144 <gets_cnt>
  402246:	1f 00 00 
  402249:	0f 8f bd 00 00 00    	jg     40230c <notify_server+0x112>
  40224f:	0f be 05 f2 5e 00 00 	movsbl 0x5ef2(%rip),%eax        # 408148 <target_prefix>
  402256:	83 3d 23 52 00 00 00 	cmpl   $0x0,0x5223(%rip)        # 407480 <notify>
  40225d:	0f 84 c4 00 00 00    	je     402327 <notify_server+0x12d>
  402263:	8b 15 bf 52 00 00    	mov    0x52bf(%rip),%edx        # 407528 <authkey>
  402269:	85 db                	test   %ebx,%ebx
  40226b:	0f 84 c0 00 00 00    	je     402331 <notify_server+0x137>
  402271:	48 8d 2d cb 23 00 00 	lea    0x23cb(%rip),%rbp        # 404643 <_IO_stdin_used+0x643>
  402278:	48 89 e7             	mov    %rsp,%rdi
  40227b:	48 8d 0d be 52 00 00 	lea    0x52be(%rip),%rcx        # 407540 <gets_buf>
  402282:	51                   	push   %rcx
  402283:	56                   	push   %rsi
  402284:	50                   	push   %rax
  402285:	52                   	push   %rdx
  402286:	49 89 e9             	mov    %rbp,%r9
  402289:	44 8b 05 a0 4e 00 00 	mov    0x4ea0(%rip),%r8d        # 407130 <target_id>
  402290:	48 8d 0d b6 23 00 00 	lea    0x23b6(%rip),%rcx        # 40464d <_IO_stdin_used+0x64d>
  402297:	ba 00 20 00 00       	mov    $0x2000,%edx
  40229c:	be 02 00 00 00       	mov    $0x2,%esi
  4022a1:	b8 00 00 00 00       	mov    $0x0,%eax
  4022a6:	e8 75 ef ff ff       	call   401220 <__sprintf_chk@plt>
  4022ab:	48 83 c4 20          	add    $0x20,%rsp
  4022af:	83 3d ca 51 00 00 00 	cmpl   $0x0,0x51ca(%rip)        # 407480 <notify>
  4022b6:	0f 84 ba 00 00 00    	je     402376 <notify_server+0x17c>
  4022bc:	48 89 e1             	mov    %rsp,%rcx
  4022bf:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  4022c6:	00 
  4022c7:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4022cd:	48 8b 15 74 4e 00 00 	mov    0x4e74(%rip),%rdx        # 407148 <lab>
  4022d4:	48 8b 35 75 4e 00 00 	mov    0x4e75(%rip),%rsi        # 407150 <course>
  4022db:	48 8b 3d 5e 4e 00 00 	mov    0x4e5e(%rip),%rdi        # 407140 <user_id>
  4022e2:	e8 4e 12 00 00       	call   403535 <driver_post>
  4022e7:	85 c0                	test   %eax,%eax
  4022e9:	78 52                	js     40233d <notify_server+0x143>
  4022eb:	85 db                	test   %ebx,%ebx
  4022ed:	74 76                	je     402365 <notify_server+0x16b>
  4022ef:	48 8d 3d 8a 1f 00 00 	lea    0x1f8a(%rip),%rdi        # 404280 <_IO_stdin_used+0x280>
  4022f6:	e8 85 ed ff ff       	call   401080 <puts@plt>
  4022fb:	48 8d 3d 73 23 00 00 	lea    0x2373(%rip),%rdi        # 404675 <_IO_stdin_used+0x675>
  402302:	e8 79 ed ff ff       	call   401080 <puts@plt>
  402307:	e9 f3 00 00 00       	jmp    4023ff <notify_server+0x205>
  40230c:	48 8d 35 3d 1f 00 00 	lea    0x1f3d(%rip),%rsi        # 404250 <_IO_stdin_used+0x250>
  402313:	bf 02 00 00 00       	mov    $0x2,%edi
  402318:	e8 73 ee ff ff       	call   401190 <__printf_chk@plt>
  40231d:	bf 01 00 00 00       	mov    $0x1,%edi
  402322:	e8 b9 ee ff ff       	call   4011e0 <exit@plt>
  402327:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  40232c:	e9 38 ff ff ff       	jmp    402269 <notify_server+0x6f>
  402331:	48 8d 2d 10 23 00 00 	lea    0x2310(%rip),%rbp        # 404648 <_IO_stdin_used+0x648>
  402338:	e9 3b ff ff ff       	jmp    402278 <notify_server+0x7e>
  40233d:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  402344:	00 
  402345:	48 8d 35 1d 23 00 00 	lea    0x231d(%rip),%rsi        # 404669 <_IO_stdin_used+0x669>
  40234c:	bf 02 00 00 00       	mov    $0x2,%edi
  402351:	b8 00 00 00 00       	mov    $0x0,%eax
  402356:	e8 35 ee ff ff       	call   401190 <__printf_chk@plt>
  40235b:	bf 01 00 00 00       	mov    $0x1,%edi
  402360:	e8 7b ee ff ff       	call   4011e0 <exit@plt>
  402365:	48 8d 3d 13 23 00 00 	lea    0x2313(%rip),%rdi        # 40467f <_IO_stdin_used+0x67f>
  40236c:	e8 0f ed ff ff       	call   401080 <puts@plt>
  402371:	e9 89 00 00 00       	jmp    4023ff <notify_server+0x205>
  402376:	48 89 ea             	mov    %rbp,%rdx
  402379:	48 8d 35 38 1f 00 00 	lea    0x1f38(%rip),%rsi        # 4042b8 <_IO_stdin_used+0x2b8>
  402380:	bf 02 00 00 00       	mov    $0x2,%edi
  402385:	b8 00 00 00 00       	mov    $0x0,%eax
  40238a:	e8 01 ee ff ff       	call   401190 <__printf_chk@plt>
  40238f:	48 8b 15 aa 4d 00 00 	mov    0x4daa(%rip),%rdx        # 407140 <user_id>
  402396:	48 8d 35 e9 22 00 00 	lea    0x22e9(%rip),%rsi        # 404686 <_IO_stdin_used+0x686>
  40239d:	bf 02 00 00 00       	mov    $0x2,%edi
  4023a2:	b8 00 00 00 00       	mov    $0x0,%eax
  4023a7:	e8 e4 ed ff ff       	call   401190 <__printf_chk@plt>
  4023ac:	48 8b 15 9d 4d 00 00 	mov    0x4d9d(%rip),%rdx        # 407150 <course>
  4023b3:	48 8d 35 d9 22 00 00 	lea    0x22d9(%rip),%rsi        # 404693 <_IO_stdin_used+0x693>
  4023ba:	bf 02 00 00 00       	mov    $0x2,%edi
  4023bf:	b8 00 00 00 00       	mov    $0x0,%eax
  4023c4:	e8 c7 ed ff ff       	call   401190 <__printf_chk@plt>
  4023c9:	48 8b 15 78 4d 00 00 	mov    0x4d78(%rip),%rdx        # 407148 <lab>
  4023d0:	48 8d 35 c8 22 00 00 	lea    0x22c8(%rip),%rsi        # 40469f <_IO_stdin_used+0x69f>
  4023d7:	bf 02 00 00 00       	mov    $0x2,%edi
  4023dc:	b8 00 00 00 00       	mov    $0x0,%eax
  4023e1:	e8 aa ed ff ff       	call   401190 <__printf_chk@plt>
  4023e6:	48 89 e2             	mov    %rsp,%rdx
  4023e9:	48 8d 35 b8 22 00 00 	lea    0x22b8(%rip),%rsi        # 4046a8 <_IO_stdin_used+0x6a8>
  4023f0:	bf 02 00 00 00       	mov    $0x2,%edi
  4023f5:	b8 00 00 00 00       	mov    $0x0,%eax
  4023fa:	e8 91 ed ff ff       	call   401190 <__printf_chk@plt>
  4023ff:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  402406:	00 
  402407:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40240e:	00 00 
  402410:	75 0a                	jne    40241c <notify_server+0x222>
  402412:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  402419:	5b                   	pop    %rbx
  40241a:	5d                   	pop    %rbp
  40241b:	c3                   	ret
  40241c:	e8 72 02 00 00       	call   402693 <__stack_chk_fail>

0000000000402421 <validate>:
  402421:	f3 0f 1e fa          	endbr64
  402425:	53                   	push   %rbx
  402426:	89 fb                	mov    %edi,%ebx
  402428:	83 3d 01 51 00 00 00 	cmpl   $0x0,0x5101(%rip)        # 407530 <is_checker>
  40242f:	74 79                	je     4024aa <validate+0x89>
  402431:	39 3d ed 50 00 00    	cmp    %edi,0x50ed(%rip)        # 407524 <vlevel>
  402437:	75 39                	jne    402472 <validate+0x51>
  402439:	8b 15 e1 50 00 00    	mov    0x50e1(%rip),%edx        # 407520 <check_level>
  40243f:	39 fa                	cmp    %edi,%edx
  402441:	75 45                	jne    402488 <validate+0x67>
  402443:	0f be 0d fe 5c 00 00 	movsbl 0x5cfe(%rip),%ecx        # 408148 <target_prefix>
  40244a:	4c 8d 0d ef 50 00 00 	lea    0x50ef(%rip),%r9        # 407540 <gets_buf>
  402451:	41 89 f8             	mov    %edi,%r8d
  402454:	8b 15 ce 50 00 00    	mov    0x50ce(%rip),%edx        # 407528 <authkey>
  40245a:	48 8d 35 a7 1e 00 00 	lea    0x1ea7(%rip),%rsi        # 404308 <_IO_stdin_used+0x308>
  402461:	bf 02 00 00 00       	mov    $0x2,%edi
  402466:	b8 00 00 00 00       	mov    $0x0,%eax
  40246b:	e8 20 ed ff ff       	call   401190 <__printf_chk@plt>
  402470:	5b                   	pop    %rbx
  402471:	c3                   	ret
  402472:	48 8d 3d 3b 22 00 00 	lea    0x223b(%rip),%rdi        # 4046b4 <_IO_stdin_used+0x6b4>
  402479:	e8 02 ec ff ff       	call   401080 <puts@plt>
  40247e:	b8 00 00 00 00       	mov    $0x0,%eax
  402483:	e8 de fc ff ff       	call   402166 <check_fail>
  402488:	89 f9                	mov    %edi,%ecx
  40248a:	48 8d 35 4f 1e 00 00 	lea    0x1e4f(%rip),%rsi        # 4042e0 <_IO_stdin_used+0x2e0>
  402491:	bf 02 00 00 00       	mov    $0x2,%edi
  402496:	b8 00 00 00 00       	mov    $0x0,%eax
  40249b:	e8 f0 ec ff ff       	call   401190 <__printf_chk@plt>
  4024a0:	b8 00 00 00 00       	mov    $0x0,%eax
  4024a5:	e8 bc fc ff ff       	call   402166 <check_fail>
  4024aa:	39 3d 74 50 00 00    	cmp    %edi,0x5074(%rip)        # 407524 <vlevel>
  4024b0:	74 1a                	je     4024cc <validate+0xab>
  4024b2:	48 8d 3d fb 21 00 00 	lea    0x21fb(%rip),%rdi        # 4046b4 <_IO_stdin_used+0x6b4>
  4024b9:	e8 c2 eb ff ff       	call   401080 <puts@plt>
  4024be:	89 de                	mov    %ebx,%esi
  4024c0:	bf 00 00 00 00       	mov    $0x0,%edi
  4024c5:	e8 30 fd ff ff       	call   4021fa <notify_server>
  4024ca:	eb a4                	jmp    402470 <validate+0x4f>
  4024cc:	0f be 0d 75 5c 00 00 	movsbl 0x5c75(%rip),%ecx        # 408148 <target_prefix>
  4024d3:	89 fa                	mov    %edi,%edx
  4024d5:	48 8d 35 54 1e 00 00 	lea    0x1e54(%rip),%rsi        # 404330 <_IO_stdin_used+0x330>
  4024dc:	bf 02 00 00 00       	mov    $0x2,%edi
  4024e1:	b8 00 00 00 00       	mov    $0x0,%eax
  4024e6:	e8 a5 ec ff ff       	call   401190 <__printf_chk@plt>
  4024eb:	89 de                	mov    %ebx,%esi
  4024ed:	bf 01 00 00 00       	mov    $0x1,%edi
  4024f2:	e8 03 fd ff ff       	call   4021fa <notify_server>
  4024f7:	e9 74 ff ff ff       	jmp    402470 <validate+0x4f>

00000000004024fc <fail>:
  4024fc:	f3 0f 1e fa          	endbr64
  402500:	48 83 ec 08          	sub    $0x8,%rsp
  402504:	83 3d 25 50 00 00 00 	cmpl   $0x0,0x5025(%rip)        # 407530 <is_checker>
  40250b:	75 11                	jne    40251e <fail+0x22>
  40250d:	89 fe                	mov    %edi,%esi
  40250f:	bf 00 00 00 00       	mov    $0x0,%edi
  402514:	e8 e1 fc ff ff       	call   4021fa <notify_server>
  402519:	48 83 c4 08          	add    $0x8,%rsp
  40251d:	c3                   	ret
  40251e:	b8 00 00 00 00       	mov    $0x0,%eax
  402523:	e8 3e fc ff ff       	call   402166 <check_fail>

0000000000402528 <bushandler>:
  402528:	f3 0f 1e fa          	endbr64
  40252c:	50                   	push   %rax
  40252d:	58                   	pop    %rax
  40252e:	48 83 ec 08          	sub    $0x8,%rsp
  402532:	83 3d f7 4f 00 00 00 	cmpl   $0x0,0x4ff7(%rip)        # 407530 <is_checker>
  402539:	74 16                	je     402551 <bushandler+0x29>
  40253b:	48 8d 3d 90 21 00 00 	lea    0x2190(%rip),%rdi        # 4046d2 <_IO_stdin_used+0x6d2>
  402542:	e8 39 eb ff ff       	call   401080 <puts@plt>
  402547:	b8 00 00 00 00       	mov    $0x0,%eax
  40254c:	e8 15 fc ff ff       	call   402166 <check_fail>
  402551:	48 8d 3d 10 1e 00 00 	lea    0x1e10(%rip),%rdi        # 404368 <_IO_stdin_used+0x368>
  402558:	e8 23 eb ff ff       	call   401080 <puts@plt>
  40255d:	48 8d 3d 78 21 00 00 	lea    0x2178(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  402564:	e8 17 eb ff ff       	call   401080 <puts@plt>
  402569:	be 00 00 00 00       	mov    $0x0,%esi
  40256e:	bf 00 00 00 00       	mov    $0x0,%edi
  402573:	e8 82 fc ff ff       	call   4021fa <notify_server>
  402578:	bf 01 00 00 00       	mov    $0x1,%edi
  40257d:	e8 5e ec ff ff       	call   4011e0 <exit@plt>

0000000000402582 <seghandler>:
  402582:	f3 0f 1e fa          	endbr64
  402586:	50                   	push   %rax
  402587:	58                   	pop    %rax
  402588:	48 83 ec 08          	sub    $0x8,%rsp
  40258c:	83 3d 9d 4f 00 00 00 	cmpl   $0x0,0x4f9d(%rip)        # 407530 <is_checker>
  402593:	74 16                	je     4025ab <seghandler+0x29>
  402595:	48 8d 3d 56 21 00 00 	lea    0x2156(%rip),%rdi        # 4046f2 <_IO_stdin_used+0x6f2>
  40259c:	e8 df ea ff ff       	call   401080 <puts@plt>
  4025a1:	b8 00 00 00 00       	mov    $0x0,%eax
  4025a6:	e8 bb fb ff ff       	call   402166 <check_fail>
  4025ab:	48 8d 3d d6 1d 00 00 	lea    0x1dd6(%rip),%rdi        # 404388 <_IO_stdin_used+0x388>
  4025b2:	e8 c9 ea ff ff       	call   401080 <puts@plt>
  4025b7:	48 8d 3d 1e 21 00 00 	lea    0x211e(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  4025be:	e8 bd ea ff ff       	call   401080 <puts@plt>
  4025c3:	be 00 00 00 00       	mov    $0x0,%esi
  4025c8:	bf 00 00 00 00       	mov    $0x0,%edi
  4025cd:	e8 28 fc ff ff       	call   4021fa <notify_server>
  4025d2:	bf 01 00 00 00       	mov    $0x1,%edi
  4025d7:	e8 04 ec ff ff       	call   4011e0 <exit@plt>

00000000004025dc <illegalhandler>:
  4025dc:	f3 0f 1e fa          	endbr64
  4025e0:	50                   	push   %rax
  4025e1:	58                   	pop    %rax
  4025e2:	48 83 ec 08          	sub    $0x8,%rsp
  4025e6:	83 3d 43 4f 00 00 00 	cmpl   $0x0,0x4f43(%rip)        # 407530 <is_checker>
  4025ed:	74 16                	je     402605 <illegalhandler+0x29>
  4025ef:	48 8d 3d 0f 21 00 00 	lea    0x210f(%rip),%rdi        # 404705 <_IO_stdin_used+0x705>
  4025f6:	e8 85 ea ff ff       	call   401080 <puts@plt>
  4025fb:	b8 00 00 00 00       	mov    $0x0,%eax
  402600:	e8 61 fb ff ff       	call   402166 <check_fail>
  402605:	48 8d 3d a4 1d 00 00 	lea    0x1da4(%rip),%rdi        # 4043b0 <_IO_stdin_used+0x3b0>
  40260c:	e8 6f ea ff ff       	call   401080 <puts@plt>
  402611:	48 8d 3d c4 20 00 00 	lea    0x20c4(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  402618:	e8 63 ea ff ff       	call   401080 <puts@plt>
  40261d:	be 00 00 00 00       	mov    $0x0,%esi
  402622:	bf 00 00 00 00       	mov    $0x0,%edi
  402627:	e8 ce fb ff ff       	call   4021fa <notify_server>
  40262c:	bf 01 00 00 00       	mov    $0x1,%edi
  402631:	e8 aa eb ff ff       	call   4011e0 <exit@plt>

0000000000402636 <sigalrmhandler>:
  402636:	f3 0f 1e fa          	endbr64
  40263a:	50                   	push   %rax
  40263b:	58                   	pop    %rax
  40263c:	48 83 ec 08          	sub    $0x8,%rsp
  402640:	83 3d e9 4e 00 00 00 	cmpl   $0x0,0x4ee9(%rip)        # 407530 <is_checker>
  402647:	74 16                	je     40265f <sigalrmhandler+0x29>
  402649:	48 8d 3d c9 20 00 00 	lea    0x20c9(%rip),%rdi        # 404719 <_IO_stdin_used+0x719>
  402650:	e8 2b ea ff ff       	call   401080 <puts@plt>
  402655:	b8 00 00 00 00       	mov    $0x0,%eax
  40265a:	e8 07 fb ff ff       	call   402166 <check_fail>
  40265f:	ba 02 00 00 00       	mov    $0x2,%edx
  402664:	48 8d 35 75 1d 00 00 	lea    0x1d75(%rip),%rsi        # 4043e0 <_IO_stdin_used+0x3e0>
  40266b:	bf 02 00 00 00       	mov    $0x2,%edi
  402670:	b8 00 00 00 00       	mov    $0x0,%eax
  402675:	e8 16 eb ff ff       	call   401190 <__printf_chk@plt>
  40267a:	be 00 00 00 00       	mov    $0x0,%esi
  40267f:	bf 00 00 00 00       	mov    $0x0,%edi
  402684:	e8 71 fb ff ff       	call   4021fa <notify_server>
  402689:	bf 01 00 00 00       	mov    $0x1,%edi
  40268e:	e8 4d eb ff ff       	call   4011e0 <exit@plt>

0000000000402693 <__stack_chk_fail>:
  402693:	f3 0f 1e fa          	endbr64
  402697:	50                   	push   %rax
  402698:	58                   	pop    %rax
  402699:	48 83 ec 08          	sub    $0x8,%rsp
  40269d:	83 3d 8c 4e 00 00 00 	cmpl   $0x0,0x4e8c(%rip)        # 407530 <is_checker>
  4026a4:	74 16                	je     4026bc <__stack_chk_fail+0x29>
  4026a6:	48 8d 3d 74 20 00 00 	lea    0x2074(%rip),%rdi        # 404721 <_IO_stdin_used+0x721>
  4026ad:	e8 ce e9 ff ff       	call   401080 <puts@plt>
  4026b2:	b8 00 00 00 00       	mov    $0x0,%eax
  4026b7:	e8 aa fa ff ff       	call   402166 <check_fail>
  4026bc:	48 8d 3d 55 1d 00 00 	lea    0x1d55(%rip),%rdi        # 404418 <_IO_stdin_used+0x418>
  4026c3:	e8 b8 e9 ff ff       	call   401080 <puts@plt>
  4026c8:	48 8d 3d 0d 20 00 00 	lea    0x200d(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  4026cf:	e8 ac e9 ff ff       	call   401080 <puts@plt>
  4026d4:	be 00 00 00 00       	mov    $0x0,%esi
  4026d9:	bf 00 00 00 00       	mov    $0x0,%edi
  4026de:	e8 17 fb ff ff       	call   4021fa <notify_server>
  4026e3:	bf 01 00 00 00       	mov    $0x1,%edi
  4026e8:	e8 f3 ea ff ff       	call   4011e0 <exit@plt>

00000000004026ed <launch>:
  4026ed:	f3 0f 1e fa          	endbr64
  4026f1:	55                   	push   %rbp
  4026f2:	48 89 e5             	mov    %rsp,%rbp
  4026f5:	53                   	push   %rbx
  4026f6:	48 83 ec 18          	sub    $0x18,%rsp
  4026fa:	48 89 fa             	mov    %rdi,%rdx
  4026fd:	89 f3                	mov    %esi,%ebx
  4026ff:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402706:	00 00 
  402708:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  40270c:	31 c0                	xor    %eax,%eax
  40270e:	48 8d 47 17          	lea    0x17(%rdi),%rax
  402712:	48 89 c6             	mov    %rax,%rsi
  402715:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
  402719:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  40271f:	48 89 e1             	mov    %rsp,%rcx
  402722:	48 29 c1             	sub    %rax,%rcx
  402725:	48 39 cc             	cmp    %rcx,%rsp
  402728:	74 12                	je     40273c <launch+0x4f>
  40272a:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402731:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  402738:	00 00 
  40273a:	eb e9                	jmp    402725 <launch+0x38>
  40273c:	48 89 f0             	mov    %rsi,%rax
  40273f:	25 ff 0f 00 00       	and    $0xfff,%eax
  402744:	48 29 c4             	sub    %rax,%rsp
  402747:	48 85 c0             	test   %rax,%rax
  40274a:	74 06                	je     402752 <launch+0x65>
  40274c:	48 83 4c 04 f8 00    	orq    $0x0,-0x8(%rsp,%rax,1)
  402752:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  402757:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  40275b:	48 89 d1             	mov    %rdx,%rcx
  40275e:	be f4 00 00 00       	mov    $0xf4,%esi
  402763:	e8 68 ea ff ff       	call   4011d0 <__memset_chk@plt>
  402768:	48 8b 05 31 4d 00 00 	mov    0x4d31(%rip),%rax        # 4074a0 <stdin@GLIBC_2.2.5>
  40276f:	48 39 05 a2 4d 00 00 	cmp    %rax,0x4da2(%rip)        # 407518 <infile>
  402776:	74 42                	je     4027ba <launch+0xcd>
  402778:	c7 05 a2 4d 00 00 00 	movl   $0x0,0x4da2(%rip)        # 407524 <vlevel>
  40277f:	00 00 00 
  402782:	85 db                	test   %ebx,%ebx
  402784:	75 4c                	jne    4027d2 <launch+0xe5>
  402786:	b8 00 00 00 00       	mov    $0x0,%eax
  40278b:	e8 c6 f6 ff ff       	call   401e56 <test>
  402790:	83 3d 99 4d 00 00 00 	cmpl   $0x0,0x4d99(%rip)        # 407530 <is_checker>
  402797:	75 45                	jne    4027de <launch+0xf1>
  402799:	48 8d 3d a8 1f 00 00 	lea    0x1fa8(%rip),%rdi        # 404748 <_IO_stdin_used+0x748>
  4027a0:	e8 db e8 ff ff       	call   401080 <puts@plt>
  4027a5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4027a9:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4027b0:	00 00 
  4027b2:	75 40                	jne    4027f4 <launch+0x107>
  4027b4:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  4027b8:	c9                   	leave
  4027b9:	c3                   	ret
  4027ba:	48 8d 35 6f 1f 00 00 	lea    0x1f6f(%rip),%rsi        # 404730 <_IO_stdin_used+0x730>
  4027c1:	bf 02 00 00 00       	mov    $0x2,%edi
  4027c6:	b8 00 00 00 00       	mov    $0x0,%eax
  4027cb:	e8 c0 e9 ff ff       	call   401190 <__printf_chk@plt>
  4027d0:	eb a6                	jmp    402778 <launch+0x8b>
  4027d2:	b8 00 00 00 00       	mov    $0x0,%eax
  4027d7:	e8 a9 f6 ff ff       	call   401e85 <test2>
  4027dc:	eb b2                	jmp    402790 <launch+0xa3>
  4027de:	48 8d 3d 58 1f 00 00 	lea    0x1f58(%rip),%rdi        # 40473d <_IO_stdin_used+0x73d>
  4027e5:	e8 96 e8 ff ff       	call   401080 <puts@plt>
  4027ea:	b8 00 00 00 00       	mov    $0x0,%eax
  4027ef:	e8 72 f9 ff ff       	call   402166 <check_fail>
  4027f4:	e8 9a fe ff ff       	call   402693 <__stack_chk_fail>

00000000004027f9 <stable_launch>:
  4027f9:	f3 0f 1e fa          	endbr64
  4027fd:	55                   	push   %rbp
  4027fe:	53                   	push   %rbx
  4027ff:	48 83 ec 08          	sub    $0x8,%rsp
  402803:	89 f5                	mov    %esi,%ebp
  402805:	48 89 3d 04 4d 00 00 	mov    %rdi,0x4d04(%rip)        # 407510 <global_offset>
  40280c:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  402812:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402818:	b9 32 01 00 00       	mov    $0x132,%ecx
  40281d:	ba 07 00 00 00       	mov    $0x7,%edx
  402822:	be 00 00 10 00       	mov    $0x100000,%esi
  402827:	bf 00 60 58 55       	mov    $0x55586000,%edi
  40282c:	e8 7f e8 ff ff       	call   4010b0 <mmap@plt>
  402831:	48 89 c3             	mov    %rax,%rbx
  402834:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  40283a:	75 4a                	jne    402886 <stable_launch+0x8d>
  40283c:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  402843:	48 89 15 be 4c 00 00 	mov    %rdx,0x4cbe(%rip)        # 407508 <stack_top>
  40284a:	48 89 e0             	mov    %rsp,%rax
  40284d:	48 89 d4             	mov    %rdx,%rsp
  402850:	48 89 c2             	mov    %rax,%rdx
  402853:	48 89 15 a6 4c 00 00 	mov    %rdx,0x4ca6(%rip)        # 407500 <global_save_stack>
  40285a:	89 ee                	mov    %ebp,%esi
  40285c:	48 8b 3d ad 4c 00 00 	mov    0x4cad(%rip),%rdi        # 407510 <global_offset>
  402863:	e8 85 fe ff ff       	call   4026ed <launch>
  402868:	48 8b 05 91 4c 00 00 	mov    0x4c91(%rip),%rax        # 407500 <global_save_stack>
  40286f:	48 89 c4             	mov    %rax,%rsp
  402872:	be 00 00 10 00       	mov    $0x100000,%esi
  402877:	48 89 df             	mov    %rbx,%rdi
  40287a:	e8 01 e9 ff ff       	call   401180 <munmap@plt>
  40287f:	48 83 c4 08          	add    $0x8,%rsp
  402883:	5b                   	pop    %rbx
  402884:	5d                   	pop    %rbp
  402885:	c3                   	ret
  402886:	be 00 00 10 00       	mov    $0x100000,%esi
  40288b:	48 89 c7             	mov    %rax,%rdi
  40288e:	e8 ed e8 ff ff       	call   401180 <munmap@plt>
  402893:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  402898:	48 8d 15 a1 1b 00 00 	lea    0x1ba1(%rip),%rdx        # 404440 <_IO_stdin_used+0x440>
  40289f:	be 02 00 00 00       	mov    $0x2,%esi
  4028a4:	48 8b 3d 35 4c 00 00 	mov    0x4c35(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  4028ab:	b8 00 00 00 00       	mov    $0x0,%eax
  4028b0:	e8 4b e9 ff ff       	call   401200 <__fprintf_chk@plt>
  4028b5:	bf 01 00 00 00       	mov    $0x1,%edi
  4028ba:	e8 21 e9 ff ff       	call   4011e0 <exit@plt>

00000000004028bf <rio_readinitb>:
  4028bf:	89 37                	mov    %esi,(%rdi)
  4028c1:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  4028c8:	48 8d 47 10          	lea    0x10(%rdi),%rax
  4028cc:	48 89 47 08          	mov    %rax,0x8(%rdi)
  4028d0:	c3                   	ret

00000000004028d1 <sigalrm_handler>:
  4028d1:	f3 0f 1e fa          	endbr64
  4028d5:	50                   	push   %rax
  4028d6:	58                   	pop    %rax
  4028d7:	48 83 ec 08          	sub    $0x8,%rsp
  4028db:	b9 00 00 00 00       	mov    $0x0,%ecx
  4028e0:	48 8d 15 81 1b 00 00 	lea    0x1b81(%rip),%rdx        # 404468 <_IO_stdin_used+0x468>
  4028e7:	be 02 00 00 00       	mov    $0x2,%esi
  4028ec:	48 8b 3d ed 4b 00 00 	mov    0x4bed(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  4028f3:	b8 00 00 00 00       	mov    $0x0,%eax
  4028f8:	e8 03 e9 ff ff       	call   401200 <__fprintf_chk@plt>
  4028fd:	bf 01 00 00 00       	mov    $0x1,%edi
  402902:	e8 d9 e8 ff ff       	call   4011e0 <exit@plt>

0000000000402907 <rio_writen>:
  402907:	41 55                	push   %r13
  402909:	41 54                	push   %r12
  40290b:	55                   	push   %rbp
  40290c:	53                   	push   %rbx
  40290d:	48 83 ec 08          	sub    $0x8,%rsp
  402911:	41 89 fc             	mov    %edi,%r12d
  402914:	48 89 f5             	mov    %rsi,%rbp
  402917:	49 89 d5             	mov    %rdx,%r13
  40291a:	48 89 d3             	mov    %rdx,%rbx
  40291d:	eb 06                	jmp    402925 <rio_writen+0x1e>
  40291f:	48 29 c3             	sub    %rax,%rbx
  402922:	48 01 c5             	add    %rax,%rbp
  402925:	48 85 db             	test   %rbx,%rbx
  402928:	74 24                	je     40294e <rio_writen+0x47>
  40292a:	48 89 da             	mov    %rbx,%rdx
  40292d:	48 89 ee             	mov    %rbp,%rsi
  402930:	44 89 e7             	mov    %r12d,%edi
  402933:	e8 58 e7 ff ff       	call   401090 <write@plt>
  402938:	48 85 c0             	test   %rax,%rax
  40293b:	7f e2                	jg     40291f <rio_writen+0x18>
  40293d:	e8 ee e6 ff ff       	call   401030 <__errno_location@plt>
  402942:	83 38 04             	cmpl   $0x4,(%rax)
  402945:	75 15                	jne    40295c <rio_writen+0x55>
  402947:	b8 00 00 00 00       	mov    $0x0,%eax
  40294c:	eb d1                	jmp    40291f <rio_writen+0x18>
  40294e:	4c 89 e8             	mov    %r13,%rax
  402951:	48 83 c4 08          	add    $0x8,%rsp
  402955:	5b                   	pop    %rbx
  402956:	5d                   	pop    %rbp
  402957:	41 5c                	pop    %r12
  402959:	41 5d                	pop    %r13
  40295b:	c3                   	ret
  40295c:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402963:	eb ec                	jmp    402951 <rio_writen+0x4a>

0000000000402965 <rio_read>:
  402965:	41 55                	push   %r13
  402967:	41 54                	push   %r12
  402969:	55                   	push   %rbp
  40296a:	53                   	push   %rbx
  40296b:	48 83 ec 08          	sub    $0x8,%rsp
  40296f:	48 89 fb             	mov    %rdi,%rbx
  402972:	49 89 f5             	mov    %rsi,%r13
  402975:	49 89 d4             	mov    %rdx,%r12
  402978:	eb 0a                	jmp    402984 <rio_read+0x1f>
  40297a:	e8 b1 e6 ff ff       	call   401030 <__errno_location@plt>
  40297f:	83 38 04             	cmpl   $0x4,(%rax)
  402982:	75 5f                	jne    4029e3 <rio_read+0x7e>
  402984:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402987:	85 ed                	test   %ebp,%ebp
  402989:	7f 22                	jg     4029ad <rio_read+0x48>
  40298b:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  40298f:	8b 3b                	mov    (%rbx),%edi
  402991:	ba 00 20 00 00       	mov    $0x2000,%edx
  402996:	48 89 ee             	mov    %rbp,%rsi
  402999:	e8 42 e7 ff ff       	call   4010e0 <read@plt>
  40299e:	89 43 04             	mov    %eax,0x4(%rbx)
  4029a1:	85 c0                	test   %eax,%eax
  4029a3:	78 d5                	js     40297a <rio_read+0x15>
  4029a5:	74 45                	je     4029ec <rio_read+0x87>
  4029a7:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  4029ab:	eb d7                	jmp    402984 <rio_read+0x1f>
  4029ad:	89 e8                	mov    %ebp,%eax
  4029af:	4c 39 e0             	cmp    %r12,%rax
  4029b2:	72 03                	jb     4029b7 <rio_read+0x52>
  4029b4:	44 89 e5             	mov    %r12d,%ebp
  4029b7:	4c 63 e5             	movslq %ebp,%r12
  4029ba:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  4029be:	4c 89 e2             	mov    %r12,%rdx
  4029c1:	4c 89 ef             	mov    %r13,%rdi
  4029c4:	e8 77 e7 ff ff       	call   401140 <memcpy@plt>
  4029c9:	4c 01 63 08          	add    %r12,0x8(%rbx)
  4029cd:	8b 43 04             	mov    0x4(%rbx),%eax
  4029d0:	29 e8                	sub    %ebp,%eax
  4029d2:	89 43 04             	mov    %eax,0x4(%rbx)
  4029d5:	4c 89 e0             	mov    %r12,%rax
  4029d8:	48 83 c4 08          	add    $0x8,%rsp
  4029dc:	5b                   	pop    %rbx
  4029dd:	5d                   	pop    %rbp
  4029de:	41 5c                	pop    %r12
  4029e0:	41 5d                	pop    %r13
  4029e2:	c3                   	ret
  4029e3:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4029ea:	eb ec                	jmp    4029d8 <rio_read+0x73>
  4029ec:	b8 00 00 00 00       	mov    $0x0,%eax
  4029f1:	eb e5                	jmp    4029d8 <rio_read+0x73>

00000000004029f3 <rio_readlineb>:
  4029f3:	41 55                	push   %r13
  4029f5:	41 54                	push   %r12
  4029f7:	55                   	push   %rbp
  4029f8:	53                   	push   %rbx
  4029f9:	48 83 ec 18          	sub    $0x18,%rsp
  4029fd:	49 89 fd             	mov    %rdi,%r13
  402a00:	48 89 f5             	mov    %rsi,%rbp
  402a03:	49 89 d4             	mov    %rdx,%r12
  402a06:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402a0d:	00 00 
  402a0f:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402a14:	31 c0                	xor    %eax,%eax
  402a16:	bb 01 00 00 00       	mov    $0x1,%ebx
  402a1b:	eb 18                	jmp    402a35 <rio_readlineb+0x42>
  402a1d:	85 c0                	test   %eax,%eax
  402a1f:	75 65                	jne    402a86 <rio_readlineb+0x93>
  402a21:	48 83 fb 01          	cmp    $0x1,%rbx
  402a25:	75 3d                	jne    402a64 <rio_readlineb+0x71>
  402a27:	b8 00 00 00 00       	mov    $0x0,%eax
  402a2c:	eb 3d                	jmp    402a6b <rio_readlineb+0x78>
  402a2e:	48 83 c3 01          	add    $0x1,%rbx
  402a32:	48 89 d5             	mov    %rdx,%rbp
  402a35:	4c 39 e3             	cmp    %r12,%rbx
  402a38:	73 2a                	jae    402a64 <rio_readlineb+0x71>
  402a3a:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  402a3f:	ba 01 00 00 00       	mov    $0x1,%edx
  402a44:	4c 89 ef             	mov    %r13,%rdi
  402a47:	e8 19 ff ff ff       	call   402965 <rio_read>
  402a4c:	83 f8 01             	cmp    $0x1,%eax
  402a4f:	75 cc                	jne    402a1d <rio_readlineb+0x2a>
  402a51:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402a55:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
  402a5a:	88 45 00             	mov    %al,0x0(%rbp)
  402a5d:	3c 0a                	cmp    $0xa,%al
  402a5f:	75 cd                	jne    402a2e <rio_readlineb+0x3b>
  402a61:	48 89 d5             	mov    %rdx,%rbp
  402a64:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402a68:	48 89 d8             	mov    %rbx,%rax
  402a6b:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  402a70:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402a77:	00 00 
  402a79:	75 14                	jne    402a8f <rio_readlineb+0x9c>
  402a7b:	48 83 c4 18          	add    $0x18,%rsp
  402a7f:	5b                   	pop    %rbx
  402a80:	5d                   	pop    %rbp
  402a81:	41 5c                	pop    %r12
  402a83:	41 5d                	pop    %r13
  402a85:	c3                   	ret
  402a86:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402a8d:	eb dc                	jmp    402a6b <rio_readlineb+0x78>
  402a8f:	e8 ff fb ff ff       	call   402693 <__stack_chk_fail>

0000000000402a94 <urlencode>:
  402a94:	41 54                	push   %r12
  402a96:	55                   	push   %rbp
  402a97:	53                   	push   %rbx
  402a98:	48 83 ec 10          	sub    $0x10,%rsp
  402a9c:	48 89 fb             	mov    %rdi,%rbx
  402a9f:	48 89 f5             	mov    %rsi,%rbp
  402aa2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402aa9:	00 00 
  402aab:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402ab0:	31 c0                	xor    %eax,%eax
  402ab2:	e8 e9 e5 ff ff       	call   4010a0 <strlen@plt>
  402ab7:	eb 0f                	jmp    402ac8 <urlencode+0x34>
  402ab9:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  402abd:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402ac1:	48 83 c3 01          	add    $0x1,%rbx
  402ac5:	44 89 e0             	mov    %r12d,%eax
  402ac8:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402acc:	85 c0                	test   %eax,%eax
  402ace:	0f 84 a8 00 00 00    	je     402b7c <urlencode+0xe8>
  402ad4:	44 0f b6 03          	movzbl (%rbx),%r8d
  402ad8:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402adc:	0f 94 c0             	sete   %al
  402adf:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402ae3:	0f 94 c2             	sete   %dl
  402ae6:	08 d0                	or     %dl,%al
  402ae8:	75 cf                	jne    402ab9 <urlencode+0x25>
  402aea:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402aee:	74 c9                	je     402ab9 <urlencode+0x25>
  402af0:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402af4:	74 c3                	je     402ab9 <urlencode+0x25>
  402af6:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402afa:	3c 09                	cmp    $0x9,%al
  402afc:	76 bb                	jbe    402ab9 <urlencode+0x25>
  402afe:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  402b02:	3c 19                	cmp    $0x19,%al
  402b04:	76 b3                	jbe    402ab9 <urlencode+0x25>
  402b06:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402b0a:	3c 19                	cmp    $0x19,%al
  402b0c:	76 ab                	jbe    402ab9 <urlencode+0x25>
  402b0e:	41 80 f8 20          	cmp    $0x20,%r8b
  402b12:	74 56                	je     402b6a <urlencode+0xd6>
  402b14:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402b18:	3c 5f                	cmp    $0x5f,%al
  402b1a:	0f 96 c0             	setbe  %al
  402b1d:	41 80 f8 09          	cmp    $0x9,%r8b
  402b21:	0f 94 c2             	sete   %dl
  402b24:	08 d0                	or     %dl,%al
  402b26:	74 4f                	je     402b77 <urlencode+0xe3>
  402b28:	48 89 e7             	mov    %rsp,%rdi
  402b2b:	45 0f b6 c0          	movzbl %r8b,%r8d
  402b2f:	48 8d 0d 20 1c 00 00 	lea    0x1c20(%rip),%rcx        # 404756 <_IO_stdin_used+0x756>
  402b36:	ba 08 00 00 00       	mov    $0x8,%edx
  402b3b:	be 02 00 00 00       	mov    $0x2,%esi
  402b40:	b8 00 00 00 00       	mov    $0x0,%eax
  402b45:	e8 d6 e6 ff ff       	call   401220 <__sprintf_chk@plt>
  402b4a:	0f b6 04 24          	movzbl (%rsp),%eax
  402b4e:	88 45 00             	mov    %al,0x0(%rbp)
  402b51:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402b56:	88 45 01             	mov    %al,0x1(%rbp)
  402b59:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402b5e:	88 45 02             	mov    %al,0x2(%rbp)
  402b61:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402b65:	e9 57 ff ff ff       	jmp    402ac1 <urlencode+0x2d>
  402b6a:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402b6e:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402b72:	e9 4a ff ff ff       	jmp    402ac1 <urlencode+0x2d>
  402b77:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b7c:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  402b81:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402b88:	00 00 
  402b8a:	75 09                	jne    402b95 <urlencode+0x101>
  402b8c:	48 83 c4 10          	add    $0x10,%rsp
  402b90:	5b                   	pop    %rbx
  402b91:	5d                   	pop    %rbp
  402b92:	41 5c                	pop    %r12
  402b94:	c3                   	ret
  402b95:	e8 f9 fa ff ff       	call   402693 <__stack_chk_fail>

0000000000402b9a <submitr>:
  402b9a:	f3 0f 1e fa          	endbr64
  402b9e:	41 57                	push   %r15
  402ba0:	41 56                	push   %r14
  402ba2:	41 55                	push   %r13
  402ba4:	41 54                	push   %r12
  402ba6:	55                   	push   %rbp
  402ba7:	53                   	push   %rbx
  402ba8:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
  402baf:	ff 
  402bb0:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402bb7:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402bbc:	4c 39 dc             	cmp    %r11,%rsp
  402bbf:	75 ef                	jne    402bb0 <submitr+0x16>
  402bc1:	48 83 ec 68          	sub    $0x68,%rsp
  402bc5:	49 89 fd             	mov    %rdi,%r13
  402bc8:	41 89 f6             	mov    %esi,%r14d
  402bcb:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
  402bd0:	49 89 cc             	mov    %rcx,%r12
  402bd3:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  402bd8:	4c 89 4c 24 08       	mov    %r9,0x8(%rsp)
  402bdd:	4c 8b bc 24 a0 a0 00 	mov    0xa0a0(%rsp),%r15
  402be4:	00 
  402be5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402bec:	00 00 
  402bee:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  402bf5:	00 
  402bf6:	31 c0                	xor    %eax,%eax
  402bf8:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402bff:	00 
  402c00:	ba 00 00 00 00       	mov    $0x0,%edx
  402c05:	be 01 00 00 00       	mov    $0x1,%esi
  402c0a:	bf 02 00 00 00       	mov    $0x2,%edi
  402c0f:	e8 1c e6 ff ff       	call   401230 <socket@plt>
  402c14:	85 c0                	test   %eax,%eax
  402c16:	0f 88 72 02 00 00    	js     402e8e <submitr+0x2f4>
  402c1c:	89 c3                	mov    %eax,%ebx
  402c1e:	4c 89 ef             	mov    %r13,%rdi
  402c21:	e8 ea e4 ff ff       	call   401110 <gethostbyname@plt>
  402c26:	48 85 c0             	test   %rax,%rax
  402c29:	0f 84 ab 02 00 00    	je     402eda <submitr+0x340>
  402c2f:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
  402c34:	66 0f ef c0          	pxor   %xmm0,%xmm0
  402c38:	0f 29 44 24 30       	movaps %xmm0,0x30(%rsp)
  402c3d:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402c44:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402c48:	48 8b 40 18          	mov    0x18(%rax),%rax
  402c4c:	48 8b 30             	mov    (%rax),%rsi
  402c4f:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402c54:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402c59:	e8 c2 e4 ff ff       	call   401120 <__memmove_chk@plt>
  402c5e:	66 41 c1 c6 08       	rol    $0x8,%r14w
  402c63:	66 44 89 74 24 32    	mov    %r14w,0x32(%rsp)
  402c69:	ba 10 00 00 00       	mov    $0x10,%edx
  402c6e:	48 89 ee             	mov    %rbp,%rsi
  402c71:	89 df                	mov    %ebx,%edi
  402c73:	e8 78 e5 ff ff       	call   4011f0 <connect@plt>
  402c78:	85 c0                	test   %eax,%eax
  402c7a:	0f 88 cc 02 00 00    	js     402f4c <submitr+0x3b2>
  402c80:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402c85:	e8 16 e4 ff ff       	call   4010a0 <strlen@plt>
  402c8a:	49 89 c6             	mov    %rax,%r14
  402c8d:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  402c92:	e8 09 e4 ff ff       	call   4010a0 <strlen@plt>
  402c97:	48 89 c5             	mov    %rax,%rbp
  402c9a:	4c 89 e7             	mov    %r12,%rdi
  402c9d:	e8 fe e3 ff ff       	call   4010a0 <strlen@plt>
  402ca2:	48 01 c5             	add    %rax,%rbp
  402ca5:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402caa:	e8 f1 e3 ff ff       	call   4010a0 <strlen@plt>
  402caf:	48 01 c5             	add    %rax,%rbp
  402cb2:	4b 8d 04 76          	lea    (%r14,%r14,2),%rax
  402cb6:	48 8d 84 05 80 00 00 	lea    0x80(%rbp,%rax,1),%rax
  402cbd:	00 
  402cbe:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402cc4:	0f 87 e6 02 00 00    	ja     402fb0 <submitr+0x416>
  402cca:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  402cd1:	00 
  402cd2:	b9 00 04 00 00       	mov    $0x400,%ecx
  402cd7:	b8 00 00 00 00       	mov    $0x0,%eax
  402cdc:	48 89 f7             	mov    %rsi,%rdi
  402cdf:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402ce2:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402ce7:	e8 a8 fd ff ff       	call   402a94 <urlencode>
  402cec:	85 c0                	test   %eax,%eax
  402cee:	0f 88 2e 03 00 00    	js     403022 <submitr+0x488>
  402cf4:	48 8d ac 24 50 20 00 	lea    0x2050(%rsp),%rbp
  402cfb:	00 
  402cfc:	48 83 ec 08          	sub    $0x8,%rsp
  402d00:	41 55                	push   %r13
  402d02:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
  402d09:	00 
  402d0a:	50                   	push   %rax
  402d0b:	41 54                	push   %r12
  402d0d:	4c 8b 4c 24 38       	mov    0x38(%rsp),%r9
  402d12:	4c 8b 44 24 30       	mov    0x30(%rsp),%r8
  402d17:	48 8d 0d 72 17 00 00 	lea    0x1772(%rip),%rcx        # 404490 <_IO_stdin_used+0x490>
  402d1e:	ba 00 20 00 00       	mov    $0x2000,%edx
  402d23:	be 02 00 00 00       	mov    $0x2,%esi
  402d28:	48 89 ef             	mov    %rbp,%rdi
  402d2b:	b8 00 00 00 00       	mov    $0x0,%eax
  402d30:	e8 eb e4 ff ff       	call   401220 <__sprintf_chk@plt>
  402d35:	48 83 c4 20          	add    $0x20,%rsp
  402d39:	48 89 ef             	mov    %rbp,%rdi
  402d3c:	e8 5f e3 ff ff       	call   4010a0 <strlen@plt>
  402d41:	48 89 c2             	mov    %rax,%rdx
  402d44:	48 89 ee             	mov    %rbp,%rsi
  402d47:	89 df                	mov    %ebx,%edi
  402d49:	e8 b9 fb ff ff       	call   402907 <rio_writen>
  402d4e:	48 85 c0             	test   %rax,%rax
  402d51:	0f 88 53 03 00 00    	js     4030aa <submitr+0x510>
  402d57:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
  402d5c:	89 de                	mov    %ebx,%esi
  402d5e:	48 89 ef             	mov    %rbp,%rdi
  402d61:	e8 59 fb ff ff       	call   4028bf <rio_readinitb>
  402d66:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402d6d:	00 
  402d6e:	ba 00 20 00 00       	mov    $0x2000,%edx
  402d73:	48 89 ef             	mov    %rbp,%rdi
  402d76:	e8 78 fc ff ff       	call   4029f3 <rio_readlineb>
  402d7b:	48 85 c0             	test   %rax,%rax
  402d7e:	0f 8e 92 03 00 00    	jle    403116 <submitr+0x57c>
  402d84:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402d89:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  402d90:	00 
  402d91:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402d98:	00 
  402d99:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  402da0:	00 
  402da1:	48 8d 35 b5 19 00 00 	lea    0x19b5(%rip),%rsi        # 40475d <_IO_stdin_used+0x75d>
  402da8:	b8 00 00 00 00       	mov    $0x0,%eax
  402dad:	e8 be e3 ff ff       	call   401170 <__isoc99_sscanf@plt>
  402db2:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402db9:	00 
  402dba:	48 8d 35 b3 19 00 00 	lea    0x19b3(%rip),%rsi        # 404774 <_IO_stdin_used+0x774>
  402dc1:	e8 2a e3 ff ff       	call   4010f0 <strcmp@plt>
  402dc6:	85 c0                	test   %eax,%eax
  402dc8:	0f 84 c8 03 00 00    	je     403196 <submitr+0x5fc>
  402dce:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402dd5:	00 
  402dd6:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402ddb:	ba 00 20 00 00       	mov    $0x2000,%edx
  402de0:	e8 0e fc ff ff       	call   4029f3 <rio_readlineb>
  402de5:	48 85 c0             	test   %rax,%rax
  402de8:	7f c8                	jg     402db2 <submitr+0x218>
  402dea:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402df1:	3a 20 43 
  402df4:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402dfb:	20 75 6e 
  402dfe:	49 89 07             	mov    %rax,(%r15)
  402e01:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402e05:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402e0c:	74 6f 20 
  402e0f:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  402e16:	68 65 61 
  402e19:	49 89 47 10          	mov    %rax,0x10(%r15)
  402e1d:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402e21:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402e28:	66 72 6f 
  402e2b:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
  402e32:	6f 6c 61 
  402e35:	49 89 47 20          	mov    %rax,0x20(%r15)
  402e39:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402e3d:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402e44:	6c 61 62 
  402e47:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  402e4e:	65 72 00 
  402e51:	49 89 47 29          	mov    %rax,0x29(%r15)
  402e55:	49 89 57 31          	mov    %rdx,0x31(%r15)
  402e59:	89 df                	mov    %ebx,%edi
  402e5b:	e8 70 e2 ff ff       	call   4010d0 <close@plt>
  402e60:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e65:	48 8b 94 24 58 a0 00 	mov    0xa058(%rsp),%rdx
  402e6c:	00 
  402e6d:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402e74:	00 00 
  402e76:	0f 85 67 04 00 00    	jne    4032e3 <submitr+0x749>
  402e7c:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  402e83:	5b                   	pop    %rbx
  402e84:	5d                   	pop    %rbp
  402e85:	41 5c                	pop    %r12
  402e87:	41 5d                	pop    %r13
  402e89:	41 5e                	pop    %r14
  402e8b:	41 5f                	pop    %r15
  402e8d:	c3                   	ret
  402e8e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402e95:	3a 20 43 
  402e98:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402e9f:	20 75 6e 
  402ea2:	49 89 07             	mov    %rax,(%r15)
  402ea5:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402ea9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402eb0:	74 6f 20 
  402eb3:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402eba:	65 20 73 
  402ebd:	49 89 47 10          	mov    %rax,0x10(%r15)
  402ec1:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402ec5:	48 b8 20 73 6f 63 6b 	movabs $0x74656b636f7320,%rax
  402ecc:	65 74 00 
  402ecf:	49 89 47 1e          	mov    %rax,0x1e(%r15)
  402ed3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ed8:	eb 8b                	jmp    402e65 <submitr+0x2cb>
  402eda:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402ee1:	3a 20 44 
  402ee4:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402eeb:	20 75 6e 
  402eee:	49 89 07             	mov    %rax,(%r15)
  402ef1:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402ef5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402efc:	74 6f 20 
  402eff:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402f06:	76 65 20 
  402f09:	49 89 47 10          	mov    %rax,0x10(%r15)
  402f0d:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402f11:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  402f18:	61 62 20 
  402f1b:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
  402f22:	72 20 61 
  402f25:	49 89 47 20          	mov    %rax,0x20(%r15)
  402f29:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402f2d:	48 b8 61 64 64 72 65 	movabs $0x73736572646461,%rax
  402f34:	73 73 00 
  402f37:	49 89 47 2f          	mov    %rax,0x2f(%r15)
  402f3b:	89 df                	mov    %ebx,%edi
  402f3d:	e8 8e e1 ff ff       	call   4010d0 <close@plt>
  402f42:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f47:	e9 19 ff ff ff       	jmp    402e65 <submitr+0x2cb>
  402f4c:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402f53:	3a 20 55 
  402f56:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402f5d:	20 74 6f 
  402f60:	49 89 07             	mov    %rax,(%r15)
  402f63:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402f67:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402f6e:	65 63 74 
  402f71:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  402f78:	68 65 20 
  402f7b:	49 89 47 10          	mov    %rax,0x10(%r15)
  402f7f:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402f83:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402f8a:	6c 61 62 
  402f8d:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  402f94:	65 72 00 
  402f97:	49 89 47 1f          	mov    %rax,0x1f(%r15)
  402f9b:	49 89 57 27          	mov    %rdx,0x27(%r15)
  402f9f:	89 df                	mov    %ebx,%edi
  402fa1:	e8 2a e1 ff ff       	call   4010d0 <close@plt>
  402fa6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402fab:	e9 b5 fe ff ff       	jmp    402e65 <submitr+0x2cb>
  402fb0:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402fb7:	3a 20 52 
  402fba:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402fc1:	20 73 74 
  402fc4:	49 89 07             	mov    %rax,(%r15)
  402fc7:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402fcb:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402fd2:	74 6f 6f 
  402fd5:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  402fdc:	65 2e 20 
  402fdf:	49 89 47 10          	mov    %rax,0x10(%r15)
  402fe3:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402fe7:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402fee:	61 73 65 
  402ff1:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  402ff8:	49 54 52 
  402ffb:	49 89 47 20          	mov    %rax,0x20(%r15)
  402fff:	49 89 57 28          	mov    %rdx,0x28(%r15)
  403003:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  40300a:	55 46 00 
  40300d:	49 89 47 30          	mov    %rax,0x30(%r15)
  403011:	89 df                	mov    %ebx,%edi
  403013:	e8 b8 e0 ff ff       	call   4010d0 <close@plt>
  403018:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40301d:	e9 43 fe ff ff       	jmp    402e65 <submitr+0x2cb>
  403022:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  403029:	3a 20 55 
  40302c:	48 ba 73 65 72 69 64 	movabs $0x7473206469726573,%rdx
  403033:	20 73 74 
  403036:	49 89 07             	mov    %rax,(%r15)
  403039:	49 89 57 08          	mov    %rdx,0x8(%r15)
  40303d:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  403044:	63 6f 6e 
  403047:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  40304e:	20 61 6e 
  403051:	49 89 47 10          	mov    %rax,0x10(%r15)
  403055:	49 89 57 18          	mov    %rdx,0x18(%r15)
  403059:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  403060:	67 61 6c 
  403063:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  40306a:	6e 70 72 
  40306d:	49 89 47 20          	mov    %rax,0x20(%r15)
  403071:	49 89 57 28          	mov    %rdx,0x28(%r15)
  403075:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  40307c:	6c 65 20 
  40307f:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  403086:	63 74 65 
  403089:	49 89 47 30          	mov    %rax,0x30(%r15)
  40308d:	49 89 57 38          	mov    %rdx,0x38(%r15)
  403091:	41 c7 47 3f 65 72 2e 	movl   $0x2e7265,0x3f(%r15)
  403098:	00 
  403099:	89 df                	mov    %ebx,%edi
  40309b:	e8 30 e0 ff ff       	call   4010d0 <close@plt>
  4030a0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4030a5:	e9 bb fd ff ff       	jmp    402e65 <submitr+0x2cb>
  4030aa:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4030b1:	3a 20 43 
  4030b4:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4030bb:	20 75 6e 
  4030be:	49 89 07             	mov    %rax,(%r15)
  4030c1:	49 89 57 08          	mov    %rdx,0x8(%r15)
  4030c5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4030cc:	74 6f 20 
  4030cf:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  4030d6:	20 74 6f 
  4030d9:	49 89 47 10          	mov    %rax,0x10(%r15)
  4030dd:	49 89 57 18          	mov    %rdx,0x18(%r15)
  4030e1:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  4030e8:	41 75 74 
  4030eb:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
  4030f2:	73 65 72 
  4030f5:	49 89 47 20          	mov    %rax,0x20(%r15)
  4030f9:	49 89 57 28          	mov    %rdx,0x28(%r15)
  4030fd:	41 c7 47 30 76 65 72 	movl   $0x726576,0x30(%r15)
  403104:	00 
  403105:	89 df                	mov    %ebx,%edi
  403107:	e8 c4 df ff ff       	call   4010d0 <close@plt>
  40310c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403111:	e9 4f fd ff ff       	jmp    402e65 <submitr+0x2cb>
  403116:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40311d:	3a 20 43 
  403120:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403127:	20 75 6e 
  40312a:	49 89 07             	mov    %rax,(%r15)
  40312d:	49 89 57 08          	mov    %rdx,0x8(%r15)
  403131:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403138:	74 6f 20 
  40313b:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  403142:	66 69 72 
  403145:	49 89 47 10          	mov    %rax,0x10(%r15)
  403149:	49 89 57 18          	mov    %rdx,0x18(%r15)
  40314d:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  403154:	61 64 65 
  403157:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
  40315e:	6d 20 41 
  403161:	49 89 47 20          	mov    %rax,0x20(%r15)
  403165:	49 89 57 28          	mov    %rdx,0x28(%r15)
  403169:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  403170:	6c 61 62 
  403173:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  40317a:	65 72 00 
  40317d:	49 89 47 2e          	mov    %rax,0x2e(%r15)
  403181:	49 89 57 36          	mov    %rdx,0x36(%r15)
  403185:	89 df                	mov    %ebx,%edi
  403187:	e8 44 df ff ff       	call   4010d0 <close@plt>
  40318c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403191:	e9 cf fc ff ff       	jmp    402e65 <submitr+0x2cb>
  403196:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  40319d:	00 
  40319e:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4031a3:	ba 00 20 00 00       	mov    $0x2000,%edx
  4031a8:	e8 46 f8 ff ff       	call   4029f3 <rio_readlineb>
  4031ad:	48 85 c0             	test   %rax,%rax
  4031b0:	7e 78                	jle    40322a <submitr+0x690>
  4031b2:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  4031b7:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  4031be:	0f 85 e6 00 00 00    	jne    4032aa <submitr+0x710>
  4031c4:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4031cb:	00 
  4031cc:	4c 89 ff             	mov    %r15,%rdi
  4031cf:	e8 9c de ff ff       	call   401070 <strcpy@plt>
  4031d4:	89 df                	mov    %ebx,%edi
  4031d6:	e8 f5 de ff ff       	call   4010d0 <close@plt>
  4031db:	48 8d 35 8c 15 00 00 	lea    0x158c(%rip),%rsi        # 40476e <_IO_stdin_used+0x76e>
  4031e2:	4c 89 ff             	mov    %r15,%rdi
  4031e5:	e8 06 df ff ff       	call   4010f0 <strcmp@plt>
  4031ea:	85 c0                	test   %eax,%eax
  4031ec:	0f 84 73 fc ff ff    	je     402e65 <submitr+0x2cb>
  4031f2:	48 8d 35 79 15 00 00 	lea    0x1579(%rip),%rsi        # 404772 <_IO_stdin_used+0x772>
  4031f9:	4c 89 ff             	mov    %r15,%rdi
  4031fc:	e8 ef de ff ff       	call   4010f0 <strcmp@plt>
  403201:	85 c0                	test   %eax,%eax
  403203:	0f 84 5c fc ff ff    	je     402e65 <submitr+0x2cb>
  403209:	48 8d 35 67 15 00 00 	lea    0x1567(%rip),%rsi        # 404777 <_IO_stdin_used+0x777>
  403210:	4c 89 ff             	mov    %r15,%rdi
  403213:	e8 d8 de ff ff       	call   4010f0 <strcmp@plt>
  403218:	85 c0                	test   %eax,%eax
  40321a:	0f 84 45 fc ff ff    	je     402e65 <submitr+0x2cb>
  403220:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403225:	e9 3b fc ff ff       	jmp    402e65 <submitr+0x2cb>
  40322a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403231:	3a 20 43 
  403234:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40323b:	20 75 6e 
  40323e:	49 89 07             	mov    %rax,(%r15)
  403241:	49 89 57 08          	mov    %rdx,0x8(%r15)
  403245:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40324c:	74 6f 20 
  40324f:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  403256:	73 74 61 
  403259:	49 89 47 10          	mov    %rax,0x10(%r15)
  40325d:	49 89 57 18          	mov    %rdx,0x18(%r15)
  403261:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  403268:	65 73 73 
  40326b:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  403272:	72 6f 6d 
  403275:	49 89 47 20          	mov    %rax,0x20(%r15)
  403279:	49 89 57 28          	mov    %rdx,0x28(%r15)
  40327d:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  403284:	6c 61 62 
  403287:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  40328e:	65 72 00 
  403291:	49 89 47 30          	mov    %rax,0x30(%r15)
  403295:	49 89 57 38          	mov    %rdx,0x38(%r15)
  403299:	89 df                	mov    %ebx,%edi
  40329b:	e8 30 de ff ff       	call   4010d0 <close@plt>
  4032a0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4032a5:	e9 bb fb ff ff       	jmp    402e65 <submitr+0x2cb>
  4032aa:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  4032b1:	00 
  4032b2:	48 8d 0d 37 12 00 00 	lea    0x1237(%rip),%rcx        # 4044f0 <_IO_stdin_used+0x4f0>
  4032b9:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4032c0:	be 02 00 00 00       	mov    $0x2,%esi
  4032c5:	4c 89 ff             	mov    %r15,%rdi
  4032c8:	b8 00 00 00 00       	mov    $0x0,%eax
  4032cd:	e8 4e df ff ff       	call   401220 <__sprintf_chk@plt>
  4032d2:	89 df                	mov    %ebx,%edi
  4032d4:	e8 f7 dd ff ff       	call   4010d0 <close@plt>
  4032d9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4032de:	e9 82 fb ff ff       	jmp    402e65 <submitr+0x2cb>
  4032e3:	e8 ab f3 ff ff       	call   402693 <__stack_chk_fail>

00000000004032e8 <init_timeout>:
  4032e8:	f3 0f 1e fa          	endbr64
  4032ec:	85 ff                	test   %edi,%edi
  4032ee:	74 26                	je     403316 <init_timeout+0x2e>
  4032f0:	53                   	push   %rbx
  4032f1:	89 fb                	mov    %edi,%ebx
  4032f3:	78 1a                	js     40330f <init_timeout+0x27>
  4032f5:	48 8d 35 d5 f5 ff ff 	lea    -0xa2b(%rip),%rsi        # 4028d1 <sigalrm_handler>
  4032fc:	bf 0e 00 00 00       	mov    $0xe,%edi
  403301:	e8 fa dd ff ff       	call   401100 <signal@plt>
  403306:	89 df                	mov    %ebx,%edi
  403308:	e8 b3 dd ff ff       	call   4010c0 <alarm@plt>
  40330d:	5b                   	pop    %rbx
  40330e:	c3                   	ret
  40330f:	bb 00 00 00 00       	mov    $0x0,%ebx
  403314:	eb df                	jmp    4032f5 <init_timeout+0xd>
  403316:	c3                   	ret

0000000000403317 <init_driver>:
  403317:	f3 0f 1e fa          	endbr64
  40331b:	41 54                	push   %r12
  40331d:	55                   	push   %rbp
  40331e:	53                   	push   %rbx
  40331f:	48 83 ec 20          	sub    $0x20,%rsp
  403323:	48 89 fd             	mov    %rdi,%rbp
  403326:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40332d:	00 00 
  40332f:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  403334:	31 c0                	xor    %eax,%eax
  403336:	be 01 00 00 00       	mov    $0x1,%esi
  40333b:	bf 0d 00 00 00       	mov    $0xd,%edi
  403340:	e8 bb dd ff ff       	call   401100 <signal@plt>
  403345:	be 01 00 00 00       	mov    $0x1,%esi
  40334a:	bf 1d 00 00 00       	mov    $0x1d,%edi
  40334f:	e8 ac dd ff ff       	call   401100 <signal@plt>
  403354:	be 01 00 00 00       	mov    $0x1,%esi
  403359:	bf 1d 00 00 00       	mov    $0x1d,%edi
  40335e:	e8 9d dd ff ff       	call   401100 <signal@plt>
  403363:	ba 00 00 00 00       	mov    $0x0,%edx
  403368:	be 01 00 00 00       	mov    $0x1,%esi
  40336d:	bf 02 00 00 00       	mov    $0x2,%edi
  403372:	e8 b9 de ff ff       	call   401230 <socket@plt>
  403377:	85 c0                	test   %eax,%eax
  403379:	0f 88 93 00 00 00    	js     403412 <init_driver+0xfb>
  40337f:	89 c3                	mov    %eax,%ebx
  403381:	48 8d 3d f2 13 00 00 	lea    0x13f2(%rip),%rdi        # 40477a <_IO_stdin_used+0x77a>
  403388:	e8 83 dd ff ff       	call   401110 <gethostbyname@plt>
  40338d:	48 85 c0             	test   %rax,%rax
  403390:	0f 84 c9 00 00 00    	je     40345f <init_driver+0x148>
  403396:	49 89 e4             	mov    %rsp,%r12
  403399:	66 0f ef c0          	pxor   %xmm0,%xmm0
  40339d:	0f 29 04 24          	movaps %xmm0,(%rsp)
  4033a1:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  4033a7:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4033ab:	48 8b 40 18          	mov    0x18(%rax),%rax
  4033af:	48 8b 30             	mov    (%rax),%rsi
  4033b2:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  4033b7:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4033bc:	e8 5f dd ff ff       	call   401120 <__memmove_chk@plt>
  4033c1:	66 c7 44 24 02 00 50 	movw   $0x5000,0x2(%rsp)
  4033c8:	ba 10 00 00 00       	mov    $0x10,%edx
  4033cd:	4c 89 e6             	mov    %r12,%rsi
  4033d0:	89 df                	mov    %ebx,%edi
  4033d2:	e8 19 de ff ff       	call   4011f0 <connect@plt>
  4033d7:	85 c0                	test   %eax,%eax
  4033d9:	0f 88 e5 00 00 00    	js     4034c4 <init_driver+0x1ad>
  4033df:	89 df                	mov    %ebx,%edi
  4033e1:	e8 ea dc ff ff       	call   4010d0 <close@plt>
  4033e6:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  4033ec:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  4033f0:	b8 00 00 00 00       	mov    $0x0,%eax
  4033f5:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
  4033fa:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  403401:	00 00 
  403403:	0f 85 27 01 00 00    	jne    403530 <init_driver+0x219>
  403409:	48 83 c4 20          	add    $0x20,%rsp
  40340d:	5b                   	pop    %rbx
  40340e:	5d                   	pop    %rbp
  40340f:	41 5c                	pop    %r12
  403411:	c3                   	ret
  403412:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403419:	3a 20 43 
  40341c:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403423:	20 75 6e 
  403426:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40342a:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40342e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403435:	74 6f 20 
  403438:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  40343f:	65 20 73 
  403442:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403446:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40344a:	48 b8 20 73 6f 63 6b 	movabs $0x74656b636f7320,%rax
  403451:	65 74 00 
  403454:	48 89 45 1e          	mov    %rax,0x1e(%rbp)
  403458:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40345d:	eb 96                	jmp    4033f5 <init_driver+0xde>
  40345f:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  403466:	3a 20 44 
  403469:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  403470:	20 75 6e 
  403473:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403477:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40347b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403482:	74 6f 20 
  403485:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  40348c:	76 65 20 
  40348f:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403493:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403497:	48 b8 20 73 65 72 76 	movabs $0x2072657672657320,%rax
  40349e:	65 72 20 
  4034a1:	48 ba 61 64 64 72 65 	movabs $0x73736572646461,%rdx
  4034a8:	73 73 00 
  4034ab:	48 89 45 1f          	mov    %rax,0x1f(%rbp)
  4034af:	48 89 55 27          	mov    %rdx,0x27(%rbp)
  4034b3:	89 df                	mov    %ebx,%edi
  4034b5:	e8 16 dc ff ff       	call   4010d0 <close@plt>
  4034ba:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4034bf:	e9 31 ff ff ff       	jmp    4033f5 <init_driver+0xde>
  4034c4:	48 b8 31 36 32 2e 31 	movabs $0x2e3530312e323631,%rax
  4034cb:	30 35 2e 
  4034ce:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4034d2:	48 b8 2e 33 31 2e 32 	movabs $0x3233322e31332e,%rax
  4034d9:	33 32 00 
  4034dc:	48 89 45 07          	mov    %rax,0x7(%rbp)
  4034e0:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4034e7:	3a 20 55 
  4034ea:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  4034f1:	20 74 6f 
  4034f4:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4034f8:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4034fc:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  403503:	65 63 74 
  403506:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  40350d:	65 72 76 
  403510:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403514:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403518:	c7 45 1f 76 65 72 00 	movl   $0x726576,0x1f(%rbp)
  40351f:	89 df                	mov    %ebx,%edi
  403521:	e8 aa db ff ff       	call   4010d0 <close@plt>
  403526:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40352b:	e9 c5 fe ff ff       	jmp    4033f5 <init_driver+0xde>
  403530:	e8 5e f1 ff ff       	call   402693 <__stack_chk_fail>

0000000000403535 <driver_post>:
  403535:	f3 0f 1e fa          	endbr64
  403539:	53                   	push   %rbx
  40353a:	4c 89 cb             	mov    %r9,%rbx
  40353d:	45 85 c0             	test   %r8d,%r8d
  403540:	75 18                	jne    40355a <driver_post+0x25>
  403542:	48 85 ff             	test   %rdi,%rdi
  403545:	74 05                	je     40354c <driver_post+0x17>
  403547:	80 3f 00             	cmpb   $0x0,(%rdi)
  40354a:	75 37                	jne    403583 <driver_post+0x4e>
  40354c:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  403551:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  403555:	44 89 c0             	mov    %r8d,%eax
  403558:	5b                   	pop    %rbx
  403559:	c3                   	ret
  40355a:	48 89 ca             	mov    %rcx,%rdx
  40355d:	48 8d 35 25 12 00 00 	lea    0x1225(%rip),%rsi        # 404789 <_IO_stdin_used+0x789>
  403564:	bf 02 00 00 00       	mov    $0x2,%edi
  403569:	b8 00 00 00 00       	mov    $0x0,%eax
  40356e:	e8 1d dc ff ff       	call   401190 <__printf_chk@plt>
  403573:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  403578:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  40357c:	b8 00 00 00 00       	mov    $0x0,%eax
  403581:	eb d5                	jmp    403558 <driver_post+0x23>
  403583:	48 83 ec 08          	sub    $0x8,%rsp
  403587:	41 51                	push   %r9
  403589:	49 89 c9             	mov    %rcx,%r9
  40358c:	49 89 d0             	mov    %rdx,%r8
  40358f:	48 89 f9             	mov    %rdi,%rcx
  403592:	48 89 f2             	mov    %rsi,%rdx
  403595:	be 50 00 00 00       	mov    $0x50,%esi
  40359a:	48 8d 3d d9 11 00 00 	lea    0x11d9(%rip),%rdi        # 40477a <_IO_stdin_used+0x77a>
  4035a1:	e8 f4 f5 ff ff       	call   402b9a <submitr>
  4035a6:	48 83 c4 10          	add    $0x10,%rsp
  4035aa:	eb ac                	jmp    403558 <driver_post+0x23>

00000000004035ac <check>:
  4035ac:	f3 0f 1e fa          	endbr64
  4035b0:	89 f8                	mov    %edi,%eax
  4035b2:	c1 e8 1c             	shr    $0x1c,%eax
  4035b5:	74 1d                	je     4035d4 <check+0x28>
  4035b7:	b9 00 00 00 00       	mov    $0x0,%ecx
  4035bc:	83 f9 1f             	cmp    $0x1f,%ecx
  4035bf:	7f 0d                	jg     4035ce <check+0x22>
  4035c1:	89 f8                	mov    %edi,%eax
  4035c3:	d3 e8                	shr    %cl,%eax
  4035c5:	3c 0a                	cmp    $0xa,%al
  4035c7:	74 11                	je     4035da <check+0x2e>
  4035c9:	83 c1 08             	add    $0x8,%ecx
  4035cc:	eb ee                	jmp    4035bc <check+0x10>
  4035ce:	b8 01 00 00 00       	mov    $0x1,%eax
  4035d3:	c3                   	ret
  4035d4:	b8 00 00 00 00       	mov    $0x0,%eax
  4035d9:	c3                   	ret
  4035da:	b8 00 00 00 00       	mov    $0x0,%eax
  4035df:	c3                   	ret

00000000004035e0 <gencookie>:
  4035e0:	f3 0f 1e fa          	endbr64
  4035e4:	53                   	push   %rbx
  4035e5:	83 c7 01             	add    $0x1,%edi
  4035e8:	e8 53 da ff ff       	call   401040 <srandom@plt>
  4035ed:	e8 6e db ff ff       	call   401160 <random@plt>
  4035f2:	89 c3                	mov    %eax,%ebx
  4035f4:	89 c7                	mov    %eax,%edi
  4035f6:	e8 b1 ff ff ff       	call   4035ac <check>
  4035fb:	85 c0                	test   %eax,%eax
  4035fd:	74 ee                	je     4035ed <gencookie+0xd>
  4035ff:	89 d8                	mov    %ebx,%eax
  403601:	5b                   	pop    %rbx
  403602:	c3                   	ret

Disassembly of section .fini:

0000000000403604 <_fini>:
  403604:	f3 0f 1e fa          	endbr64
  403608:	48 83 ec 08          	sub    $0x8,%rsp
  40360c:	48 83 c4 08          	add    $0x8,%rsp
  403610:	c3                   	ret
