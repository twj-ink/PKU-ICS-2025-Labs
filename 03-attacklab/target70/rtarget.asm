
rtarget:     file format elf64-x86-64


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
  401258:	48 c7 c7 d7 14 40 00 	mov    $0x4014d7,%rdi
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
  401403:	e8 d1 21 00 00       	call   4035d9 <gencookie>
  401408:	89 c7                	mov    %eax,%edi
  40140a:	89 05 1c 61 00 00    	mov    %eax,0x611c(%rip)        # 40752c <cookie>
  401410:	e8 c4 21 00 00       	call   4035d9 <gencookie>
  401415:	89 05 0d 61 00 00    	mov    %eax,0x610d(%rip)        # 407528 <authkey>
  40141b:	8b 05 0f 5d 00 00    	mov    0x5d0f(%rip),%eax        # 407130 <target_id>
  401421:	8d 78 01             	lea    0x1(%rax),%edi
  401424:	e8 17 fc ff ff       	call   401040 <srandom@plt>
  401429:	e8 32 fd ff ff       	call   401160 <random@plt>
  40142e:	89 c7                	mov    %eax,%edi
  401430:	e8 07 03 00 00       	call   40173c <scramble>
  401435:	89 c3                	mov    %eax,%ebx
  401437:	85 ed                	test   %ebp,%ebp
  401439:	75 50                	jne    40148b <initialize_target+0xc7>
  40143b:	b8 00 00 00 00       	mov    $0x0,%eax
  401440:	01 d8                	add    %ebx,%eax
  401442:	0f b7 c0             	movzwl %ax,%eax
  401445:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  40144c:	89 c0                	mov    %eax,%eax
  40144e:	48 89 05 33 60 00 00 	mov    %rax,0x6033(%rip)        # 407488 <buf_offset>
  401455:	c6 05 ec 6c 00 00 72 	movb   $0x72,0x6cec(%rip)        # 408148 <target_prefix>
  40145c:	83 3d 1d 60 00 00 00 	cmpl   $0x0,0x601d(%rip)        # 407480 <notify>
  401463:	74 09                	je     40146e <initialize_target+0xaa>
  401465:	83 3d c4 60 00 00 00 	cmpl   $0x0,0x60c4(%rip)        # 407530 <is_checker>
  40146c:	74 35                	je     4014a3 <initialize_target+0xdf>
  40146e:	48 8b 84 24 08 20 00 	mov    0x2008(%rsp),%rax
  401475:	00 
  401476:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40147d:	00 00 
  40147f:	75 51                	jne    4014d2 <initialize_target+0x10e>
  401481:	48 81 c4 18 20 00 00 	add    $0x2018,%rsp
  401488:	5b                   	pop    %rbx
  401489:	5d                   	pop    %rbp
  40148a:	c3                   	ret
  40148b:	bf 00 00 00 00       	mov    $0x0,%edi
  401490:	e8 bb fc ff ff       	call   401150 <time@plt>
  401495:	89 c7                	mov    %eax,%edi
  401497:	e8 a4 fb ff ff       	call   401040 <srandom@plt>
  40149c:	e8 bf fc ff ff       	call   401160 <random@plt>
  4014a1:	eb 9d                	jmp    401440 <initialize_target+0x7c>
  4014a3:	48 89 e7             	mov    %rsp,%rdi
  4014a6:	e8 65 1e 00 00       	call   403310 <init_driver>
  4014ab:	85 c0                	test   %eax,%eax
  4014ad:	79 bf                	jns    40146e <initialize_target+0xaa>
  4014af:	48 89 e2             	mov    %rsp,%rdx
  4014b2:	48 8d 35 2f 2c 00 00 	lea    0x2c2f(%rip),%rsi        # 4040e8 <_IO_stdin_used+0xe8>
  4014b9:	bf 02 00 00 00       	mov    $0x2,%edi
  4014be:	b8 00 00 00 00       	mov    $0x0,%eax
  4014c3:	e8 c8 fc ff ff       	call   401190 <__printf_chk@plt>
  4014c8:	bf 08 00 00 00       	mov    $0x8,%edi
  4014cd:	e8 0e fd ff ff       	call   4011e0 <exit@plt>
  4014d2:	e8 b5 11 00 00       	call   40268c <__stack_chk_fail>

00000000004014d7 <main>:
  4014d7:	f3 0f 1e fa          	endbr64
  4014db:	41 56                	push   %r14
  4014dd:	41 55                	push   %r13
  4014df:	41 54                	push   %r12
  4014e1:	55                   	push   %rbp
  4014e2:	53                   	push   %rbx
  4014e3:	48 83 ec 60          	sub    $0x60,%rsp
  4014e7:	89 fd                	mov    %edi,%ebp
  4014e9:	48 89 f3             	mov    %rsi,%rbx
  4014ec:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4014f3:	00 00 
  4014f5:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  4014fa:	31 c0                	xor    %eax,%eax
  4014fc:	48 b8 53 70 69 72 69 	movabs $0x6465746972697053,%rax
  401503:	74 65 64 
  401506:	48 89 04 24          	mov    %rax,(%rsp)
  40150a:	48 b8 64 41 77 61 79 	movabs $0x4e437961774164,%rax
  401511:	43 4e 00 
  401514:	48 89 44 24 07       	mov    %rax,0x7(%rsp)
  401519:	48 c7 c6 7b 25 40 00 	mov    $0x40257b,%rsi
  401520:	bf 0b 00 00 00       	mov    $0xb,%edi
  401525:	e8 d6 fb ff ff       	call   401100 <signal@plt>
  40152a:	48 c7 c6 21 25 40 00 	mov    $0x402521,%rsi
  401531:	bf 07 00 00 00       	mov    $0x7,%edi
  401536:	e8 c5 fb ff ff       	call   401100 <signal@plt>
  40153b:	48 c7 c6 d5 25 40 00 	mov    $0x4025d5,%rsi
  401542:	bf 04 00 00 00       	mov    $0x4,%edi
  401547:	e8 b4 fb ff ff       	call   401100 <signal@plt>
  40154c:	83 3d dd 5f 00 00 00 	cmpl   $0x0,0x5fdd(%rip)        # 407530 <is_checker>
  401553:	75 26                	jne    40157b <main+0xa4>
  401555:	4c 8d 25 2e 30 00 00 	lea    0x302e(%rip),%r12        # 40458a <_IO_stdin_used+0x58a>
  40155c:	48 8b 05 3d 5f 00 00 	mov    0x5f3d(%rip),%rax        # 4074a0 <stdin@GLIBC_2.2.5>
  401563:	48 89 05 ae 5f 00 00 	mov    %rax,0x5fae(%rip)        # 407518 <infile>
  40156a:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401570:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401576:	e9 8d 00 00 00       	jmp    401608 <main+0x131>
  40157b:	48 c7 c6 2f 26 40 00 	mov    $0x40262f,%rsi
  401582:	bf 0e 00 00 00       	mov    $0xe,%edi
  401587:	e8 74 fb ff ff       	call   401100 <signal@plt>
  40158c:	bf 02 00 00 00       	mov    $0x2,%edi
  401591:	e8 2a fb ff ff       	call   4010c0 <alarm@plt>
  401596:	4c 8d 25 f2 2f 00 00 	lea    0x2ff2(%rip),%r12        # 40458f <_IO_stdin_used+0x58f>
  40159d:	eb bd                	jmp    40155c <main+0x85>
  40159f:	48 8b 3b             	mov    (%rbx),%rdi
  4015a2:	e8 7f fd ff ff       	call   401326 <usage>
  4015a7:	48 8d 35 5b 30 00 00 	lea    0x305b(%rip),%rsi        # 404609 <_IO_stdin_used+0x609>
  4015ae:	48 8b 3d 0b 5f 00 00 	mov    0x5f0b(%rip),%rdi        # 4074c0 <optarg@GLIBC_2.2.5>
  4015b5:	e8 e6 fb ff ff       	call   4011a0 <fopen@plt>
  4015ba:	48 89 05 57 5f 00 00 	mov    %rax,0x5f57(%rip)        # 407518 <infile>
  4015c1:	48 85 c0             	test   %rax,%rax
  4015c4:	75 42                	jne    401608 <main+0x131>
  4015c6:	48 8b 0d f3 5e 00 00 	mov    0x5ef3(%rip),%rcx        # 4074c0 <optarg@GLIBC_2.2.5>
  4015cd:	48 8d 15 c5 2f 00 00 	lea    0x2fc5(%rip),%rdx        # 404599 <_IO_stdin_used+0x599>
  4015d4:	be 02 00 00 00       	mov    $0x2,%esi
  4015d9:	48 8b 3d 00 5f 00 00 	mov    0x5f00(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  4015e0:	e8 1b fc ff ff       	call   401200 <__fprintf_chk@plt>
  4015e5:	b8 01 00 00 00       	mov    $0x1,%eax
  4015ea:	e9 2b 01 00 00       	jmp    40171a <main+0x243>
  4015ef:	ba 10 00 00 00       	mov    $0x10,%edx
  4015f4:	be 00 00 00 00       	mov    $0x0,%esi
  4015f9:	48 8b 3d c0 5e 00 00 	mov    0x5ec0(%rip),%rdi        # 4074c0 <optarg@GLIBC_2.2.5>
  401600:	e8 bb fb ff ff       	call   4011c0 <strtoul@plt>
  401605:	41 89 c6             	mov    %eax,%r14d
  401608:	4c 89 e2             	mov    %r12,%rdx
  40160b:	48 89 de             	mov    %rbx,%rsi
  40160e:	89 ef                	mov    %ebp,%edi
  401610:	e8 9b fb ff ff       	call   4011b0 <getopt@plt>
  401615:	3c ff                	cmp    $0xff,%al
  401617:	74 7a                	je     401693 <main+0x1bc>
  401619:	8d 50 9f             	lea    -0x61(%rax),%edx
  40161c:	80 fa 14             	cmp    $0x14,%dl
  40161f:	77 51                	ja     401672 <main+0x19b>
  401621:	0f b6 d2             	movzbl %dl,%edx
  401624:	48 8d 0d 75 31 00 00 	lea    0x3175(%rip),%rcx        # 4047a0 <_IO_stdin_used+0x7a0>
  40162b:	48 63 14 91          	movslq (%rcx,%rdx,4),%rdx
  40162f:	48 01 ca             	add    %rcx,%rdx
  401632:	3e ff e2             	notrack jmp *%rdx
  401635:	ba 0a 00 00 00       	mov    $0xa,%edx
  40163a:	be 00 00 00 00       	mov    $0x0,%esi
  40163f:	48 8b 3d 7a 5e 00 00 	mov    0x5e7a(%rip),%rdi        # 4074c0 <optarg@GLIBC_2.2.5>
  401646:	e8 e5 fa ff ff       	call   401130 <strtol@plt>
  40164b:	41 89 c5             	mov    %eax,%r13d
  40164e:	eb b8                	jmp    401608 <main+0x131>
  401650:	c7 05 26 5e 00 00 00 	movl   $0x0,0x5e26(%rip)        # 407480 <notify>
  401657:	00 00 00 
  40165a:	eb ac                	jmp    401608 <main+0x131>
  40165c:	48 89 e7             	mov    %rsp,%rdi
  40165f:	ba 50 00 00 00       	mov    $0x50,%edx
  401664:	48 8b 35 55 5e 00 00 	mov    0x5e55(%rip),%rsi        # 4074c0 <optarg@GLIBC_2.2.5>
  40166b:	e8 e0 f9 ff ff       	call   401050 <strncpy@plt>
  401670:	eb 96                	jmp    401608 <main+0x131>
  401672:	0f be d0             	movsbl %al,%edx
  401675:	48 8d 35 3a 2f 00 00 	lea    0x2f3a(%rip),%rsi        # 4045b6 <_IO_stdin_used+0x5b6>
  40167c:	bf 02 00 00 00       	mov    $0x2,%edi
  401681:	b8 00 00 00 00       	mov    $0x0,%eax
  401686:	e8 05 fb ff ff       	call   401190 <__printf_chk@plt>
  40168b:	48 8b 3b             	mov    (%rbx),%rdi
  40168e:	e8 93 fc ff ff       	call   401326 <usage>
  401693:	be 01 00 00 00       	mov    $0x1,%esi
  401698:	44 89 ef             	mov    %r13d,%edi
  40169b:	e8 24 fd ff ff       	call   4013c4 <initialize_target>
  4016a0:	83 3d 89 5e 00 00 00 	cmpl   $0x0,0x5e89(%rip)        # 407530 <is_checker>
  4016a7:	74 3f                	je     4016e8 <main+0x211>
  4016a9:	44 39 35 78 5e 00 00 	cmp    %r14d,0x5e78(%rip)        # 407528 <authkey>
  4016b0:	75 13                	jne    4016c5 <main+0x1ee>
  4016b2:	48 89 e7             	mov    %rsp,%rdi
  4016b5:	48 8b 35 84 5a 00 00 	mov    0x5a84(%rip),%rsi        # 407140 <user_id>
  4016bc:	e8 2f fa ff ff       	call   4010f0 <strcmp@plt>
  4016c1:	85 c0                	test   %eax,%eax
  4016c3:	74 23                	je     4016e8 <main+0x211>
  4016c5:	44 89 f2             	mov    %r14d,%edx
  4016c8:	48 8d 35 41 2a 00 00 	lea    0x2a41(%rip),%rsi        # 404110 <_IO_stdin_used+0x110>
  4016cf:	bf 02 00 00 00       	mov    $0x2,%edi
  4016d4:	b8 00 00 00 00       	mov    $0x0,%eax
  4016d9:	e8 b2 fa ff ff       	call   401190 <__printf_chk@plt>
  4016de:	b8 00 00 00 00       	mov    $0x0,%eax
  4016e3:	e8 77 0a 00 00       	call   40215f <check_fail>
  4016e8:	8b 15 3e 5e 00 00    	mov    0x5e3e(%rip),%edx        # 40752c <cookie>
  4016ee:	48 8d 35 d4 2e 00 00 	lea    0x2ed4(%rip),%rsi        # 4045c9 <_IO_stdin_used+0x5c9>
  4016f5:	bf 02 00 00 00       	mov    $0x2,%edi
  4016fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4016ff:	e8 8c fa ff ff       	call   401190 <__printf_chk@plt>
  401704:	be 00 00 00 00       	mov    $0x0,%esi
  401709:	48 8b 3d 78 5d 00 00 	mov    0x5d78(%rip),%rdi        # 407488 <buf_offset>
  401710:	e8 d1 0f 00 00       	call   4026e6 <launch>
  401715:	b8 00 00 00 00       	mov    $0x0,%eax
  40171a:	48 8b 54 24 58       	mov    0x58(%rsp),%rdx
  40171f:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  401726:	00 00 
  401728:	75 0d                	jne    401737 <main+0x260>
  40172a:	48 83 c4 60          	add    $0x60,%rsp
  40172e:	5b                   	pop    %rbx
  40172f:	5d                   	pop    %rbp
  401730:	41 5c                	pop    %r12
  401732:	41 5d                	pop    %r13
  401734:	41 5e                	pop    %r14
  401736:	c3                   	ret
  401737:	e8 50 0f 00 00       	call   40268c <__stack_chk_fail>

000000000040173c <scramble>:
  40173c:	f3 0f 1e fa          	endbr64
  401740:	48 83 ec 38          	sub    $0x38,%rsp
  401744:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40174b:	00 00 
  40174d:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401752:	31 c0                	xor    %eax,%eax
  401754:	eb 10                	jmp    401766 <scramble+0x2a>
  401756:	69 d0 34 17 00 00    	imul   $0x1734,%eax,%edx
  40175c:	01 fa                	add    %edi,%edx
  40175e:	89 c1                	mov    %eax,%ecx
  401760:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  401763:	83 c0 01             	add    $0x1,%eax
  401766:	83 f8 09             	cmp    $0x9,%eax
  401769:	76 eb                	jbe    401756 <scramble+0x1a>
  40176b:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40176f:	69 c0 03 c2 00 00    	imul   $0xc203,%eax,%eax
  401775:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401779:	8b 04 24             	mov    (%rsp),%eax
  40177c:	69 c0 3a c3 00 00    	imul   $0xc33a,%eax,%eax
  401782:	89 04 24             	mov    %eax,(%rsp)
  401785:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401789:	69 c0 d9 e2 00 00    	imul   $0xe2d9,%eax,%eax
  40178f:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401793:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401797:	69 c0 c4 6b 00 00    	imul   $0x6bc4,%eax,%eax
  40179d:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4017a1:	8b 04 24             	mov    (%rsp),%eax
  4017a4:	69 c0 03 e4 00 00    	imul   $0xe403,%eax,%eax
  4017aa:	89 04 24             	mov    %eax,(%rsp)
  4017ad:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4017b1:	69 c0 ed 00 00 00    	imul   $0xed,%eax,%eax
  4017b7:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4017bb:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4017bf:	69 c0 66 ec 00 00    	imul   $0xec66,%eax,%eax
  4017c5:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4017c9:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4017cd:	69 c0 53 ac 00 00    	imul   $0xac53,%eax,%eax
  4017d3:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4017d7:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4017db:	69 c0 a0 6e 00 00    	imul   $0x6ea0,%eax,%eax
  4017e1:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4017e5:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4017e9:	69 c0 f2 12 00 00    	imul   $0x12f2,%eax,%eax
  4017ef:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4017f3:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4017f7:	69 c0 5f 7a 00 00    	imul   $0x7a5f,%eax,%eax
  4017fd:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401801:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401805:	69 c0 2e 2a 00 00    	imul   $0x2a2e,%eax,%eax
  40180b:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40180f:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401813:	69 c0 3a 71 00 00    	imul   $0x713a,%eax,%eax
  401819:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40181d:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401821:	69 c0 49 14 00 00    	imul   $0x1449,%eax,%eax
  401827:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40182b:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40182f:	69 c0 89 b5 00 00    	imul   $0xb589,%eax,%eax
  401835:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401839:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40183d:	69 c0 49 f9 00 00    	imul   $0xf949,%eax,%eax
  401843:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401847:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40184b:	69 c0 19 c3 00 00    	imul   $0xc319,%eax,%eax
  401851:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401855:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401859:	69 c0 62 97 00 00    	imul   $0x9762,%eax,%eax
  40185f:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401863:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401867:	69 c0 be c7 00 00    	imul   $0xc7be,%eax,%eax
  40186d:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401871:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401875:	69 c0 7c f9 00 00    	imul   $0xf97c,%eax,%eax
  40187b:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40187f:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401883:	69 c0 d5 01 00 00    	imul   $0x1d5,%eax,%eax
  401889:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40188d:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401891:	69 c0 ff c4 00 00    	imul   $0xc4ff,%eax,%eax
  401897:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40189b:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40189f:	69 c0 b3 bb 00 00    	imul   $0xbbb3,%eax,%eax
  4018a5:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4018a9:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4018ad:	69 c0 86 14 00 00    	imul   $0x1486,%eax,%eax
  4018b3:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4018b7:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4018bb:	69 c0 2d f2 00 00    	imul   $0xf22d,%eax,%eax
  4018c1:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4018c5:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4018c9:	69 c0 75 6a 00 00    	imul   $0x6a75,%eax,%eax
  4018cf:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4018d3:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4018d7:	69 c0 9d 27 00 00    	imul   $0x279d,%eax,%eax
  4018dd:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4018e1:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4018e5:	69 c0 db 2a 00 00    	imul   $0x2adb,%eax,%eax
  4018eb:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4018ef:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4018f3:	69 c0 d4 7e 00 00    	imul   $0x7ed4,%eax,%eax
  4018f9:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4018fd:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401901:	69 c0 ec 7a 00 00    	imul   $0x7aec,%eax,%eax
  401907:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40190b:	8b 04 24             	mov    (%rsp),%eax
  40190e:	69 c0 02 fd 00 00    	imul   $0xfd02,%eax,%eax
  401914:	89 04 24             	mov    %eax,(%rsp)
  401917:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40191b:	69 c0 ea ab 00 00    	imul   $0xabea,%eax,%eax
  401921:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401925:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401929:	69 c0 ba 30 00 00    	imul   $0x30ba,%eax,%eax
  40192f:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401933:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401937:	69 c0 0d 66 00 00    	imul   $0x660d,%eax,%eax
  40193d:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401941:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401945:	69 c0 73 46 00 00    	imul   $0x4673,%eax,%eax
  40194b:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40194f:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401953:	69 c0 3a a4 00 00    	imul   $0xa43a,%eax,%eax
  401959:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40195d:	8b 04 24             	mov    (%rsp),%eax
  401960:	69 c0 f3 59 00 00    	imul   $0x59f3,%eax,%eax
  401966:	89 04 24             	mov    %eax,(%rsp)
  401969:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40196d:	69 c0 83 36 00 00    	imul   $0x3683,%eax,%eax
  401973:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401977:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40197b:	69 c0 8c da 00 00    	imul   $0xda8c,%eax,%eax
  401981:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401985:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401989:	69 c0 f9 3f 00 00    	imul   $0x3ff9,%eax,%eax
  40198f:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401993:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401997:	69 c0 81 72 00 00    	imul   $0x7281,%eax,%eax
  40199d:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4019a1:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4019a5:	69 c0 45 39 00 00    	imul   $0x3945,%eax,%eax
  4019ab:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4019af:	8b 04 24             	mov    (%rsp),%eax
  4019b2:	69 c0 13 3f 00 00    	imul   $0x3f13,%eax,%eax
  4019b8:	89 04 24             	mov    %eax,(%rsp)
  4019bb:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4019bf:	69 c0 f6 32 00 00    	imul   $0x32f6,%eax,%eax
  4019c5:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4019c9:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4019cd:	69 c0 45 a3 00 00    	imul   $0xa345,%eax,%eax
  4019d3:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4019d7:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4019db:	69 c0 44 f2 00 00    	imul   $0xf244,%eax,%eax
  4019e1:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4019e5:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4019e9:	69 c0 18 22 00 00    	imul   $0x2218,%eax,%eax
  4019ef:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4019f3:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4019f7:	69 c0 62 60 00 00    	imul   $0x6062,%eax,%eax
  4019fd:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401a01:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401a05:	69 c0 7b e1 00 00    	imul   $0xe17b,%eax,%eax
  401a0b:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401a0f:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401a13:	69 c0 4b 4b 00 00    	imul   $0x4b4b,%eax,%eax
  401a19:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401a1d:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401a21:	69 c0 f9 25 00 00    	imul   $0x25f9,%eax,%eax
  401a27:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401a2b:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401a2f:	69 c0 36 70 00 00    	imul   $0x7036,%eax,%eax
  401a35:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401a39:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401a3d:	69 c0 bf 58 00 00    	imul   $0x58bf,%eax,%eax
  401a43:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401a47:	8b 04 24             	mov    (%rsp),%eax
  401a4a:	69 c0 93 95 00 00    	imul   $0x9593,%eax,%eax
  401a50:	89 04 24             	mov    %eax,(%rsp)
  401a53:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401a57:	69 c0 c2 f1 00 00    	imul   $0xf1c2,%eax,%eax
  401a5d:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401a61:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401a65:	8d 04 80             	lea    (%rax,%rax,4),%eax
  401a68:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401a6c:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401a70:	69 c0 fc 7f 00 00    	imul   $0x7ffc,%eax,%eax
  401a76:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401a7a:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401a7e:	69 c0 61 fe 00 00    	imul   $0xfe61,%eax,%eax
  401a84:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401a88:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401a8c:	69 c0 6b 9d 00 00    	imul   $0x9d6b,%eax,%eax
  401a92:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401a96:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401a9a:	69 c0 f6 7c 00 00    	imul   $0x7cf6,%eax,%eax
  401aa0:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401aa4:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401aa8:	69 c0 3a df 00 00    	imul   $0xdf3a,%eax,%eax
  401aae:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401ab2:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401ab6:	69 c0 f7 e0 00 00    	imul   $0xe0f7,%eax,%eax
  401abc:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401ac0:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401ac4:	69 c0 69 0d 00 00    	imul   $0xd69,%eax,%eax
  401aca:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401ace:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401ad2:	69 c0 25 54 00 00    	imul   $0x5425,%eax,%eax
  401ad8:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401adc:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401ae0:	69 c0 c9 07 00 00    	imul   $0x7c9,%eax,%eax
  401ae6:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401aea:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401aee:	69 c0 d2 16 00 00    	imul   $0x16d2,%eax,%eax
  401af4:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401af8:	8b 04 24             	mov    (%rsp),%eax
  401afb:	69 c0 f5 8e 00 00    	imul   $0x8ef5,%eax,%eax
  401b01:	89 04 24             	mov    %eax,(%rsp)
  401b04:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b08:	69 c0 af ad 00 00    	imul   $0xadaf,%eax,%eax
  401b0e:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b12:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b16:	69 c0 c1 2d 00 00    	imul   $0x2dc1,%eax,%eax
  401b1c:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b20:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401b24:	69 c0 01 1b 00 00    	imul   $0x1b01,%eax,%eax
  401b2a:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401b2e:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401b32:	69 c0 d0 18 00 00    	imul   $0x18d0,%eax,%eax
  401b38:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401b3c:	8b 04 24             	mov    (%rsp),%eax
  401b3f:	69 c0 c6 83 00 00    	imul   $0x83c6,%eax,%eax
  401b45:	89 04 24             	mov    %eax,(%rsp)
  401b48:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401b4c:	69 c0 51 54 00 00    	imul   $0x5451,%eax,%eax
  401b52:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401b56:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401b5a:	69 c0 db 57 00 00    	imul   $0x57db,%eax,%eax
  401b60:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401b64:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401b68:	69 c0 7f b3 00 00    	imul   $0xb37f,%eax,%eax
  401b6e:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401b72:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b76:	69 c0 6d 32 00 00    	imul   $0x326d,%eax,%eax
  401b7c:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b80:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401b84:	69 c0 0b 44 00 00    	imul   $0x440b,%eax,%eax
  401b8a:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401b8e:	8b 04 24             	mov    (%rsp),%eax
  401b91:	69 c0 0b 94 00 00    	imul   $0x940b,%eax,%eax
  401b97:	89 04 24             	mov    %eax,(%rsp)
  401b9a:	8b 04 24             	mov    (%rsp),%eax
  401b9d:	69 c0 be 54 00 00    	imul   $0x54be,%eax,%eax
  401ba3:	89 04 24             	mov    %eax,(%rsp)
  401ba6:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401baa:	69 c0 58 40 00 00    	imul   $0x4058,%eax,%eax
  401bb0:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401bb4:	8b 04 24             	mov    (%rsp),%eax
  401bb7:	69 c0 a0 87 00 00    	imul   $0x87a0,%eax,%eax
  401bbd:	89 04 24             	mov    %eax,(%rsp)
  401bc0:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401bc4:	69 c0 4a 8a 00 00    	imul   $0x8a4a,%eax,%eax
  401bca:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401bce:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401bd2:	69 c0 32 de 00 00    	imul   $0xde32,%eax,%eax
  401bd8:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401bdc:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401be0:	69 c0 4b fe 00 00    	imul   $0xfe4b,%eax,%eax
  401be6:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401bea:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401bee:	69 c0 3c 7b 00 00    	imul   $0x7b3c,%eax,%eax
  401bf4:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401bf8:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401bfc:	69 c0 76 2b 00 00    	imul   $0x2b76,%eax,%eax
  401c02:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401c06:	8b 04 24             	mov    (%rsp),%eax
  401c09:	69 c0 52 34 00 00    	imul   $0x3452,%eax,%eax
  401c0f:	89 04 24             	mov    %eax,(%rsp)
  401c12:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401c16:	69 c0 d8 2c 00 00    	imul   $0x2cd8,%eax,%eax
  401c1c:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401c20:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401c24:	69 c0 64 31 00 00    	imul   $0x3164,%eax,%eax
  401c2a:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401c2e:	b8 00 00 00 00       	mov    $0x0,%eax
  401c33:	ba 00 00 00 00       	mov    $0x0,%edx
  401c38:	eb 0a                	jmp    401c44 <scramble+0x508>
  401c3a:	89 c1                	mov    %eax,%ecx
  401c3c:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  401c3f:	01 ca                	add    %ecx,%edx
  401c41:	83 c0 01             	add    $0x1,%eax
  401c44:	83 f8 09             	cmp    $0x9,%eax
  401c47:	76 f1                	jbe    401c3a <scramble+0x4fe>
  401c49:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  401c4e:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401c55:	00 00 
  401c57:	75 07                	jne    401c60 <scramble+0x524>
  401c59:	89 d0                	mov    %edx,%eax
  401c5b:	48 83 c4 38          	add    $0x38,%rsp
  401c5f:	c3                   	ret
  401c60:	e8 27 0a 00 00       	call   40268c <__stack_chk_fail>

0000000000401c65 <getbuf>:
  401c65:	f3 0f 1e fa          	endbr64
  401c69:	48 83 ec 28          	sub    $0x28,%rsp
  401c6d:	48 89 e7             	mov    %rsp,%rdi
  401c70:	e8 28 05 00 00       	call   40219d <Gets>
  401c75:	b8 01 00 00 00       	mov    $0x1,%eax
  401c7a:	48 83 c4 28          	add    $0x28,%rsp
  401c7e:	c3                   	ret

0000000000401c7f <touch1>:
  401c7f:	f3 0f 1e fa          	endbr64
  401c83:	50                   	push   %rax
  401c84:	58                   	pop    %rax
  401c85:	48 83 ec 08          	sub    $0x8,%rsp
  401c89:	c7 05 91 58 00 00 01 	movl   $0x1,0x5891(%rip)        # 407524 <vlevel>
  401c90:	00 00 00 
  401c93:	48 8d 3d 71 29 00 00 	lea    0x2971(%rip),%rdi        # 40460b <_IO_stdin_used+0x60b>
  401c9a:	e8 e1 f3 ff ff       	call   401080 <puts@plt>
  401c9f:	bf 01 00 00 00       	mov    $0x1,%edi
  401ca4:	e8 71 07 00 00       	call   40241a <validate>
  401ca9:	bf 00 00 00 00       	mov    $0x0,%edi
  401cae:	e8 2d f5 ff ff       	call   4011e0 <exit@plt>

0000000000401cb3 <touch2>:
  401cb3:	f3 0f 1e fa          	endbr64
  401cb7:	50                   	push   %rax
  401cb8:	58                   	pop    %rax
  401cb9:	48 83 ec 08          	sub    $0x8,%rsp
  401cbd:	89 fa                	mov    %edi,%edx
  401cbf:	c7 05 5b 58 00 00 02 	movl   $0x2,0x585b(%rip)        # 407524 <vlevel>
  401cc6:	00 00 00 
  401cc9:	39 3d 5d 58 00 00    	cmp    %edi,0x585d(%rip)        # 40752c <cookie>
  401ccf:	74 2a                	je     401cfb <touch2+0x48>
  401cd1:	48 8d 35 a8 24 00 00 	lea    0x24a8(%rip),%rsi        # 404180 <_IO_stdin_used+0x180>
  401cd8:	bf 02 00 00 00       	mov    $0x2,%edi
  401cdd:	b8 00 00 00 00       	mov    $0x0,%eax
  401ce2:	e8 a9 f4 ff ff       	call   401190 <__printf_chk@plt>
  401ce7:	bf 02 00 00 00       	mov    $0x2,%edi
  401cec:	e8 04 08 00 00       	call   4024f5 <fail>
  401cf1:	bf 00 00 00 00       	mov    $0x0,%edi
  401cf6:	e8 e5 f4 ff ff       	call   4011e0 <exit@plt>
  401cfb:	48 8d 35 56 24 00 00 	lea    0x2456(%rip),%rsi        # 404158 <_IO_stdin_used+0x158>
  401d02:	bf 02 00 00 00       	mov    $0x2,%edi
  401d07:	b8 00 00 00 00       	mov    $0x0,%eax
  401d0c:	e8 7f f4 ff ff       	call   401190 <__printf_chk@plt>
  401d11:	bf 02 00 00 00       	mov    $0x2,%edi
  401d16:	e8 ff 06 00 00       	call   40241a <validate>
  401d1b:	eb d4                	jmp    401cf1 <touch2+0x3e>

0000000000401d1d <hexmatch>:
  401d1d:	f3 0f 1e fa          	endbr64
  401d21:	41 54                	push   %r12
  401d23:	55                   	push   %rbp
  401d24:	53                   	push   %rbx
  401d25:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  401d29:	89 fd                	mov    %edi,%ebp
  401d2b:	48 89 f3             	mov    %rsi,%rbx
  401d2e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401d35:	00 00 
  401d37:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401d3c:	31 c0                	xor    %eax,%eax
  401d3e:	e8 1d f4 ff ff       	call   401160 <random@plt>
  401d43:	48 89 c6             	mov    %rax,%rsi
  401d46:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401d4d:	0a d7 a3 
  401d50:	48 f7 ea             	imul   %rdx
  401d53:	48 8d 0c 32          	lea    (%rdx,%rsi,1),%rcx
  401d57:	48 c1 f9 06          	sar    $0x6,%rcx
  401d5b:	48 89 f0             	mov    %rsi,%rax
  401d5e:	48 c1 f8 3f          	sar    $0x3f,%rax
  401d62:	48 29 c1             	sub    %rax,%rcx
  401d65:	48 8d 04 89          	lea    (%rcx,%rcx,4),%rax
  401d69:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401d6d:	48 c1 e0 02          	shl    $0x2,%rax
  401d71:	48 29 c6             	sub    %rax,%rsi
  401d74:	4c 8d 24 34          	lea    (%rsp,%rsi,1),%r12
  401d78:	ba 6e 00 00 00       	mov    $0x6e,%edx
  401d7d:	48 39 d6             	cmp    %rdx,%rsi
  401d80:	48 0f 43 d6          	cmovae %rsi,%rdx
  401d84:	48 29 f2             	sub    %rsi,%rdx
  401d87:	41 89 e8             	mov    %ebp,%r8d
  401d8a:	48 8d 0d 97 28 00 00 	lea    0x2897(%rip),%rcx        # 404628 <_IO_stdin_used+0x628>
  401d91:	be 02 00 00 00       	mov    $0x2,%esi
  401d96:	4c 89 e7             	mov    %r12,%rdi
  401d99:	b8 00 00 00 00       	mov    $0x0,%eax
  401d9e:	e8 7d f4 ff ff       	call   401220 <__sprintf_chk@plt>
  401da3:	ba 09 00 00 00       	mov    $0x9,%edx
  401da8:	4c 89 e6             	mov    %r12,%rsi
  401dab:	48 89 df             	mov    %rbx,%rdi
  401dae:	e8 ad f2 ff ff       	call   401060 <strncmp@plt>
  401db3:	85 c0                	test   %eax,%eax
  401db5:	0f 94 c0             	sete   %al
  401db8:	48 8b 54 24 78       	mov    0x78(%rsp),%rdx
  401dbd:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  401dc4:	00 00 
  401dc6:	75 0c                	jne    401dd4 <hexmatch+0xb7>
  401dc8:	0f b6 c0             	movzbl %al,%eax
  401dcb:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  401dcf:	5b                   	pop    %rbx
  401dd0:	5d                   	pop    %rbp
  401dd1:	41 5c                	pop    %r12
  401dd3:	c3                   	ret
  401dd4:	e8 b3 08 00 00       	call   40268c <__stack_chk_fail>

0000000000401dd9 <touch3>:
  401dd9:	f3 0f 1e fa          	endbr64
  401ddd:	53                   	push   %rbx
  401dde:	48 89 fb             	mov    %rdi,%rbx
  401de1:	c7 05 39 57 00 00 03 	movl   $0x3,0x5739(%rip)        # 407524 <vlevel>
  401de8:	00 00 00 
  401deb:	48 89 fe             	mov    %rdi,%rsi
  401dee:	8b 3d 38 57 00 00    	mov    0x5738(%rip),%edi        # 40752c <cookie>
  401df4:	e8 24 ff ff ff       	call   401d1d <hexmatch>
  401df9:	85 c0                	test   %eax,%eax
  401dfb:	74 2d                	je     401e2a <touch3+0x51>
  401dfd:	48 89 da             	mov    %rbx,%rdx
  401e00:	48 8d 35 a1 23 00 00 	lea    0x23a1(%rip),%rsi        # 4041a8 <_IO_stdin_used+0x1a8>
  401e07:	bf 02 00 00 00       	mov    $0x2,%edi
  401e0c:	b8 00 00 00 00       	mov    $0x0,%eax
  401e11:	e8 7a f3 ff ff       	call   401190 <__printf_chk@plt>
  401e16:	bf 03 00 00 00       	mov    $0x3,%edi
  401e1b:	e8 fa 05 00 00       	call   40241a <validate>
  401e20:	bf 00 00 00 00       	mov    $0x0,%edi
  401e25:	e8 b6 f3 ff ff       	call   4011e0 <exit@plt>
  401e2a:	48 89 da             	mov    %rbx,%rdx
  401e2d:	48 8d 35 9c 23 00 00 	lea    0x239c(%rip),%rsi        # 4041d0 <_IO_stdin_used+0x1d0>
  401e34:	bf 02 00 00 00       	mov    $0x2,%edi
  401e39:	b8 00 00 00 00       	mov    $0x0,%eax
  401e3e:	e8 4d f3 ff ff       	call   401190 <__printf_chk@plt>
  401e43:	bf 03 00 00 00       	mov    $0x3,%edi
  401e48:	e8 a8 06 00 00       	call   4024f5 <fail>
  401e4d:	eb d1                	jmp    401e20 <touch3+0x47>

0000000000401e4f <test>:
  401e4f:	f3 0f 1e fa          	endbr64
  401e53:	48 83 ec 08          	sub    $0x8,%rsp
  401e57:	b8 00 00 00 00       	mov    $0x0,%eax
  401e5c:	e8 04 fe ff ff       	call   401c65 <getbuf>
  401e61:	89 c2                	mov    %eax,%edx
  401e63:	48 8d 35 8e 23 00 00 	lea    0x238e(%rip),%rsi        # 4041f8 <_IO_stdin_used+0x1f8>
  401e6a:	bf 02 00 00 00       	mov    $0x2,%edi
  401e6f:	b8 00 00 00 00       	mov    $0x0,%eax
  401e74:	e8 17 f3 ff ff       	call   401190 <__printf_chk@plt>
  401e79:	48 83 c4 08          	add    $0x8,%rsp
  401e7d:	c3                   	ret

0000000000401e7e <test2>:
  401e7e:	f3 0f 1e fa          	endbr64
  401e82:	48 83 ec 08          	sub    $0x8,%rsp
  401e86:	b8 00 00 00 00       	mov    $0x0,%eax
  401e8b:	e8 1d 00 00 00       	call   401ead <getbuf_withcanary>
  401e90:	89 c2                	mov    %eax,%edx
  401e92:	48 8d 35 87 23 00 00 	lea    0x2387(%rip),%rsi        # 404220 <_IO_stdin_used+0x220>
  401e99:	bf 02 00 00 00       	mov    $0x2,%edi
  401e9e:	b8 00 00 00 00       	mov    $0x0,%eax
  401ea3:	e8 e8 f2 ff ff       	call   401190 <__printf_chk@plt>
  401ea8:	48 83 c4 08          	add    $0x8,%rsp
  401eac:	c3                   	ret

0000000000401ead <getbuf_withcanary>:
  401ead:	55                   	push   %rbp
  401eae:	48 89 e5             	mov    %rsp,%rbp
  401eb1:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  401eb8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401ebf:	00 00 
  401ec1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401ec5:	31 c0                	xor    %eax,%eax
  401ec7:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  401ece:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401ed5:	48 89 c7             	mov    %rax,%rdi
  401ed8:	e8 c0 02 00 00       	call   40219d <Gets>
  401edd:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401ee0:	48 98                	cltq
  401ee2:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  401ee9:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
  401eed:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401ef4:	ba 80 00 00 00       	mov    $0x80,%edx
  401ef9:	48 89 c6             	mov    %rax,%rsi
  401efc:	48 89 cf             	mov    %rcx,%rdi
  401eff:	e8 3c f2 ff ff       	call   401140 <memcpy@plt>
  401f04:	b8 01 00 00 00       	mov    $0x1,%eax
  401f09:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  401f0d:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401f14:	00 00 
  401f16:	74 05                	je     401f1d <getbuf_withcanary+0x70>
  401f18:	e8 6f 07 00 00       	call   40268c <__stack_chk_fail>
  401f1d:	c9                   	leave
  401f1e:	c3                   	ret

0000000000401f1f <start_farm>:
  401f1f:	f3 0f 1e fa          	endbr64
  401f23:	b8 01 00 00 00       	mov    $0x1,%eax
  401f28:	c3                   	ret

0000000000401f29 <addval_334>:
  401f29:	f3 0f 1e fa          	endbr64
  401f2d:	8d 87 0f 58 58 90    	lea    -0x6fa7a7f1(%rdi),%eax
  401f33:	c3                   	ret

0000000000401f34 <addval_451>:
  401f34:	f3 0f 1e fa          	endbr64
  401f38:	8d 87 e5 72 58 90    	lea    -0x6fa78d1b(%rdi),%eax
  401f3e:	c3                   	ret

0000000000401f3f <getval_471>:
  401f3f:	f3 0f 1e fa          	endbr64
  401f43:	b8 58 91 c3 43       	mov    $0x43c39158,%eax
  401f48:	c3                   	ret

0000000000401f49 <addval_154>:
  401f49:	f3 0f 1e fa          	endbr64
  401f4d:	8d 87 4a 89 c7 c3    	lea    -0x3c3876b6(%rdi),%eax
  401f53:	c3                   	ret

0000000000401f54 <setval_392>:
  401f54:	f3 0f 1e fa          	endbr64
  401f58:	c7 07 48 89 c7 c3    	movl   $0xc3c78948,(%rdi)
  401f5e:	c3                   	ret

0000000000401f5f <getval_283>:
  401f5f:	f3 0f 1e fa          	endbr64
  401f63:	b8 3b e8 f4 50       	mov    $0x50f4e83b,%eax
  401f68:	c3                   	ret

0000000000401f69 <getval_162>:
  401f69:	f3 0f 1e fa          	endbr64
  401f6d:	b8 68 89 c7 90       	mov    $0x90c78968,%eax
  401f72:	c3                   	ret

0000000000401f73 <setval_490>:
  401f73:	f3 0f 1e fa          	endbr64
  401f77:	c7 07 48 89 c7 c3    	movl   $0xc3c78948,(%rdi)
  401f7d:	c3                   	ret

0000000000401f7e <mid_farm>:
  401f7e:	f3 0f 1e fa          	endbr64
  401f82:	b8 01 00 00 00       	mov    $0x1,%eax
  401f87:	c3                   	ret

0000000000401f88 <add_xy>:
  401f88:	f3 0f 1e fa          	endbr64
  401f8c:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  401f90:	c3                   	ret

0000000000401f91 <getval_376>:
  401f91:	f3 0f 1e fa          	endbr64
  401f95:	b8 89 c1 08 c9       	mov    $0xc908c189,%eax
  401f9a:	c3                   	ret

0000000000401f9b <setval_439>:
  401f9b:	f3 0f 1e fa          	endbr64
  401f9f:	c7 07 a9 d6 38 c9    	movl   $0xc938d6a9,(%rdi)
  401fa5:	c3                   	ret

0000000000401fa6 <addval_311>:
  401fa6:	f3 0f 1e fa          	endbr64
  401faa:	8d 87 09 ca 84 db    	lea    -0x247b35f7(%rdi),%eax
  401fb0:	c3                   	ret

0000000000401fb1 <getval_436>:
  401fb1:	f3 0f 1e fa          	endbr64
  401fb5:	b8 89 c1 18 c0       	mov    $0xc018c189,%eax
  401fba:	c3                   	ret

0000000000401fbb <addval_353>:
  401fbb:	f3 0f 1e fa          	endbr64
  401fbf:	8d 87 89 c1 00 c9    	lea    -0x36ff3e77(%rdi),%eax
  401fc5:	c3                   	ret

0000000000401fc6 <addval_366>:
  401fc6:	f3 0f 1e fa          	endbr64
  401fca:	8d 87 48 89 e0 c3    	lea    -0x3c1f76b8(%rdi),%eax
  401fd0:	c3                   	ret

0000000000401fd1 <addval_378>:
  401fd1:	f3 0f 1e fa          	endbr64
  401fd5:	8d 87 09 d6 38 d2    	lea    -0x2dc729f7(%rdi),%eax
  401fdb:	c3                   	ret

0000000000401fdc <addval_483>:
  401fdc:	f3 0f 1e fa          	endbr64
  401fe0:	8d 87 48 89 e0 c1    	lea    -0x3e1f76b8(%rdi),%eax
  401fe6:	c3                   	ret

0000000000401fe7 <getval_385>:
  401fe7:	f3 0f 1e fa          	endbr64
  401feb:	b8 48 c9 e0 c3       	mov    $0xc3e0c948,%eax
  401ff0:	c3                   	ret

0000000000401ff1 <setval_325>:
  401ff1:	f3 0f 1e fa          	endbr64
  401ff5:	c7 07 81 ca 84 db    	movl   $0xdb84ca81,(%rdi)
  401ffb:	c3                   	ret

0000000000401ffc <setval_102>:
  401ffc:	f3 0f 1e fa          	endbr64
  402000:	c7 07 89 d6 90 c2    	movl   $0xc290d689,(%rdi)
  402006:	c3                   	ret

0000000000402007 <setval_321>:
  402007:	f3 0f 1e fa          	endbr64
  40200b:	c7 07 89 ca 91 90    	movl   $0x9091ca89,(%rdi)
  402011:	c3                   	ret

0000000000402012 <setval_449>:
  402012:	f3 0f 1e fa          	endbr64
  402016:	c7 07 89 d6 c1 66    	movl   $0x66c1d689,(%rdi)
  40201c:	c3                   	ret

000000000040201d <getval_493>:
  40201d:	f3 0f 1e fa          	endbr64
  402021:	b8 a9 d6 20 db       	mov    $0xdb20d6a9,%eax
  402026:	c3                   	ret

0000000000402027 <setval_478>:
  402027:	f3 0f 1e fa          	endbr64
  40202b:	c7 07 48 99 e0 90    	movl   $0x90e09948,(%rdi)
  402031:	c3                   	ret

0000000000402032 <getval_180>:
  402032:	f3 0f 1e fa          	endbr64
  402036:	b8 4a 89 e0 c3       	mov    $0xc3e0894a,%eax
  40203b:	c3                   	ret

000000000040203c <addval_109>:
  40203c:	f3 0f 1e fa          	endbr64
  402040:	8d 87 35 89 c1 92    	lea    -0x6d3e76cb(%rdi),%eax
  402046:	c3                   	ret

0000000000402047 <setval_374>:
  402047:	f3 0f 1e fa          	endbr64
  40204b:	c7 07 89 c1 94 c0    	movl   $0xc094c189,(%rdi)
  402051:	c3                   	ret

0000000000402052 <setval_181>:
  402052:	f3 0f 1e fa          	endbr64
  402056:	c7 07 89 ca c3 e2    	movl   $0xe2c3ca89,(%rdi)
  40205c:	c3                   	ret

000000000040205d <setval_259>:
  40205d:	f3 0f 1e fa          	endbr64
  402061:	c7 07 89 ca 30 c9    	movl   $0xc930ca89,(%rdi)
  402067:	c3                   	ret

0000000000402068 <getval_105>:
  402068:	f3 0f 1e fa          	endbr64
  40206c:	b8 89 ca 90 c3       	mov    $0xc390ca89,%eax
  402071:	c3                   	ret

0000000000402072 <addval_494>:
  402072:	f3 0f 1e fa          	endbr64
  402076:	8d 87 89 c1 20 db    	lea    -0x24df3e77(%rdi),%eax
  40207c:	c3                   	ret

000000000040207d <setval_137>:
  40207d:	f3 0f 1e fa          	endbr64
  402081:	c7 07 f2 89 d6 c3    	movl   $0xc3d689f2,(%rdi)
  402087:	c3                   	ret

0000000000402088 <getval_243>:
  402088:	f3 0f 1e fa          	endbr64
  40208c:	b8 5b 99 d6 c3       	mov    $0xc3d6995b,%eax
  402091:	c3                   	ret

0000000000402092 <getval_335>:
  402092:	f3 0f 1e fa          	endbr64
  402096:	b8 48 89 e0 90       	mov    $0x90e08948,%eax
  40209b:	c3                   	ret

000000000040209c <getval_115>:
  40209c:	f3 0f 1e fa          	endbr64
  4020a0:	b8 68 89 e0 c3       	mov    $0xc3e08968,%eax
  4020a5:	c3                   	ret

00000000004020a6 <addval_158>:
  4020a6:	f3 0f 1e fa          	endbr64
  4020aa:	8d 87 89 d6 84 c0    	lea    -0x3f7b2977(%rdi),%eax
  4020b0:	c3                   	ret

00000000004020b1 <getval_457>:
  4020b1:	f3 0f 1e fa          	endbr64
  4020b5:	b8 89 c1 94 c3       	mov    $0xc394c189,%eax
  4020ba:	c3                   	ret

00000000004020bb <addval_400>:
  4020bb:	f3 0f 1e fa          	endbr64
  4020bf:	8d 87 89 ca 94 db    	lea    -0x246b3577(%rdi),%eax
  4020c5:	c3                   	ret

00000000004020c6 <getval_202>:
  4020c6:	f3 0f 1e fa          	endbr64
  4020ca:	b8 48 89 e0 94       	mov    $0x94e08948,%eax
  4020cf:	c3                   	ret

00000000004020d0 <addval_293>:
  4020d0:	f3 0f 1e fa          	endbr64
  4020d4:	8d 87 89 c1 c2 18    	lea    0x18c2c189(%rdi),%eax
  4020da:	c3                   	ret

00000000004020db <setval_479>:
  4020db:	f3 0f 1e fa          	endbr64
  4020df:	c7 07 89 ca 28 db    	movl   $0xdb28ca89,(%rdi)
  4020e5:	c3                   	ret

00000000004020e6 <end_farm>:
  4020e6:	f3 0f 1e fa          	endbr64
  4020ea:	b8 01 00 00 00       	mov    $0x1,%eax
  4020ef:	c3                   	ret

00000000004020f0 <save_char>:
  4020f0:	8b 05 4e 60 00 00    	mov    0x604e(%rip),%eax        # 408144 <gets_cnt>
  4020f6:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  4020fb:	7f 4a                	jg     402147 <save_char+0x57>
  4020fd:	89 f9                	mov    %edi,%ecx
  4020ff:	c0 e9 04             	shr    $0x4,%cl
  402102:	8d 14 40             	lea    (%rax,%rax,2),%edx
  402105:	4c 8d 05 f4 26 00 00 	lea    0x26f4(%rip),%r8        # 404800 <trans_char>
  40210c:	83 e1 0f             	and    $0xf,%ecx
  40210f:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  402114:	48 8d 0d 25 54 00 00 	lea    0x5425(%rip),%rcx        # 407540 <gets_buf>
  40211b:	48 63 f2             	movslq %edx,%rsi
  40211e:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  402122:	8d 72 01             	lea    0x1(%rdx),%esi
  402125:	83 e7 0f             	and    $0xf,%edi
  402128:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  40212d:	48 63 f6             	movslq %esi,%rsi
  402130:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  402134:	83 c2 02             	add    $0x2,%edx
  402137:	48 63 d2             	movslq %edx,%rdx
  40213a:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  40213e:	83 c0 01             	add    $0x1,%eax
  402141:	89 05 fd 5f 00 00    	mov    %eax,0x5ffd(%rip)        # 408144 <gets_cnt>
  402147:	c3                   	ret

0000000000402148 <save_term>:
  402148:	8b 05 f6 5f 00 00    	mov    0x5ff6(%rip),%eax        # 408144 <gets_cnt>
  40214e:	8d 04 40             	lea    (%rax,%rax,2),%eax
  402151:	48 98                	cltq
  402153:	48 8d 15 e6 53 00 00 	lea    0x53e6(%rip),%rdx        # 407540 <gets_buf>
  40215a:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  40215e:	c3                   	ret

000000000040215f <check_fail>:
  40215f:	f3 0f 1e fa          	endbr64
  402163:	50                   	push   %rax
  402164:	58                   	pop    %rax
  402165:	48 83 ec 08          	sub    $0x8,%rsp
  402169:	0f be 15 d8 5f 00 00 	movsbl 0x5fd8(%rip),%edx        # 408148 <target_prefix>
  402170:	4c 8d 05 c9 53 00 00 	lea    0x53c9(%rip),%r8        # 407540 <gets_buf>
  402177:	8b 0d a3 53 00 00    	mov    0x53a3(%rip),%ecx        # 407520 <check_level>
  40217d:	48 8d 35 a9 24 00 00 	lea    0x24a9(%rip),%rsi        # 40462d <_IO_stdin_used+0x62d>
  402184:	bf 02 00 00 00       	mov    $0x2,%edi
  402189:	b8 00 00 00 00       	mov    $0x0,%eax
  40218e:	e8 fd ef ff ff       	call   401190 <__printf_chk@plt>
  402193:	bf 01 00 00 00       	mov    $0x1,%edi
  402198:	e8 43 f0 ff ff       	call   4011e0 <exit@plt>

000000000040219d <Gets>:
  40219d:	f3 0f 1e fa          	endbr64
  4021a1:	41 54                	push   %r12
  4021a3:	55                   	push   %rbp
  4021a4:	53                   	push   %rbx
  4021a5:	49 89 fc             	mov    %rdi,%r12
  4021a8:	c7 05 92 5f 00 00 00 	movl   $0x0,0x5f92(%rip)        # 408144 <gets_cnt>
  4021af:	00 00 00 
  4021b2:	48 89 fb             	mov    %rdi,%rbx
  4021b5:	eb 11                	jmp    4021c8 <Gets+0x2b>
  4021b7:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  4021bb:	88 03                	mov    %al,(%rbx)
  4021bd:	0f b6 f8             	movzbl %al,%edi
  4021c0:	e8 2b ff ff ff       	call   4020f0 <save_char>
  4021c5:	48 89 eb             	mov    %rbp,%rbx
  4021c8:	48 8b 3d 49 53 00 00 	mov    0x5349(%rip),%rdi        # 407518 <infile>
  4021cf:	e8 3c f0 ff ff       	call   401210 <getc@plt>
  4021d4:	83 f8 ff             	cmp    $0xffffffff,%eax
  4021d7:	74 05                	je     4021de <Gets+0x41>
  4021d9:	83 f8 0a             	cmp    $0xa,%eax
  4021dc:	75 d9                	jne    4021b7 <Gets+0x1a>
  4021de:	c6 03 00             	movb   $0x0,(%rbx)
  4021e1:	b8 00 00 00 00       	mov    $0x0,%eax
  4021e6:	e8 5d ff ff ff       	call   402148 <save_term>
  4021eb:	4c 89 e0             	mov    %r12,%rax
  4021ee:	5b                   	pop    %rbx
  4021ef:	5d                   	pop    %rbp
  4021f0:	41 5c                	pop    %r12
  4021f2:	c3                   	ret

00000000004021f3 <notify_server>:
  4021f3:	f3 0f 1e fa          	endbr64
  4021f7:	55                   	push   %rbp
  4021f8:	53                   	push   %rbx
  4021f9:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
  402200:	ff 
  402201:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402208:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  40220d:	4c 39 dc             	cmp    %r11,%rsp
  402210:	75 ef                	jne    402201 <notify_server+0xe>
  402212:	48 83 ec 18          	sub    $0x18,%rsp
  402216:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40221d:	00 00 
  40221f:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  402226:	00 
  402227:	31 c0                	xor    %eax,%eax
  402229:	83 3d 00 53 00 00 00 	cmpl   $0x0,0x5300(%rip)        # 407530 <is_checker>
  402230:	0f 85 c2 01 00 00    	jne    4023f8 <notify_server+0x205>
  402236:	89 fb                	mov    %edi,%ebx
  402238:	81 3d 02 5f 00 00 9c 	cmpl   $0x1f9c,0x5f02(%rip)        # 408144 <gets_cnt>
  40223f:	1f 00 00 
  402242:	0f 8f bd 00 00 00    	jg     402305 <notify_server+0x112>
  402248:	0f be 05 f9 5e 00 00 	movsbl 0x5ef9(%rip),%eax        # 408148 <target_prefix>
  40224f:	83 3d 2a 52 00 00 00 	cmpl   $0x0,0x522a(%rip)        # 407480 <notify>
  402256:	0f 84 c4 00 00 00    	je     402320 <notify_server+0x12d>
  40225c:	8b 15 c6 52 00 00    	mov    0x52c6(%rip),%edx        # 407528 <authkey>
  402262:	85 db                	test   %ebx,%ebx
  402264:	0f 84 c0 00 00 00    	je     40232a <notify_server+0x137>
  40226a:	48 8d 2d d2 23 00 00 	lea    0x23d2(%rip),%rbp        # 404643 <_IO_stdin_used+0x643>
  402271:	48 89 e7             	mov    %rsp,%rdi
  402274:	48 8d 0d c5 52 00 00 	lea    0x52c5(%rip),%rcx        # 407540 <gets_buf>
  40227b:	51                   	push   %rcx
  40227c:	56                   	push   %rsi
  40227d:	50                   	push   %rax
  40227e:	52                   	push   %rdx
  40227f:	49 89 e9             	mov    %rbp,%r9
  402282:	44 8b 05 a7 4e 00 00 	mov    0x4ea7(%rip),%r8d        # 407130 <target_id>
  402289:	48 8d 0d bd 23 00 00 	lea    0x23bd(%rip),%rcx        # 40464d <_IO_stdin_used+0x64d>
  402290:	ba 00 20 00 00       	mov    $0x2000,%edx
  402295:	be 02 00 00 00       	mov    $0x2,%esi
  40229a:	b8 00 00 00 00       	mov    $0x0,%eax
  40229f:	e8 7c ef ff ff       	call   401220 <__sprintf_chk@plt>
  4022a4:	48 83 c4 20          	add    $0x20,%rsp
  4022a8:	83 3d d1 51 00 00 00 	cmpl   $0x0,0x51d1(%rip)        # 407480 <notify>
  4022af:	0f 84 ba 00 00 00    	je     40236f <notify_server+0x17c>
  4022b5:	48 89 e1             	mov    %rsp,%rcx
  4022b8:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  4022bf:	00 
  4022c0:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4022c6:	48 8b 15 7b 4e 00 00 	mov    0x4e7b(%rip),%rdx        # 407148 <lab>
  4022cd:	48 8b 35 7c 4e 00 00 	mov    0x4e7c(%rip),%rsi        # 407150 <course>
  4022d4:	48 8b 3d 65 4e 00 00 	mov    0x4e65(%rip),%rdi        # 407140 <user_id>
  4022db:	e8 4e 12 00 00       	call   40352e <driver_post>
  4022e0:	85 c0                	test   %eax,%eax
  4022e2:	78 52                	js     402336 <notify_server+0x143>
  4022e4:	85 db                	test   %ebx,%ebx
  4022e6:	74 76                	je     40235e <notify_server+0x16b>
  4022e8:	48 8d 3d 91 1f 00 00 	lea    0x1f91(%rip),%rdi        # 404280 <_IO_stdin_used+0x280>
  4022ef:	e8 8c ed ff ff       	call   401080 <puts@plt>
  4022f4:	48 8d 3d 7a 23 00 00 	lea    0x237a(%rip),%rdi        # 404675 <_IO_stdin_used+0x675>
  4022fb:	e8 80 ed ff ff       	call   401080 <puts@plt>
  402300:	e9 f3 00 00 00       	jmp    4023f8 <notify_server+0x205>
  402305:	48 8d 35 44 1f 00 00 	lea    0x1f44(%rip),%rsi        # 404250 <_IO_stdin_used+0x250>
  40230c:	bf 02 00 00 00       	mov    $0x2,%edi
  402311:	e8 7a ee ff ff       	call   401190 <__printf_chk@plt>
  402316:	bf 01 00 00 00       	mov    $0x1,%edi
  40231b:	e8 c0 ee ff ff       	call   4011e0 <exit@plt>
  402320:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  402325:	e9 38 ff ff ff       	jmp    402262 <notify_server+0x6f>
  40232a:	48 8d 2d 17 23 00 00 	lea    0x2317(%rip),%rbp        # 404648 <_IO_stdin_used+0x648>
  402331:	e9 3b ff ff ff       	jmp    402271 <notify_server+0x7e>
  402336:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  40233d:	00 
  40233e:	48 8d 35 24 23 00 00 	lea    0x2324(%rip),%rsi        # 404669 <_IO_stdin_used+0x669>
  402345:	bf 02 00 00 00       	mov    $0x2,%edi
  40234a:	b8 00 00 00 00       	mov    $0x0,%eax
  40234f:	e8 3c ee ff ff       	call   401190 <__printf_chk@plt>
  402354:	bf 01 00 00 00       	mov    $0x1,%edi
  402359:	e8 82 ee ff ff       	call   4011e0 <exit@plt>
  40235e:	48 8d 3d 1a 23 00 00 	lea    0x231a(%rip),%rdi        # 40467f <_IO_stdin_used+0x67f>
  402365:	e8 16 ed ff ff       	call   401080 <puts@plt>
  40236a:	e9 89 00 00 00       	jmp    4023f8 <notify_server+0x205>
  40236f:	48 89 ea             	mov    %rbp,%rdx
  402372:	48 8d 35 3f 1f 00 00 	lea    0x1f3f(%rip),%rsi        # 4042b8 <_IO_stdin_used+0x2b8>
  402379:	bf 02 00 00 00       	mov    $0x2,%edi
  40237e:	b8 00 00 00 00       	mov    $0x0,%eax
  402383:	e8 08 ee ff ff       	call   401190 <__printf_chk@plt>
  402388:	48 8b 15 b1 4d 00 00 	mov    0x4db1(%rip),%rdx        # 407140 <user_id>
  40238f:	48 8d 35 f0 22 00 00 	lea    0x22f0(%rip),%rsi        # 404686 <_IO_stdin_used+0x686>
  402396:	bf 02 00 00 00       	mov    $0x2,%edi
  40239b:	b8 00 00 00 00       	mov    $0x0,%eax
  4023a0:	e8 eb ed ff ff       	call   401190 <__printf_chk@plt>
  4023a5:	48 8b 15 a4 4d 00 00 	mov    0x4da4(%rip),%rdx        # 407150 <course>
  4023ac:	48 8d 35 e0 22 00 00 	lea    0x22e0(%rip),%rsi        # 404693 <_IO_stdin_used+0x693>
  4023b3:	bf 02 00 00 00       	mov    $0x2,%edi
  4023b8:	b8 00 00 00 00       	mov    $0x0,%eax
  4023bd:	e8 ce ed ff ff       	call   401190 <__printf_chk@plt>
  4023c2:	48 8b 15 7f 4d 00 00 	mov    0x4d7f(%rip),%rdx        # 407148 <lab>
  4023c9:	48 8d 35 cf 22 00 00 	lea    0x22cf(%rip),%rsi        # 40469f <_IO_stdin_used+0x69f>
  4023d0:	bf 02 00 00 00       	mov    $0x2,%edi
  4023d5:	b8 00 00 00 00       	mov    $0x0,%eax
  4023da:	e8 b1 ed ff ff       	call   401190 <__printf_chk@plt>
  4023df:	48 89 e2             	mov    %rsp,%rdx
  4023e2:	48 8d 35 bf 22 00 00 	lea    0x22bf(%rip),%rsi        # 4046a8 <_IO_stdin_used+0x6a8>
  4023e9:	bf 02 00 00 00       	mov    $0x2,%edi
  4023ee:	b8 00 00 00 00       	mov    $0x0,%eax
  4023f3:	e8 98 ed ff ff       	call   401190 <__printf_chk@plt>
  4023f8:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  4023ff:	00 
  402400:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402407:	00 00 
  402409:	75 0a                	jne    402415 <notify_server+0x222>
  40240b:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  402412:	5b                   	pop    %rbx
  402413:	5d                   	pop    %rbp
  402414:	c3                   	ret
  402415:	e8 72 02 00 00       	call   40268c <__stack_chk_fail>

000000000040241a <validate>:
  40241a:	f3 0f 1e fa          	endbr64
  40241e:	53                   	push   %rbx
  40241f:	89 fb                	mov    %edi,%ebx
  402421:	83 3d 08 51 00 00 00 	cmpl   $0x0,0x5108(%rip)        # 407530 <is_checker>
  402428:	74 79                	je     4024a3 <validate+0x89>
  40242a:	39 3d f4 50 00 00    	cmp    %edi,0x50f4(%rip)        # 407524 <vlevel>
  402430:	75 39                	jne    40246b <validate+0x51>
  402432:	8b 15 e8 50 00 00    	mov    0x50e8(%rip),%edx        # 407520 <check_level>
  402438:	39 fa                	cmp    %edi,%edx
  40243a:	75 45                	jne    402481 <validate+0x67>
  40243c:	0f be 0d 05 5d 00 00 	movsbl 0x5d05(%rip),%ecx        # 408148 <target_prefix>
  402443:	4c 8d 0d f6 50 00 00 	lea    0x50f6(%rip),%r9        # 407540 <gets_buf>
  40244a:	41 89 f8             	mov    %edi,%r8d
  40244d:	8b 15 d5 50 00 00    	mov    0x50d5(%rip),%edx        # 407528 <authkey>
  402453:	48 8d 35 ae 1e 00 00 	lea    0x1eae(%rip),%rsi        # 404308 <_IO_stdin_used+0x308>
  40245a:	bf 02 00 00 00       	mov    $0x2,%edi
  40245f:	b8 00 00 00 00       	mov    $0x0,%eax
  402464:	e8 27 ed ff ff       	call   401190 <__printf_chk@plt>
  402469:	5b                   	pop    %rbx
  40246a:	c3                   	ret
  40246b:	48 8d 3d 42 22 00 00 	lea    0x2242(%rip),%rdi        # 4046b4 <_IO_stdin_used+0x6b4>
  402472:	e8 09 ec ff ff       	call   401080 <puts@plt>
  402477:	b8 00 00 00 00       	mov    $0x0,%eax
  40247c:	e8 de fc ff ff       	call   40215f <check_fail>
  402481:	89 f9                	mov    %edi,%ecx
  402483:	48 8d 35 56 1e 00 00 	lea    0x1e56(%rip),%rsi        # 4042e0 <_IO_stdin_used+0x2e0>
  40248a:	bf 02 00 00 00       	mov    $0x2,%edi
  40248f:	b8 00 00 00 00       	mov    $0x0,%eax
  402494:	e8 f7 ec ff ff       	call   401190 <__printf_chk@plt>
  402499:	b8 00 00 00 00       	mov    $0x0,%eax
  40249e:	e8 bc fc ff ff       	call   40215f <check_fail>
  4024a3:	39 3d 7b 50 00 00    	cmp    %edi,0x507b(%rip)        # 407524 <vlevel>
  4024a9:	74 1a                	je     4024c5 <validate+0xab>
  4024ab:	48 8d 3d 02 22 00 00 	lea    0x2202(%rip),%rdi        # 4046b4 <_IO_stdin_used+0x6b4>
  4024b2:	e8 c9 eb ff ff       	call   401080 <puts@plt>
  4024b7:	89 de                	mov    %ebx,%esi
  4024b9:	bf 00 00 00 00       	mov    $0x0,%edi
  4024be:	e8 30 fd ff ff       	call   4021f3 <notify_server>
  4024c3:	eb a4                	jmp    402469 <validate+0x4f>
  4024c5:	0f be 0d 7c 5c 00 00 	movsbl 0x5c7c(%rip),%ecx        # 408148 <target_prefix>
  4024cc:	89 fa                	mov    %edi,%edx
  4024ce:	48 8d 35 5b 1e 00 00 	lea    0x1e5b(%rip),%rsi        # 404330 <_IO_stdin_used+0x330>
  4024d5:	bf 02 00 00 00       	mov    $0x2,%edi
  4024da:	b8 00 00 00 00       	mov    $0x0,%eax
  4024df:	e8 ac ec ff ff       	call   401190 <__printf_chk@plt>
  4024e4:	89 de                	mov    %ebx,%esi
  4024e6:	bf 01 00 00 00       	mov    $0x1,%edi
  4024eb:	e8 03 fd ff ff       	call   4021f3 <notify_server>
  4024f0:	e9 74 ff ff ff       	jmp    402469 <validate+0x4f>

00000000004024f5 <fail>:
  4024f5:	f3 0f 1e fa          	endbr64
  4024f9:	48 83 ec 08          	sub    $0x8,%rsp
  4024fd:	83 3d 2c 50 00 00 00 	cmpl   $0x0,0x502c(%rip)        # 407530 <is_checker>
  402504:	75 11                	jne    402517 <fail+0x22>
  402506:	89 fe                	mov    %edi,%esi
  402508:	bf 00 00 00 00       	mov    $0x0,%edi
  40250d:	e8 e1 fc ff ff       	call   4021f3 <notify_server>
  402512:	48 83 c4 08          	add    $0x8,%rsp
  402516:	c3                   	ret
  402517:	b8 00 00 00 00       	mov    $0x0,%eax
  40251c:	e8 3e fc ff ff       	call   40215f <check_fail>

0000000000402521 <bushandler>:
  402521:	f3 0f 1e fa          	endbr64
  402525:	50                   	push   %rax
  402526:	58                   	pop    %rax
  402527:	48 83 ec 08          	sub    $0x8,%rsp
  40252b:	83 3d fe 4f 00 00 00 	cmpl   $0x0,0x4ffe(%rip)        # 407530 <is_checker>
  402532:	74 16                	je     40254a <bushandler+0x29>
  402534:	48 8d 3d 97 21 00 00 	lea    0x2197(%rip),%rdi        # 4046d2 <_IO_stdin_used+0x6d2>
  40253b:	e8 40 eb ff ff       	call   401080 <puts@plt>
  402540:	b8 00 00 00 00       	mov    $0x0,%eax
  402545:	e8 15 fc ff ff       	call   40215f <check_fail>
  40254a:	48 8d 3d 17 1e 00 00 	lea    0x1e17(%rip),%rdi        # 404368 <_IO_stdin_used+0x368>
  402551:	e8 2a eb ff ff       	call   401080 <puts@plt>
  402556:	48 8d 3d 7f 21 00 00 	lea    0x217f(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  40255d:	e8 1e eb ff ff       	call   401080 <puts@plt>
  402562:	be 00 00 00 00       	mov    $0x0,%esi
  402567:	bf 00 00 00 00       	mov    $0x0,%edi
  40256c:	e8 82 fc ff ff       	call   4021f3 <notify_server>
  402571:	bf 01 00 00 00       	mov    $0x1,%edi
  402576:	e8 65 ec ff ff       	call   4011e0 <exit@plt>

000000000040257b <seghandler>:
  40257b:	f3 0f 1e fa          	endbr64
  40257f:	50                   	push   %rax
  402580:	58                   	pop    %rax
  402581:	48 83 ec 08          	sub    $0x8,%rsp
  402585:	83 3d a4 4f 00 00 00 	cmpl   $0x0,0x4fa4(%rip)        # 407530 <is_checker>
  40258c:	74 16                	je     4025a4 <seghandler+0x29>
  40258e:	48 8d 3d 5d 21 00 00 	lea    0x215d(%rip),%rdi        # 4046f2 <_IO_stdin_used+0x6f2>
  402595:	e8 e6 ea ff ff       	call   401080 <puts@plt>
  40259a:	b8 00 00 00 00       	mov    $0x0,%eax
  40259f:	e8 bb fb ff ff       	call   40215f <check_fail>
  4025a4:	48 8d 3d dd 1d 00 00 	lea    0x1ddd(%rip),%rdi        # 404388 <_IO_stdin_used+0x388>
  4025ab:	e8 d0 ea ff ff       	call   401080 <puts@plt>
  4025b0:	48 8d 3d 25 21 00 00 	lea    0x2125(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  4025b7:	e8 c4 ea ff ff       	call   401080 <puts@plt>
  4025bc:	be 00 00 00 00       	mov    $0x0,%esi
  4025c1:	bf 00 00 00 00       	mov    $0x0,%edi
  4025c6:	e8 28 fc ff ff       	call   4021f3 <notify_server>
  4025cb:	bf 01 00 00 00       	mov    $0x1,%edi
  4025d0:	e8 0b ec ff ff       	call   4011e0 <exit@plt>

00000000004025d5 <illegalhandler>:
  4025d5:	f3 0f 1e fa          	endbr64
  4025d9:	50                   	push   %rax
  4025da:	58                   	pop    %rax
  4025db:	48 83 ec 08          	sub    $0x8,%rsp
  4025df:	83 3d 4a 4f 00 00 00 	cmpl   $0x0,0x4f4a(%rip)        # 407530 <is_checker>
  4025e6:	74 16                	je     4025fe <illegalhandler+0x29>
  4025e8:	48 8d 3d 16 21 00 00 	lea    0x2116(%rip),%rdi        # 404705 <_IO_stdin_used+0x705>
  4025ef:	e8 8c ea ff ff       	call   401080 <puts@plt>
  4025f4:	b8 00 00 00 00       	mov    $0x0,%eax
  4025f9:	e8 61 fb ff ff       	call   40215f <check_fail>
  4025fe:	48 8d 3d ab 1d 00 00 	lea    0x1dab(%rip),%rdi        # 4043b0 <_IO_stdin_used+0x3b0>
  402605:	e8 76 ea ff ff       	call   401080 <puts@plt>
  40260a:	48 8d 3d cb 20 00 00 	lea    0x20cb(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  402611:	e8 6a ea ff ff       	call   401080 <puts@plt>
  402616:	be 00 00 00 00       	mov    $0x0,%esi
  40261b:	bf 00 00 00 00       	mov    $0x0,%edi
  402620:	e8 ce fb ff ff       	call   4021f3 <notify_server>
  402625:	bf 01 00 00 00       	mov    $0x1,%edi
  40262a:	e8 b1 eb ff ff       	call   4011e0 <exit@plt>

000000000040262f <sigalrmhandler>:
  40262f:	f3 0f 1e fa          	endbr64
  402633:	50                   	push   %rax
  402634:	58                   	pop    %rax
  402635:	48 83 ec 08          	sub    $0x8,%rsp
  402639:	83 3d f0 4e 00 00 00 	cmpl   $0x0,0x4ef0(%rip)        # 407530 <is_checker>
  402640:	74 16                	je     402658 <sigalrmhandler+0x29>
  402642:	48 8d 3d d0 20 00 00 	lea    0x20d0(%rip),%rdi        # 404719 <_IO_stdin_used+0x719>
  402649:	e8 32 ea ff ff       	call   401080 <puts@plt>
  40264e:	b8 00 00 00 00       	mov    $0x0,%eax
  402653:	e8 07 fb ff ff       	call   40215f <check_fail>
  402658:	ba 02 00 00 00       	mov    $0x2,%edx
  40265d:	48 8d 35 7c 1d 00 00 	lea    0x1d7c(%rip),%rsi        # 4043e0 <_IO_stdin_used+0x3e0>
  402664:	bf 02 00 00 00       	mov    $0x2,%edi
  402669:	b8 00 00 00 00       	mov    $0x0,%eax
  40266e:	e8 1d eb ff ff       	call   401190 <__printf_chk@plt>
  402673:	be 00 00 00 00       	mov    $0x0,%esi
  402678:	bf 00 00 00 00       	mov    $0x0,%edi
  40267d:	e8 71 fb ff ff       	call   4021f3 <notify_server>
  402682:	bf 01 00 00 00       	mov    $0x1,%edi
  402687:	e8 54 eb ff ff       	call   4011e0 <exit@plt>

000000000040268c <__stack_chk_fail>:
  40268c:	f3 0f 1e fa          	endbr64
  402690:	50                   	push   %rax
  402691:	58                   	pop    %rax
  402692:	48 83 ec 08          	sub    $0x8,%rsp
  402696:	83 3d 93 4e 00 00 00 	cmpl   $0x0,0x4e93(%rip)        # 407530 <is_checker>
  40269d:	74 16                	je     4026b5 <__stack_chk_fail+0x29>
  40269f:	48 8d 3d 7b 20 00 00 	lea    0x207b(%rip),%rdi        # 404721 <_IO_stdin_used+0x721>
  4026a6:	e8 d5 e9 ff ff       	call   401080 <puts@plt>
  4026ab:	b8 00 00 00 00       	mov    $0x0,%eax
  4026b0:	e8 aa fa ff ff       	call   40215f <check_fail>
  4026b5:	48 8d 3d 5c 1d 00 00 	lea    0x1d5c(%rip),%rdi        # 404418 <_IO_stdin_used+0x418>
  4026bc:	e8 bf e9 ff ff       	call   401080 <puts@plt>
  4026c1:	48 8d 3d 14 20 00 00 	lea    0x2014(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  4026c8:	e8 b3 e9 ff ff       	call   401080 <puts@plt>
  4026cd:	be 00 00 00 00       	mov    $0x0,%esi
  4026d2:	bf 00 00 00 00       	mov    $0x0,%edi
  4026d7:	e8 17 fb ff ff       	call   4021f3 <notify_server>
  4026dc:	bf 01 00 00 00       	mov    $0x1,%edi
  4026e1:	e8 fa ea ff ff       	call   4011e0 <exit@plt>

00000000004026e6 <launch>:
  4026e6:	f3 0f 1e fa          	endbr64
  4026ea:	55                   	push   %rbp
  4026eb:	48 89 e5             	mov    %rsp,%rbp
  4026ee:	53                   	push   %rbx
  4026ef:	48 83 ec 18          	sub    $0x18,%rsp
  4026f3:	48 89 fa             	mov    %rdi,%rdx
  4026f6:	89 f3                	mov    %esi,%ebx
  4026f8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4026ff:	00 00 
  402701:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  402705:	31 c0                	xor    %eax,%eax
  402707:	48 8d 47 17          	lea    0x17(%rdi),%rax
  40270b:	48 89 c6             	mov    %rax,%rsi
  40270e:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
  402712:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  402718:	48 89 e1             	mov    %rsp,%rcx
  40271b:	48 29 c1             	sub    %rax,%rcx
  40271e:	48 39 cc             	cmp    %rcx,%rsp
  402721:	74 12                	je     402735 <launch+0x4f>
  402723:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  40272a:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  402731:	00 00 
  402733:	eb e9                	jmp    40271e <launch+0x38>
  402735:	48 89 f0             	mov    %rsi,%rax
  402738:	25 ff 0f 00 00       	and    $0xfff,%eax
  40273d:	48 29 c4             	sub    %rax,%rsp
  402740:	48 85 c0             	test   %rax,%rax
  402743:	74 06                	je     40274b <launch+0x65>
  402745:	48 83 4c 04 f8 00    	orq    $0x0,-0x8(%rsp,%rax,1)
  40274b:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  402750:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  402754:	48 89 d1             	mov    %rdx,%rcx
  402757:	be f4 00 00 00       	mov    $0xf4,%esi
  40275c:	e8 6f ea ff ff       	call   4011d0 <__memset_chk@plt>
  402761:	48 8b 05 38 4d 00 00 	mov    0x4d38(%rip),%rax        # 4074a0 <stdin@GLIBC_2.2.5>
  402768:	48 39 05 a9 4d 00 00 	cmp    %rax,0x4da9(%rip)        # 407518 <infile>
  40276f:	74 42                	je     4027b3 <launch+0xcd>
  402771:	c7 05 a9 4d 00 00 00 	movl   $0x0,0x4da9(%rip)        # 407524 <vlevel>
  402778:	00 00 00 
  40277b:	85 db                	test   %ebx,%ebx
  40277d:	75 4c                	jne    4027cb <launch+0xe5>
  40277f:	b8 00 00 00 00       	mov    $0x0,%eax
  402784:	e8 c6 f6 ff ff       	call   401e4f <test>
  402789:	83 3d a0 4d 00 00 00 	cmpl   $0x0,0x4da0(%rip)        # 407530 <is_checker>
  402790:	75 45                	jne    4027d7 <launch+0xf1>
  402792:	48 8d 3d af 1f 00 00 	lea    0x1faf(%rip),%rdi        # 404748 <_IO_stdin_used+0x748>
  402799:	e8 e2 e8 ff ff       	call   401080 <puts@plt>
  40279e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4027a2:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4027a9:	00 00 
  4027ab:	75 40                	jne    4027ed <launch+0x107>
  4027ad:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  4027b1:	c9                   	leave
  4027b2:	c3                   	ret
  4027b3:	48 8d 35 76 1f 00 00 	lea    0x1f76(%rip),%rsi        # 404730 <_IO_stdin_used+0x730>
  4027ba:	bf 02 00 00 00       	mov    $0x2,%edi
  4027bf:	b8 00 00 00 00       	mov    $0x0,%eax
  4027c4:	e8 c7 e9 ff ff       	call   401190 <__printf_chk@plt>
  4027c9:	eb a6                	jmp    402771 <launch+0x8b>
  4027cb:	b8 00 00 00 00       	mov    $0x0,%eax
  4027d0:	e8 a9 f6 ff ff       	call   401e7e <test2>
  4027d5:	eb b2                	jmp    402789 <launch+0xa3>
  4027d7:	48 8d 3d 5f 1f 00 00 	lea    0x1f5f(%rip),%rdi        # 40473d <_IO_stdin_used+0x73d>
  4027de:	e8 9d e8 ff ff       	call   401080 <puts@plt>
  4027e3:	b8 00 00 00 00       	mov    $0x0,%eax
  4027e8:	e8 72 f9 ff ff       	call   40215f <check_fail>
  4027ed:	e8 9a fe ff ff       	call   40268c <__stack_chk_fail>

00000000004027f2 <stable_launch>:
  4027f2:	f3 0f 1e fa          	endbr64
  4027f6:	55                   	push   %rbp
  4027f7:	53                   	push   %rbx
  4027f8:	48 83 ec 08          	sub    $0x8,%rsp
  4027fc:	89 f5                	mov    %esi,%ebp
  4027fe:	48 89 3d 0b 4d 00 00 	mov    %rdi,0x4d0b(%rip)        # 407510 <global_offset>
  402805:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  40280b:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402811:	b9 32 01 00 00       	mov    $0x132,%ecx
  402816:	ba 07 00 00 00       	mov    $0x7,%edx
  40281b:	be 00 00 10 00       	mov    $0x100000,%esi
  402820:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402825:	e8 86 e8 ff ff       	call   4010b0 <mmap@plt>
  40282a:	48 89 c3             	mov    %rax,%rbx
  40282d:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  402833:	75 4a                	jne    40287f <stable_launch+0x8d>
  402835:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  40283c:	48 89 15 c5 4c 00 00 	mov    %rdx,0x4cc5(%rip)        # 407508 <stack_top>
  402843:	48 89 e0             	mov    %rsp,%rax
  402846:	48 89 d4             	mov    %rdx,%rsp
  402849:	48 89 c2             	mov    %rax,%rdx
  40284c:	48 89 15 ad 4c 00 00 	mov    %rdx,0x4cad(%rip)        # 407500 <global_save_stack>
  402853:	89 ee                	mov    %ebp,%esi
  402855:	48 8b 3d b4 4c 00 00 	mov    0x4cb4(%rip),%rdi        # 407510 <global_offset>
  40285c:	e8 85 fe ff ff       	call   4026e6 <launch>
  402861:	48 8b 05 98 4c 00 00 	mov    0x4c98(%rip),%rax        # 407500 <global_save_stack>
  402868:	48 89 c4             	mov    %rax,%rsp
  40286b:	be 00 00 10 00       	mov    $0x100000,%esi
  402870:	48 89 df             	mov    %rbx,%rdi
  402873:	e8 08 e9 ff ff       	call   401180 <munmap@plt>
  402878:	48 83 c4 08          	add    $0x8,%rsp
  40287c:	5b                   	pop    %rbx
  40287d:	5d                   	pop    %rbp
  40287e:	c3                   	ret
  40287f:	be 00 00 10 00       	mov    $0x100000,%esi
  402884:	48 89 c7             	mov    %rax,%rdi
  402887:	e8 f4 e8 ff ff       	call   401180 <munmap@plt>
  40288c:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  402891:	48 8d 15 a8 1b 00 00 	lea    0x1ba8(%rip),%rdx        # 404440 <_IO_stdin_used+0x440>
  402898:	be 02 00 00 00       	mov    $0x2,%esi
  40289d:	48 8b 3d 3c 4c 00 00 	mov    0x4c3c(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  4028a4:	b8 00 00 00 00       	mov    $0x0,%eax
  4028a9:	e8 52 e9 ff ff       	call   401200 <__fprintf_chk@plt>
  4028ae:	bf 01 00 00 00       	mov    $0x1,%edi
  4028b3:	e8 28 e9 ff ff       	call   4011e0 <exit@plt>

00000000004028b8 <rio_readinitb>:
  4028b8:	89 37                	mov    %esi,(%rdi)
  4028ba:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  4028c1:	48 8d 47 10          	lea    0x10(%rdi),%rax
  4028c5:	48 89 47 08          	mov    %rax,0x8(%rdi)
  4028c9:	c3                   	ret

00000000004028ca <sigalrm_handler>:
  4028ca:	f3 0f 1e fa          	endbr64
  4028ce:	50                   	push   %rax
  4028cf:	58                   	pop    %rax
  4028d0:	48 83 ec 08          	sub    $0x8,%rsp
  4028d4:	b9 00 00 00 00       	mov    $0x0,%ecx
  4028d9:	48 8d 15 88 1b 00 00 	lea    0x1b88(%rip),%rdx        # 404468 <_IO_stdin_used+0x468>
  4028e0:	be 02 00 00 00       	mov    $0x2,%esi
  4028e5:	48 8b 3d f4 4b 00 00 	mov    0x4bf4(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  4028ec:	b8 00 00 00 00       	mov    $0x0,%eax
  4028f1:	e8 0a e9 ff ff       	call   401200 <__fprintf_chk@plt>
  4028f6:	bf 01 00 00 00       	mov    $0x1,%edi
  4028fb:	e8 e0 e8 ff ff       	call   4011e0 <exit@plt>

0000000000402900 <rio_writen>:
  402900:	41 55                	push   %r13
  402902:	41 54                	push   %r12
  402904:	55                   	push   %rbp
  402905:	53                   	push   %rbx
  402906:	48 83 ec 08          	sub    $0x8,%rsp
  40290a:	41 89 fc             	mov    %edi,%r12d
  40290d:	48 89 f5             	mov    %rsi,%rbp
  402910:	49 89 d5             	mov    %rdx,%r13
  402913:	48 89 d3             	mov    %rdx,%rbx
  402916:	eb 06                	jmp    40291e <rio_writen+0x1e>
  402918:	48 29 c3             	sub    %rax,%rbx
  40291b:	48 01 c5             	add    %rax,%rbp
  40291e:	48 85 db             	test   %rbx,%rbx
  402921:	74 24                	je     402947 <rio_writen+0x47>
  402923:	48 89 da             	mov    %rbx,%rdx
  402926:	48 89 ee             	mov    %rbp,%rsi
  402929:	44 89 e7             	mov    %r12d,%edi
  40292c:	e8 5f e7 ff ff       	call   401090 <write@plt>
  402931:	48 85 c0             	test   %rax,%rax
  402934:	7f e2                	jg     402918 <rio_writen+0x18>
  402936:	e8 f5 e6 ff ff       	call   401030 <__errno_location@plt>
  40293b:	83 38 04             	cmpl   $0x4,(%rax)
  40293e:	75 15                	jne    402955 <rio_writen+0x55>
  402940:	b8 00 00 00 00       	mov    $0x0,%eax
  402945:	eb d1                	jmp    402918 <rio_writen+0x18>
  402947:	4c 89 e8             	mov    %r13,%rax
  40294a:	48 83 c4 08          	add    $0x8,%rsp
  40294e:	5b                   	pop    %rbx
  40294f:	5d                   	pop    %rbp
  402950:	41 5c                	pop    %r12
  402952:	41 5d                	pop    %r13
  402954:	c3                   	ret
  402955:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40295c:	eb ec                	jmp    40294a <rio_writen+0x4a>

000000000040295e <rio_read>:
  40295e:	41 55                	push   %r13
  402960:	41 54                	push   %r12
  402962:	55                   	push   %rbp
  402963:	53                   	push   %rbx
  402964:	48 83 ec 08          	sub    $0x8,%rsp
  402968:	48 89 fb             	mov    %rdi,%rbx
  40296b:	49 89 f5             	mov    %rsi,%r13
  40296e:	49 89 d4             	mov    %rdx,%r12
  402971:	eb 0a                	jmp    40297d <rio_read+0x1f>
  402973:	e8 b8 e6 ff ff       	call   401030 <__errno_location@plt>
  402978:	83 38 04             	cmpl   $0x4,(%rax)
  40297b:	75 5f                	jne    4029dc <rio_read+0x7e>
  40297d:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402980:	85 ed                	test   %ebp,%ebp
  402982:	7f 22                	jg     4029a6 <rio_read+0x48>
  402984:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402988:	8b 3b                	mov    (%rbx),%edi
  40298a:	ba 00 20 00 00       	mov    $0x2000,%edx
  40298f:	48 89 ee             	mov    %rbp,%rsi
  402992:	e8 49 e7 ff ff       	call   4010e0 <read@plt>
  402997:	89 43 04             	mov    %eax,0x4(%rbx)
  40299a:	85 c0                	test   %eax,%eax
  40299c:	78 d5                	js     402973 <rio_read+0x15>
  40299e:	74 45                	je     4029e5 <rio_read+0x87>
  4029a0:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  4029a4:	eb d7                	jmp    40297d <rio_read+0x1f>
  4029a6:	89 e8                	mov    %ebp,%eax
  4029a8:	4c 39 e0             	cmp    %r12,%rax
  4029ab:	72 03                	jb     4029b0 <rio_read+0x52>
  4029ad:	44 89 e5             	mov    %r12d,%ebp
  4029b0:	4c 63 e5             	movslq %ebp,%r12
  4029b3:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  4029b7:	4c 89 e2             	mov    %r12,%rdx
  4029ba:	4c 89 ef             	mov    %r13,%rdi
  4029bd:	e8 7e e7 ff ff       	call   401140 <memcpy@plt>
  4029c2:	4c 01 63 08          	add    %r12,0x8(%rbx)
  4029c6:	8b 43 04             	mov    0x4(%rbx),%eax
  4029c9:	29 e8                	sub    %ebp,%eax
  4029cb:	89 43 04             	mov    %eax,0x4(%rbx)
  4029ce:	4c 89 e0             	mov    %r12,%rax
  4029d1:	48 83 c4 08          	add    $0x8,%rsp
  4029d5:	5b                   	pop    %rbx
  4029d6:	5d                   	pop    %rbp
  4029d7:	41 5c                	pop    %r12
  4029d9:	41 5d                	pop    %r13
  4029db:	c3                   	ret
  4029dc:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4029e3:	eb ec                	jmp    4029d1 <rio_read+0x73>
  4029e5:	b8 00 00 00 00       	mov    $0x0,%eax
  4029ea:	eb e5                	jmp    4029d1 <rio_read+0x73>

00000000004029ec <rio_readlineb>:
  4029ec:	41 55                	push   %r13
  4029ee:	41 54                	push   %r12
  4029f0:	55                   	push   %rbp
  4029f1:	53                   	push   %rbx
  4029f2:	48 83 ec 18          	sub    $0x18,%rsp
  4029f6:	49 89 fd             	mov    %rdi,%r13
  4029f9:	48 89 f5             	mov    %rsi,%rbp
  4029fc:	49 89 d4             	mov    %rdx,%r12
  4029ff:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402a06:	00 00 
  402a08:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402a0d:	31 c0                	xor    %eax,%eax
  402a0f:	bb 01 00 00 00       	mov    $0x1,%ebx
  402a14:	eb 18                	jmp    402a2e <rio_readlineb+0x42>
  402a16:	85 c0                	test   %eax,%eax
  402a18:	75 65                	jne    402a7f <rio_readlineb+0x93>
  402a1a:	48 83 fb 01          	cmp    $0x1,%rbx
  402a1e:	75 3d                	jne    402a5d <rio_readlineb+0x71>
  402a20:	b8 00 00 00 00       	mov    $0x0,%eax
  402a25:	eb 3d                	jmp    402a64 <rio_readlineb+0x78>
  402a27:	48 83 c3 01          	add    $0x1,%rbx
  402a2b:	48 89 d5             	mov    %rdx,%rbp
  402a2e:	4c 39 e3             	cmp    %r12,%rbx
  402a31:	73 2a                	jae    402a5d <rio_readlineb+0x71>
  402a33:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  402a38:	ba 01 00 00 00       	mov    $0x1,%edx
  402a3d:	4c 89 ef             	mov    %r13,%rdi
  402a40:	e8 19 ff ff ff       	call   40295e <rio_read>
  402a45:	83 f8 01             	cmp    $0x1,%eax
  402a48:	75 cc                	jne    402a16 <rio_readlineb+0x2a>
  402a4a:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402a4e:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
  402a53:	88 45 00             	mov    %al,0x0(%rbp)
  402a56:	3c 0a                	cmp    $0xa,%al
  402a58:	75 cd                	jne    402a27 <rio_readlineb+0x3b>
  402a5a:	48 89 d5             	mov    %rdx,%rbp
  402a5d:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402a61:	48 89 d8             	mov    %rbx,%rax
  402a64:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  402a69:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402a70:	00 00 
  402a72:	75 14                	jne    402a88 <rio_readlineb+0x9c>
  402a74:	48 83 c4 18          	add    $0x18,%rsp
  402a78:	5b                   	pop    %rbx
  402a79:	5d                   	pop    %rbp
  402a7a:	41 5c                	pop    %r12
  402a7c:	41 5d                	pop    %r13
  402a7e:	c3                   	ret
  402a7f:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402a86:	eb dc                	jmp    402a64 <rio_readlineb+0x78>
  402a88:	e8 ff fb ff ff       	call   40268c <__stack_chk_fail>

0000000000402a8d <urlencode>:
  402a8d:	41 54                	push   %r12
  402a8f:	55                   	push   %rbp
  402a90:	53                   	push   %rbx
  402a91:	48 83 ec 10          	sub    $0x10,%rsp
  402a95:	48 89 fb             	mov    %rdi,%rbx
  402a98:	48 89 f5             	mov    %rsi,%rbp
  402a9b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402aa2:	00 00 
  402aa4:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402aa9:	31 c0                	xor    %eax,%eax
  402aab:	e8 f0 e5 ff ff       	call   4010a0 <strlen@plt>
  402ab0:	eb 0f                	jmp    402ac1 <urlencode+0x34>
  402ab2:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  402ab6:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402aba:	48 83 c3 01          	add    $0x1,%rbx
  402abe:	44 89 e0             	mov    %r12d,%eax
  402ac1:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402ac5:	85 c0                	test   %eax,%eax
  402ac7:	0f 84 a8 00 00 00    	je     402b75 <urlencode+0xe8>
  402acd:	44 0f b6 03          	movzbl (%rbx),%r8d
  402ad1:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402ad5:	0f 94 c0             	sete   %al
  402ad8:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402adc:	0f 94 c2             	sete   %dl
  402adf:	08 d0                	or     %dl,%al
  402ae1:	75 cf                	jne    402ab2 <urlencode+0x25>
  402ae3:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402ae7:	74 c9                	je     402ab2 <urlencode+0x25>
  402ae9:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402aed:	74 c3                	je     402ab2 <urlencode+0x25>
  402aef:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402af3:	3c 09                	cmp    $0x9,%al
  402af5:	76 bb                	jbe    402ab2 <urlencode+0x25>
  402af7:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  402afb:	3c 19                	cmp    $0x19,%al
  402afd:	76 b3                	jbe    402ab2 <urlencode+0x25>
  402aff:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402b03:	3c 19                	cmp    $0x19,%al
  402b05:	76 ab                	jbe    402ab2 <urlencode+0x25>
  402b07:	41 80 f8 20          	cmp    $0x20,%r8b
  402b0b:	74 56                	je     402b63 <urlencode+0xd6>
  402b0d:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402b11:	3c 5f                	cmp    $0x5f,%al
  402b13:	0f 96 c0             	setbe  %al
  402b16:	41 80 f8 09          	cmp    $0x9,%r8b
  402b1a:	0f 94 c2             	sete   %dl
  402b1d:	08 d0                	or     %dl,%al
  402b1f:	74 4f                	je     402b70 <urlencode+0xe3>
  402b21:	48 89 e7             	mov    %rsp,%rdi
  402b24:	45 0f b6 c0          	movzbl %r8b,%r8d
  402b28:	48 8d 0d 27 1c 00 00 	lea    0x1c27(%rip),%rcx        # 404756 <_IO_stdin_used+0x756>
  402b2f:	ba 08 00 00 00       	mov    $0x8,%edx
  402b34:	be 02 00 00 00       	mov    $0x2,%esi
  402b39:	b8 00 00 00 00       	mov    $0x0,%eax
  402b3e:	e8 dd e6 ff ff       	call   401220 <__sprintf_chk@plt>
  402b43:	0f b6 04 24          	movzbl (%rsp),%eax
  402b47:	88 45 00             	mov    %al,0x0(%rbp)
  402b4a:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402b4f:	88 45 01             	mov    %al,0x1(%rbp)
  402b52:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402b57:	88 45 02             	mov    %al,0x2(%rbp)
  402b5a:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402b5e:	e9 57 ff ff ff       	jmp    402aba <urlencode+0x2d>
  402b63:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402b67:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402b6b:	e9 4a ff ff ff       	jmp    402aba <urlencode+0x2d>
  402b70:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b75:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  402b7a:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402b81:	00 00 
  402b83:	75 09                	jne    402b8e <urlencode+0x101>
  402b85:	48 83 c4 10          	add    $0x10,%rsp
  402b89:	5b                   	pop    %rbx
  402b8a:	5d                   	pop    %rbp
  402b8b:	41 5c                	pop    %r12
  402b8d:	c3                   	ret
  402b8e:	e8 f9 fa ff ff       	call   40268c <__stack_chk_fail>

0000000000402b93 <submitr>:
  402b93:	f3 0f 1e fa          	endbr64
  402b97:	41 57                	push   %r15
  402b99:	41 56                	push   %r14
  402b9b:	41 55                	push   %r13
  402b9d:	41 54                	push   %r12
  402b9f:	55                   	push   %rbp
  402ba0:	53                   	push   %rbx
  402ba1:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
  402ba8:	ff 
  402ba9:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402bb0:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402bb5:	4c 39 dc             	cmp    %r11,%rsp
  402bb8:	75 ef                	jne    402ba9 <submitr+0x16>
  402bba:	48 83 ec 68          	sub    $0x68,%rsp
  402bbe:	49 89 fd             	mov    %rdi,%r13
  402bc1:	41 89 f6             	mov    %esi,%r14d
  402bc4:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
  402bc9:	49 89 cc             	mov    %rcx,%r12
  402bcc:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  402bd1:	4c 89 4c 24 08       	mov    %r9,0x8(%rsp)
  402bd6:	4c 8b bc 24 a0 a0 00 	mov    0xa0a0(%rsp),%r15
  402bdd:	00 
  402bde:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402be5:	00 00 
  402be7:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  402bee:	00 
  402bef:	31 c0                	xor    %eax,%eax
  402bf1:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402bf8:	00 
  402bf9:	ba 00 00 00 00       	mov    $0x0,%edx
  402bfe:	be 01 00 00 00       	mov    $0x1,%esi
  402c03:	bf 02 00 00 00       	mov    $0x2,%edi
  402c08:	e8 23 e6 ff ff       	call   401230 <socket@plt>
  402c0d:	85 c0                	test   %eax,%eax
  402c0f:	0f 88 72 02 00 00    	js     402e87 <submitr+0x2f4>
  402c15:	89 c3                	mov    %eax,%ebx
  402c17:	4c 89 ef             	mov    %r13,%rdi
  402c1a:	e8 f1 e4 ff ff       	call   401110 <gethostbyname@plt>
  402c1f:	48 85 c0             	test   %rax,%rax
  402c22:	0f 84 ab 02 00 00    	je     402ed3 <submitr+0x340>
  402c28:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
  402c2d:	66 0f ef c0          	pxor   %xmm0,%xmm0
  402c31:	0f 29 44 24 30       	movaps %xmm0,0x30(%rsp)
  402c36:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402c3d:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402c41:	48 8b 40 18          	mov    0x18(%rax),%rax
  402c45:	48 8b 30             	mov    (%rax),%rsi
  402c48:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402c4d:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402c52:	e8 c9 e4 ff ff       	call   401120 <__memmove_chk@plt>
  402c57:	66 41 c1 c6 08       	rol    $0x8,%r14w
  402c5c:	66 44 89 74 24 32    	mov    %r14w,0x32(%rsp)
  402c62:	ba 10 00 00 00       	mov    $0x10,%edx
  402c67:	48 89 ee             	mov    %rbp,%rsi
  402c6a:	89 df                	mov    %ebx,%edi
  402c6c:	e8 7f e5 ff ff       	call   4011f0 <connect@plt>
  402c71:	85 c0                	test   %eax,%eax
  402c73:	0f 88 cc 02 00 00    	js     402f45 <submitr+0x3b2>
  402c79:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402c7e:	e8 1d e4 ff ff       	call   4010a0 <strlen@plt>
  402c83:	49 89 c6             	mov    %rax,%r14
  402c86:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  402c8b:	e8 10 e4 ff ff       	call   4010a0 <strlen@plt>
  402c90:	48 89 c5             	mov    %rax,%rbp
  402c93:	4c 89 e7             	mov    %r12,%rdi
  402c96:	e8 05 e4 ff ff       	call   4010a0 <strlen@plt>
  402c9b:	48 01 c5             	add    %rax,%rbp
  402c9e:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402ca3:	e8 f8 e3 ff ff       	call   4010a0 <strlen@plt>
  402ca8:	48 01 c5             	add    %rax,%rbp
  402cab:	4b 8d 04 76          	lea    (%r14,%r14,2),%rax
  402caf:	48 8d 84 05 80 00 00 	lea    0x80(%rbp,%rax,1),%rax
  402cb6:	00 
  402cb7:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402cbd:	0f 87 e6 02 00 00    	ja     402fa9 <submitr+0x416>
  402cc3:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  402cca:	00 
  402ccb:	b9 00 04 00 00       	mov    $0x400,%ecx
  402cd0:	b8 00 00 00 00       	mov    $0x0,%eax
  402cd5:	48 89 f7             	mov    %rsi,%rdi
  402cd8:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402cdb:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402ce0:	e8 a8 fd ff ff       	call   402a8d <urlencode>
  402ce5:	85 c0                	test   %eax,%eax
  402ce7:	0f 88 2e 03 00 00    	js     40301b <submitr+0x488>
  402ced:	48 8d ac 24 50 20 00 	lea    0x2050(%rsp),%rbp
  402cf4:	00 
  402cf5:	48 83 ec 08          	sub    $0x8,%rsp
  402cf9:	41 55                	push   %r13
  402cfb:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
  402d02:	00 
  402d03:	50                   	push   %rax
  402d04:	41 54                	push   %r12
  402d06:	4c 8b 4c 24 38       	mov    0x38(%rsp),%r9
  402d0b:	4c 8b 44 24 30       	mov    0x30(%rsp),%r8
  402d10:	48 8d 0d 79 17 00 00 	lea    0x1779(%rip),%rcx        # 404490 <_IO_stdin_used+0x490>
  402d17:	ba 00 20 00 00       	mov    $0x2000,%edx
  402d1c:	be 02 00 00 00       	mov    $0x2,%esi
  402d21:	48 89 ef             	mov    %rbp,%rdi
  402d24:	b8 00 00 00 00       	mov    $0x0,%eax
  402d29:	e8 f2 e4 ff ff       	call   401220 <__sprintf_chk@plt>
  402d2e:	48 83 c4 20          	add    $0x20,%rsp
  402d32:	48 89 ef             	mov    %rbp,%rdi
  402d35:	e8 66 e3 ff ff       	call   4010a0 <strlen@plt>
  402d3a:	48 89 c2             	mov    %rax,%rdx
  402d3d:	48 89 ee             	mov    %rbp,%rsi
  402d40:	89 df                	mov    %ebx,%edi
  402d42:	e8 b9 fb ff ff       	call   402900 <rio_writen>
  402d47:	48 85 c0             	test   %rax,%rax
  402d4a:	0f 88 53 03 00 00    	js     4030a3 <submitr+0x510>
  402d50:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
  402d55:	89 de                	mov    %ebx,%esi
  402d57:	48 89 ef             	mov    %rbp,%rdi
  402d5a:	e8 59 fb ff ff       	call   4028b8 <rio_readinitb>
  402d5f:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402d66:	00 
  402d67:	ba 00 20 00 00       	mov    $0x2000,%edx
  402d6c:	48 89 ef             	mov    %rbp,%rdi
  402d6f:	e8 78 fc ff ff       	call   4029ec <rio_readlineb>
  402d74:	48 85 c0             	test   %rax,%rax
  402d77:	0f 8e 92 03 00 00    	jle    40310f <submitr+0x57c>
  402d7d:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402d82:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  402d89:	00 
  402d8a:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402d91:	00 
  402d92:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  402d99:	00 
  402d9a:	48 8d 35 bc 19 00 00 	lea    0x19bc(%rip),%rsi        # 40475d <_IO_stdin_used+0x75d>
  402da1:	b8 00 00 00 00       	mov    $0x0,%eax
  402da6:	e8 c5 e3 ff ff       	call   401170 <__isoc99_sscanf@plt>
  402dab:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402db2:	00 
  402db3:	48 8d 35 ba 19 00 00 	lea    0x19ba(%rip),%rsi        # 404774 <_IO_stdin_used+0x774>
  402dba:	e8 31 e3 ff ff       	call   4010f0 <strcmp@plt>
  402dbf:	85 c0                	test   %eax,%eax
  402dc1:	0f 84 c8 03 00 00    	je     40318f <submitr+0x5fc>
  402dc7:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402dce:	00 
  402dcf:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402dd4:	ba 00 20 00 00       	mov    $0x2000,%edx
  402dd9:	e8 0e fc ff ff       	call   4029ec <rio_readlineb>
  402dde:	48 85 c0             	test   %rax,%rax
  402de1:	7f c8                	jg     402dab <submitr+0x218>
  402de3:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402dea:	3a 20 43 
  402ded:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402df4:	20 75 6e 
  402df7:	49 89 07             	mov    %rax,(%r15)
  402dfa:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402dfe:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402e05:	74 6f 20 
  402e08:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  402e0f:	68 65 61 
  402e12:	49 89 47 10          	mov    %rax,0x10(%r15)
  402e16:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402e1a:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402e21:	66 72 6f 
  402e24:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
  402e2b:	6f 6c 61 
  402e2e:	49 89 47 20          	mov    %rax,0x20(%r15)
  402e32:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402e36:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402e3d:	6c 61 62 
  402e40:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  402e47:	65 72 00 
  402e4a:	49 89 47 29          	mov    %rax,0x29(%r15)
  402e4e:	49 89 57 31          	mov    %rdx,0x31(%r15)
  402e52:	89 df                	mov    %ebx,%edi
  402e54:	e8 77 e2 ff ff       	call   4010d0 <close@plt>
  402e59:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e5e:	48 8b 94 24 58 a0 00 	mov    0xa058(%rsp),%rdx
  402e65:	00 
  402e66:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402e6d:	00 00 
  402e6f:	0f 85 67 04 00 00    	jne    4032dc <submitr+0x749>
  402e75:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  402e7c:	5b                   	pop    %rbx
  402e7d:	5d                   	pop    %rbp
  402e7e:	41 5c                	pop    %r12
  402e80:	41 5d                	pop    %r13
  402e82:	41 5e                	pop    %r14
  402e84:	41 5f                	pop    %r15
  402e86:	c3                   	ret
  402e87:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402e8e:	3a 20 43 
  402e91:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402e98:	20 75 6e 
  402e9b:	49 89 07             	mov    %rax,(%r15)
  402e9e:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402ea2:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402ea9:	74 6f 20 
  402eac:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402eb3:	65 20 73 
  402eb6:	49 89 47 10          	mov    %rax,0x10(%r15)
  402eba:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402ebe:	48 b8 20 73 6f 63 6b 	movabs $0x74656b636f7320,%rax
  402ec5:	65 74 00 
  402ec8:	49 89 47 1e          	mov    %rax,0x1e(%r15)
  402ecc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ed1:	eb 8b                	jmp    402e5e <submitr+0x2cb>
  402ed3:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402eda:	3a 20 44 
  402edd:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402ee4:	20 75 6e 
  402ee7:	49 89 07             	mov    %rax,(%r15)
  402eea:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402eee:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402ef5:	74 6f 20 
  402ef8:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402eff:	76 65 20 
  402f02:	49 89 47 10          	mov    %rax,0x10(%r15)
  402f06:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402f0a:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  402f11:	61 62 20 
  402f14:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
  402f1b:	72 20 61 
  402f1e:	49 89 47 20          	mov    %rax,0x20(%r15)
  402f22:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402f26:	48 b8 61 64 64 72 65 	movabs $0x73736572646461,%rax
  402f2d:	73 73 00 
  402f30:	49 89 47 2f          	mov    %rax,0x2f(%r15)
  402f34:	89 df                	mov    %ebx,%edi
  402f36:	e8 95 e1 ff ff       	call   4010d0 <close@plt>
  402f3b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f40:	e9 19 ff ff ff       	jmp    402e5e <submitr+0x2cb>
  402f45:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402f4c:	3a 20 55 
  402f4f:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402f56:	20 74 6f 
  402f59:	49 89 07             	mov    %rax,(%r15)
  402f5c:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402f60:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402f67:	65 63 74 
  402f6a:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  402f71:	68 65 20 
  402f74:	49 89 47 10          	mov    %rax,0x10(%r15)
  402f78:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402f7c:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402f83:	6c 61 62 
  402f86:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  402f8d:	65 72 00 
  402f90:	49 89 47 1f          	mov    %rax,0x1f(%r15)
  402f94:	49 89 57 27          	mov    %rdx,0x27(%r15)
  402f98:	89 df                	mov    %ebx,%edi
  402f9a:	e8 31 e1 ff ff       	call   4010d0 <close@plt>
  402f9f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402fa4:	e9 b5 fe ff ff       	jmp    402e5e <submitr+0x2cb>
  402fa9:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402fb0:	3a 20 52 
  402fb3:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402fba:	20 73 74 
  402fbd:	49 89 07             	mov    %rax,(%r15)
  402fc0:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402fc4:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402fcb:	74 6f 6f 
  402fce:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  402fd5:	65 2e 20 
  402fd8:	49 89 47 10          	mov    %rax,0x10(%r15)
  402fdc:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402fe0:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402fe7:	61 73 65 
  402fea:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  402ff1:	49 54 52 
  402ff4:	49 89 47 20          	mov    %rax,0x20(%r15)
  402ff8:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402ffc:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  403003:	55 46 00 
  403006:	49 89 47 30          	mov    %rax,0x30(%r15)
  40300a:	89 df                	mov    %ebx,%edi
  40300c:	e8 bf e0 ff ff       	call   4010d0 <close@plt>
  403011:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403016:	e9 43 fe ff ff       	jmp    402e5e <submitr+0x2cb>
  40301b:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  403022:	3a 20 55 
  403025:	48 ba 73 65 72 69 64 	movabs $0x7473206469726573,%rdx
  40302c:	20 73 74 
  40302f:	49 89 07             	mov    %rax,(%r15)
  403032:	49 89 57 08          	mov    %rdx,0x8(%r15)
  403036:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  40303d:	63 6f 6e 
  403040:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  403047:	20 61 6e 
  40304a:	49 89 47 10          	mov    %rax,0x10(%r15)
  40304e:	49 89 57 18          	mov    %rdx,0x18(%r15)
  403052:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  403059:	67 61 6c 
  40305c:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  403063:	6e 70 72 
  403066:	49 89 47 20          	mov    %rax,0x20(%r15)
  40306a:	49 89 57 28          	mov    %rdx,0x28(%r15)
  40306e:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  403075:	6c 65 20 
  403078:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  40307f:	63 74 65 
  403082:	49 89 47 30          	mov    %rax,0x30(%r15)
  403086:	49 89 57 38          	mov    %rdx,0x38(%r15)
  40308a:	41 c7 47 3f 65 72 2e 	movl   $0x2e7265,0x3f(%r15)
  403091:	00 
  403092:	89 df                	mov    %ebx,%edi
  403094:	e8 37 e0 ff ff       	call   4010d0 <close@plt>
  403099:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40309e:	e9 bb fd ff ff       	jmp    402e5e <submitr+0x2cb>
  4030a3:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4030aa:	3a 20 43 
  4030ad:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4030b4:	20 75 6e 
  4030b7:	49 89 07             	mov    %rax,(%r15)
  4030ba:	49 89 57 08          	mov    %rdx,0x8(%r15)
  4030be:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4030c5:	74 6f 20 
  4030c8:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  4030cf:	20 74 6f 
  4030d2:	49 89 47 10          	mov    %rax,0x10(%r15)
  4030d6:	49 89 57 18          	mov    %rdx,0x18(%r15)
  4030da:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  4030e1:	41 75 74 
  4030e4:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
  4030eb:	73 65 72 
  4030ee:	49 89 47 20          	mov    %rax,0x20(%r15)
  4030f2:	49 89 57 28          	mov    %rdx,0x28(%r15)
  4030f6:	41 c7 47 30 76 65 72 	movl   $0x726576,0x30(%r15)
  4030fd:	00 
  4030fe:	89 df                	mov    %ebx,%edi
  403100:	e8 cb df ff ff       	call   4010d0 <close@plt>
  403105:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40310a:	e9 4f fd ff ff       	jmp    402e5e <submitr+0x2cb>
  40310f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403116:	3a 20 43 
  403119:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403120:	20 75 6e 
  403123:	49 89 07             	mov    %rax,(%r15)
  403126:	49 89 57 08          	mov    %rdx,0x8(%r15)
  40312a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403131:	74 6f 20 
  403134:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  40313b:	66 69 72 
  40313e:	49 89 47 10          	mov    %rax,0x10(%r15)
  403142:	49 89 57 18          	mov    %rdx,0x18(%r15)
  403146:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  40314d:	61 64 65 
  403150:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
  403157:	6d 20 41 
  40315a:	49 89 47 20          	mov    %rax,0x20(%r15)
  40315e:	49 89 57 28          	mov    %rdx,0x28(%r15)
  403162:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  403169:	6c 61 62 
  40316c:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  403173:	65 72 00 
  403176:	49 89 47 2e          	mov    %rax,0x2e(%r15)
  40317a:	49 89 57 36          	mov    %rdx,0x36(%r15)
  40317e:	89 df                	mov    %ebx,%edi
  403180:	e8 4b df ff ff       	call   4010d0 <close@plt>
  403185:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40318a:	e9 cf fc ff ff       	jmp    402e5e <submitr+0x2cb>
  40318f:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  403196:	00 
  403197:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  40319c:	ba 00 20 00 00       	mov    $0x2000,%edx
  4031a1:	e8 46 f8 ff ff       	call   4029ec <rio_readlineb>
  4031a6:	48 85 c0             	test   %rax,%rax
  4031a9:	7e 78                	jle    403223 <submitr+0x690>
  4031ab:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  4031b0:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  4031b7:	0f 85 e6 00 00 00    	jne    4032a3 <submitr+0x710>
  4031bd:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4031c4:	00 
  4031c5:	4c 89 ff             	mov    %r15,%rdi
  4031c8:	e8 a3 de ff ff       	call   401070 <strcpy@plt>
  4031cd:	89 df                	mov    %ebx,%edi
  4031cf:	e8 fc de ff ff       	call   4010d0 <close@plt>
  4031d4:	48 8d 35 93 15 00 00 	lea    0x1593(%rip),%rsi        # 40476e <_IO_stdin_used+0x76e>
  4031db:	4c 89 ff             	mov    %r15,%rdi
  4031de:	e8 0d df ff ff       	call   4010f0 <strcmp@plt>
  4031e3:	85 c0                	test   %eax,%eax
  4031e5:	0f 84 73 fc ff ff    	je     402e5e <submitr+0x2cb>
  4031eb:	48 8d 35 80 15 00 00 	lea    0x1580(%rip),%rsi        # 404772 <_IO_stdin_used+0x772>
  4031f2:	4c 89 ff             	mov    %r15,%rdi
  4031f5:	e8 f6 de ff ff       	call   4010f0 <strcmp@plt>
  4031fa:	85 c0                	test   %eax,%eax
  4031fc:	0f 84 5c fc ff ff    	je     402e5e <submitr+0x2cb>
  403202:	48 8d 35 6e 15 00 00 	lea    0x156e(%rip),%rsi        # 404777 <_IO_stdin_used+0x777>
  403209:	4c 89 ff             	mov    %r15,%rdi
  40320c:	e8 df de ff ff       	call   4010f0 <strcmp@plt>
  403211:	85 c0                	test   %eax,%eax
  403213:	0f 84 45 fc ff ff    	je     402e5e <submitr+0x2cb>
  403219:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40321e:	e9 3b fc ff ff       	jmp    402e5e <submitr+0x2cb>
  403223:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40322a:	3a 20 43 
  40322d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403234:	20 75 6e 
  403237:	49 89 07             	mov    %rax,(%r15)
  40323a:	49 89 57 08          	mov    %rdx,0x8(%r15)
  40323e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403245:	74 6f 20 
  403248:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  40324f:	73 74 61 
  403252:	49 89 47 10          	mov    %rax,0x10(%r15)
  403256:	49 89 57 18          	mov    %rdx,0x18(%r15)
  40325a:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  403261:	65 73 73 
  403264:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  40326b:	72 6f 6d 
  40326e:	49 89 47 20          	mov    %rax,0x20(%r15)
  403272:	49 89 57 28          	mov    %rdx,0x28(%r15)
  403276:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  40327d:	6c 61 62 
  403280:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  403287:	65 72 00 
  40328a:	49 89 47 30          	mov    %rax,0x30(%r15)
  40328e:	49 89 57 38          	mov    %rdx,0x38(%r15)
  403292:	89 df                	mov    %ebx,%edi
  403294:	e8 37 de ff ff       	call   4010d0 <close@plt>
  403299:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40329e:	e9 bb fb ff ff       	jmp    402e5e <submitr+0x2cb>
  4032a3:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  4032aa:	00 
  4032ab:	48 8d 0d 3e 12 00 00 	lea    0x123e(%rip),%rcx        # 4044f0 <_IO_stdin_used+0x4f0>
  4032b2:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4032b9:	be 02 00 00 00       	mov    $0x2,%esi
  4032be:	4c 89 ff             	mov    %r15,%rdi
  4032c1:	b8 00 00 00 00       	mov    $0x0,%eax
  4032c6:	e8 55 df ff ff       	call   401220 <__sprintf_chk@plt>
  4032cb:	89 df                	mov    %ebx,%edi
  4032cd:	e8 fe dd ff ff       	call   4010d0 <close@plt>
  4032d2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4032d7:	e9 82 fb ff ff       	jmp    402e5e <submitr+0x2cb>
  4032dc:	e8 ab f3 ff ff       	call   40268c <__stack_chk_fail>

00000000004032e1 <init_timeout>:
  4032e1:	f3 0f 1e fa          	endbr64
  4032e5:	85 ff                	test   %edi,%edi
  4032e7:	74 26                	je     40330f <init_timeout+0x2e>
  4032e9:	53                   	push   %rbx
  4032ea:	89 fb                	mov    %edi,%ebx
  4032ec:	78 1a                	js     403308 <init_timeout+0x27>
  4032ee:	48 8d 35 d5 f5 ff ff 	lea    -0xa2b(%rip),%rsi        # 4028ca <sigalrm_handler>
  4032f5:	bf 0e 00 00 00       	mov    $0xe,%edi
  4032fa:	e8 01 de ff ff       	call   401100 <signal@plt>
  4032ff:	89 df                	mov    %ebx,%edi
  403301:	e8 ba dd ff ff       	call   4010c0 <alarm@plt>
  403306:	5b                   	pop    %rbx
  403307:	c3                   	ret
  403308:	bb 00 00 00 00       	mov    $0x0,%ebx
  40330d:	eb df                	jmp    4032ee <init_timeout+0xd>
  40330f:	c3                   	ret

0000000000403310 <init_driver>:
  403310:	f3 0f 1e fa          	endbr64
  403314:	41 54                	push   %r12
  403316:	55                   	push   %rbp
  403317:	53                   	push   %rbx
  403318:	48 83 ec 20          	sub    $0x20,%rsp
  40331c:	48 89 fd             	mov    %rdi,%rbp
  40331f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  403326:	00 00 
  403328:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40332d:	31 c0                	xor    %eax,%eax
  40332f:	be 01 00 00 00       	mov    $0x1,%esi
  403334:	bf 0d 00 00 00       	mov    $0xd,%edi
  403339:	e8 c2 dd ff ff       	call   401100 <signal@plt>
  40333e:	be 01 00 00 00       	mov    $0x1,%esi
  403343:	bf 1d 00 00 00       	mov    $0x1d,%edi
  403348:	e8 b3 dd ff ff       	call   401100 <signal@plt>
  40334d:	be 01 00 00 00       	mov    $0x1,%esi
  403352:	bf 1d 00 00 00       	mov    $0x1d,%edi
  403357:	e8 a4 dd ff ff       	call   401100 <signal@plt>
  40335c:	ba 00 00 00 00       	mov    $0x0,%edx
  403361:	be 01 00 00 00       	mov    $0x1,%esi
  403366:	bf 02 00 00 00       	mov    $0x2,%edi
  40336b:	e8 c0 de ff ff       	call   401230 <socket@plt>
  403370:	85 c0                	test   %eax,%eax
  403372:	0f 88 93 00 00 00    	js     40340b <init_driver+0xfb>
  403378:	89 c3                	mov    %eax,%ebx
  40337a:	48 8d 3d f9 13 00 00 	lea    0x13f9(%rip),%rdi        # 40477a <_IO_stdin_used+0x77a>
  403381:	e8 8a dd ff ff       	call   401110 <gethostbyname@plt>
  403386:	48 85 c0             	test   %rax,%rax
  403389:	0f 84 c9 00 00 00    	je     403458 <init_driver+0x148>
  40338f:	49 89 e4             	mov    %rsp,%r12
  403392:	66 0f ef c0          	pxor   %xmm0,%xmm0
  403396:	0f 29 04 24          	movaps %xmm0,(%rsp)
  40339a:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  4033a0:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4033a4:	48 8b 40 18          	mov    0x18(%rax),%rax
  4033a8:	48 8b 30             	mov    (%rax),%rsi
  4033ab:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  4033b0:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4033b5:	e8 66 dd ff ff       	call   401120 <__memmove_chk@plt>
  4033ba:	66 c7 44 24 02 00 50 	movw   $0x5000,0x2(%rsp)
  4033c1:	ba 10 00 00 00       	mov    $0x10,%edx
  4033c6:	4c 89 e6             	mov    %r12,%rsi
  4033c9:	89 df                	mov    %ebx,%edi
  4033cb:	e8 20 de ff ff       	call   4011f0 <connect@plt>
  4033d0:	85 c0                	test   %eax,%eax
  4033d2:	0f 88 e5 00 00 00    	js     4034bd <init_driver+0x1ad>
  4033d8:	89 df                	mov    %ebx,%edi
  4033da:	e8 f1 dc ff ff       	call   4010d0 <close@plt>
  4033df:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  4033e5:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  4033e9:	b8 00 00 00 00       	mov    $0x0,%eax
  4033ee:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
  4033f3:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4033fa:	00 00 
  4033fc:	0f 85 27 01 00 00    	jne    403529 <init_driver+0x219>
  403402:	48 83 c4 20          	add    $0x20,%rsp
  403406:	5b                   	pop    %rbx
  403407:	5d                   	pop    %rbp
  403408:	41 5c                	pop    %r12
  40340a:	c3                   	ret
  40340b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403412:	3a 20 43 
  403415:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40341c:	20 75 6e 
  40341f:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403423:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403427:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40342e:	74 6f 20 
  403431:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  403438:	65 20 73 
  40343b:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40343f:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403443:	48 b8 20 73 6f 63 6b 	movabs $0x74656b636f7320,%rax
  40344a:	65 74 00 
  40344d:	48 89 45 1e          	mov    %rax,0x1e(%rbp)
  403451:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403456:	eb 96                	jmp    4033ee <init_driver+0xde>
  403458:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  40345f:	3a 20 44 
  403462:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  403469:	20 75 6e 
  40346c:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403470:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403474:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40347b:	74 6f 20 
  40347e:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  403485:	76 65 20 
  403488:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40348c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403490:	48 b8 20 73 65 72 76 	movabs $0x2072657672657320,%rax
  403497:	65 72 20 
  40349a:	48 ba 61 64 64 72 65 	movabs $0x73736572646461,%rdx
  4034a1:	73 73 00 
  4034a4:	48 89 45 1f          	mov    %rax,0x1f(%rbp)
  4034a8:	48 89 55 27          	mov    %rdx,0x27(%rbp)
  4034ac:	89 df                	mov    %ebx,%edi
  4034ae:	e8 1d dc ff ff       	call   4010d0 <close@plt>
  4034b3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4034b8:	e9 31 ff ff ff       	jmp    4033ee <init_driver+0xde>
  4034bd:	48 b8 31 36 32 2e 31 	movabs $0x2e3530312e323631,%rax
  4034c4:	30 35 2e 
  4034c7:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4034cb:	48 b8 2e 33 31 2e 32 	movabs $0x3233322e31332e,%rax
  4034d2:	33 32 00 
  4034d5:	48 89 45 07          	mov    %rax,0x7(%rbp)
  4034d9:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4034e0:	3a 20 55 
  4034e3:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  4034ea:	20 74 6f 
  4034ed:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4034f1:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4034f5:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4034fc:	65 63 74 
  4034ff:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  403506:	65 72 76 
  403509:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40350d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403511:	c7 45 1f 76 65 72 00 	movl   $0x726576,0x1f(%rbp)
  403518:	89 df                	mov    %ebx,%edi
  40351a:	e8 b1 db ff ff       	call   4010d0 <close@plt>
  40351f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403524:	e9 c5 fe ff ff       	jmp    4033ee <init_driver+0xde>
  403529:	e8 5e f1 ff ff       	call   40268c <__stack_chk_fail>

000000000040352e <driver_post>:
  40352e:	f3 0f 1e fa          	endbr64
  403532:	53                   	push   %rbx
  403533:	4c 89 cb             	mov    %r9,%rbx
  403536:	45 85 c0             	test   %r8d,%r8d
  403539:	75 18                	jne    403553 <driver_post+0x25>
  40353b:	48 85 ff             	test   %rdi,%rdi
  40353e:	74 05                	je     403545 <driver_post+0x17>
  403540:	80 3f 00             	cmpb   $0x0,(%rdi)
  403543:	75 37                	jne    40357c <driver_post+0x4e>
  403545:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  40354a:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  40354e:	44 89 c0             	mov    %r8d,%eax
  403551:	5b                   	pop    %rbx
  403552:	c3                   	ret
  403553:	48 89 ca             	mov    %rcx,%rdx
  403556:	48 8d 35 2c 12 00 00 	lea    0x122c(%rip),%rsi        # 404789 <_IO_stdin_used+0x789>
  40355d:	bf 02 00 00 00       	mov    $0x2,%edi
  403562:	b8 00 00 00 00       	mov    $0x0,%eax
  403567:	e8 24 dc ff ff       	call   401190 <__printf_chk@plt>
  40356c:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  403571:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  403575:	b8 00 00 00 00       	mov    $0x0,%eax
  40357a:	eb d5                	jmp    403551 <driver_post+0x23>
  40357c:	48 83 ec 08          	sub    $0x8,%rsp
  403580:	41 51                	push   %r9
  403582:	49 89 c9             	mov    %rcx,%r9
  403585:	49 89 d0             	mov    %rdx,%r8
  403588:	48 89 f9             	mov    %rdi,%rcx
  40358b:	48 89 f2             	mov    %rsi,%rdx
  40358e:	be 50 00 00 00       	mov    $0x50,%esi
  403593:	48 8d 3d e0 11 00 00 	lea    0x11e0(%rip),%rdi        # 40477a <_IO_stdin_used+0x77a>
  40359a:	e8 f4 f5 ff ff       	call   402b93 <submitr>
  40359f:	48 83 c4 10          	add    $0x10,%rsp
  4035a3:	eb ac                	jmp    403551 <driver_post+0x23>

00000000004035a5 <check>:
  4035a5:	f3 0f 1e fa          	endbr64
  4035a9:	89 f8                	mov    %edi,%eax
  4035ab:	c1 e8 1c             	shr    $0x1c,%eax
  4035ae:	74 1d                	je     4035cd <check+0x28>
  4035b0:	b9 00 00 00 00       	mov    $0x0,%ecx
  4035b5:	83 f9 1f             	cmp    $0x1f,%ecx
  4035b8:	7f 0d                	jg     4035c7 <check+0x22>
  4035ba:	89 f8                	mov    %edi,%eax
  4035bc:	d3 e8                	shr    %cl,%eax
  4035be:	3c 0a                	cmp    $0xa,%al
  4035c0:	74 11                	je     4035d3 <check+0x2e>
  4035c2:	83 c1 08             	add    $0x8,%ecx
  4035c5:	eb ee                	jmp    4035b5 <check+0x10>
  4035c7:	b8 01 00 00 00       	mov    $0x1,%eax
  4035cc:	c3                   	ret
  4035cd:	b8 00 00 00 00       	mov    $0x0,%eax
  4035d2:	c3                   	ret
  4035d3:	b8 00 00 00 00       	mov    $0x0,%eax
  4035d8:	c3                   	ret

00000000004035d9 <gencookie>:
  4035d9:	f3 0f 1e fa          	endbr64
  4035dd:	53                   	push   %rbx
  4035de:	83 c7 01             	add    $0x1,%edi
  4035e1:	e8 5a da ff ff       	call   401040 <srandom@plt>
  4035e6:	e8 75 db ff ff       	call   401160 <random@plt>
  4035eb:	89 c3                	mov    %eax,%ebx
  4035ed:	89 c7                	mov    %eax,%edi
  4035ef:	e8 b1 ff ff ff       	call   4035a5 <check>
  4035f4:	85 c0                	test   %eax,%eax
  4035f6:	74 ee                	je     4035e6 <gencookie+0xd>
  4035f8:	89 d8                	mov    %ebx,%eax
  4035fa:	5b                   	pop    %rbx
  4035fb:	c3                   	ret

Disassembly of section .fini:

00000000004035fc <_fini>:
  4035fc:	f3 0f 1e fa          	endbr64
  403600:	48 83 ec 08          	sub    $0x8,%rsp
  403604:	48 83 c4 08          	add    $0x8,%rsp
  403608:	c3                   	ret
