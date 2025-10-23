
ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 d1 4f 00 00 	mov    0x4fd1(%rip),%rax        # 405fe0 <__gmon_start__@Base>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	ret

Disassembly of section .plt:

0000000000401020 <__errno_location@plt-0x10>:
  401020:	ff 35 ca 4f 00 00    	push   0x4fca(%rip)        # 405ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 cc 4f 00 00    	jmp    *0x4fcc(%rip)        # 405ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <__errno_location@plt>:
  401030:	ff 25 ca 4f 00 00    	jmp    *0x4fca(%rip)        # 406000 <__errno_location@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	push   $0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401040 <srandom@plt>:
  401040:	ff 25 c2 4f 00 00    	jmp    *0x4fc2(%rip)        # 406008 <srandom@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	push   $0x1
  40104b:	e9 d0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401050 <strncpy@plt>:
  401050:	ff 25 ba 4f 00 00    	jmp    *0x4fba(%rip)        # 406010 <strncpy@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	push   $0x2
  40105b:	e9 c0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401060 <strncmp@plt>:
  401060:	ff 25 b2 4f 00 00    	jmp    *0x4fb2(%rip)        # 406018 <strncmp@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	push   $0x3
  40106b:	e9 b0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401070 <strcpy@plt>:
  401070:	ff 25 aa 4f 00 00    	jmp    *0x4faa(%rip)        # 406020 <strcpy@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	push   $0x4
  40107b:	e9 a0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401080 <puts@plt>:
  401080:	ff 25 a2 4f 00 00    	jmp    *0x4fa2(%rip)        # 406028 <puts@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	push   $0x5
  40108b:	e9 90 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401090 <write@plt>:
  401090:	ff 25 9a 4f 00 00    	jmp    *0x4f9a(%rip)        # 406030 <write@GLIBC_2.2.5>
  401096:	68 06 00 00 00       	push   $0x6
  40109b:	e9 80 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010a0 <strlen@plt>:
  4010a0:	ff 25 92 4f 00 00    	jmp    *0x4f92(%rip)        # 406038 <strlen@GLIBC_2.2.5>
  4010a6:	68 07 00 00 00       	push   $0x7
  4010ab:	e9 70 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010b0 <mmap@plt>:
  4010b0:	ff 25 8a 4f 00 00    	jmp    *0x4f8a(%rip)        # 406040 <mmap@GLIBC_2.2.5>
  4010b6:	68 08 00 00 00       	push   $0x8
  4010bb:	e9 60 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010c0 <alarm@plt>:
  4010c0:	ff 25 82 4f 00 00    	jmp    *0x4f82(%rip)        # 406048 <alarm@GLIBC_2.2.5>
  4010c6:	68 09 00 00 00       	push   $0x9
  4010cb:	e9 50 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010d0 <close@plt>:
  4010d0:	ff 25 7a 4f 00 00    	jmp    *0x4f7a(%rip)        # 406050 <close@GLIBC_2.2.5>
  4010d6:	68 0a 00 00 00       	push   $0xa
  4010db:	e9 40 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010e0 <read@plt>:
  4010e0:	ff 25 72 4f 00 00    	jmp    *0x4f72(%rip)        # 406058 <read@GLIBC_2.2.5>
  4010e6:	68 0b 00 00 00       	push   $0xb
  4010eb:	e9 30 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010f0 <strcmp@plt>:
  4010f0:	ff 25 6a 4f 00 00    	jmp    *0x4f6a(%rip)        # 406060 <strcmp@GLIBC_2.2.5>
  4010f6:	68 0c 00 00 00       	push   $0xc
  4010fb:	e9 20 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401100 <signal@plt>:
  401100:	ff 25 62 4f 00 00    	jmp    *0x4f62(%rip)        # 406068 <signal@GLIBC_2.2.5>
  401106:	68 0d 00 00 00       	push   $0xd
  40110b:	e9 10 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401110 <gethostbyname@plt>:
  401110:	ff 25 5a 4f 00 00    	jmp    *0x4f5a(%rip)        # 406070 <gethostbyname@GLIBC_2.2.5>
  401116:	68 0e 00 00 00       	push   $0xe
  40111b:	e9 00 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401120 <__memmove_chk@plt>:
  401120:	ff 25 52 4f 00 00    	jmp    *0x4f52(%rip)        # 406078 <__memmove_chk@GLIBC_2.3.4>
  401126:	68 0f 00 00 00       	push   $0xf
  40112b:	e9 f0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401130 <strtol@plt>:
  401130:	ff 25 4a 4f 00 00    	jmp    *0x4f4a(%rip)        # 406080 <strtol@GLIBC_2.2.5>
  401136:	68 10 00 00 00       	push   $0x10
  40113b:	e9 e0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401140 <memcpy@plt>:
  401140:	ff 25 42 4f 00 00    	jmp    *0x4f42(%rip)        # 406088 <memcpy@GLIBC_2.14>
  401146:	68 11 00 00 00       	push   $0x11
  40114b:	e9 d0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401150 <time@plt>:
  401150:	ff 25 3a 4f 00 00    	jmp    *0x4f3a(%rip)        # 406090 <time@GLIBC_2.2.5>
  401156:	68 12 00 00 00       	push   $0x12
  40115b:	e9 c0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401160 <random@plt>:
  401160:	ff 25 32 4f 00 00    	jmp    *0x4f32(%rip)        # 406098 <random@GLIBC_2.2.5>
  401166:	68 13 00 00 00       	push   $0x13
  40116b:	e9 b0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401170 <__isoc99_sscanf@plt>:
  401170:	ff 25 2a 4f 00 00    	jmp    *0x4f2a(%rip)        # 4060a0 <__isoc99_sscanf@GLIBC_2.7>
  401176:	68 14 00 00 00       	push   $0x14
  40117b:	e9 a0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401180 <munmap@plt>:
  401180:	ff 25 22 4f 00 00    	jmp    *0x4f22(%rip)        # 4060a8 <munmap@GLIBC_2.2.5>
  401186:	68 15 00 00 00       	push   $0x15
  40118b:	e9 90 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401190 <__printf_chk@plt>:
  401190:	ff 25 1a 4f 00 00    	jmp    *0x4f1a(%rip)        # 4060b0 <__printf_chk@GLIBC_2.3.4>
  401196:	68 16 00 00 00       	push   $0x16
  40119b:	e9 80 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011a0 <fopen@plt>:
  4011a0:	ff 25 12 4f 00 00    	jmp    *0x4f12(%rip)        # 4060b8 <fopen@GLIBC_2.2.5>
  4011a6:	68 17 00 00 00       	push   $0x17
  4011ab:	e9 70 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011b0 <getopt@plt>:
  4011b0:	ff 25 0a 4f 00 00    	jmp    *0x4f0a(%rip)        # 4060c0 <getopt@GLIBC_2.2.5>
  4011b6:	68 18 00 00 00       	push   $0x18
  4011bb:	e9 60 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011c0 <strtoul@plt>:
  4011c0:	ff 25 02 4f 00 00    	jmp    *0x4f02(%rip)        # 4060c8 <strtoul@GLIBC_2.2.5>
  4011c6:	68 19 00 00 00       	push   $0x19
  4011cb:	e9 50 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011d0 <__memset_chk@plt>:
  4011d0:	ff 25 fa 4e 00 00    	jmp    *0x4efa(%rip)        # 4060d0 <__memset_chk@GLIBC_2.3.4>
  4011d6:	68 1a 00 00 00       	push   $0x1a
  4011db:	e9 40 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011e0 <exit@plt>:
  4011e0:	ff 25 f2 4e 00 00    	jmp    *0x4ef2(%rip)        # 4060d8 <exit@GLIBC_2.2.5>
  4011e6:	68 1b 00 00 00       	push   $0x1b
  4011eb:	e9 30 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011f0 <connect@plt>:
  4011f0:	ff 25 ea 4e 00 00    	jmp    *0x4eea(%rip)        # 4060e0 <connect@GLIBC_2.2.5>
  4011f6:	68 1c 00 00 00       	push   $0x1c
  4011fb:	e9 20 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401200 <__fprintf_chk@plt>:
  401200:	ff 25 e2 4e 00 00    	jmp    *0x4ee2(%rip)        # 4060e8 <__fprintf_chk@GLIBC_2.3.4>
  401206:	68 1d 00 00 00       	push   $0x1d
  40120b:	e9 10 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401210 <getc@plt>:
  401210:	ff 25 da 4e 00 00    	jmp    *0x4eda(%rip)        # 4060f0 <getc@GLIBC_2.2.5>
  401216:	68 1e 00 00 00       	push   $0x1e
  40121b:	e9 00 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401220 <__sprintf_chk@plt>:
  401220:	ff 25 d2 4e 00 00    	jmp    *0x4ed2(%rip)        # 4060f8 <__sprintf_chk@GLIBC_2.3.4>
  401226:	68 1f 00 00 00       	push   $0x1f
  40122b:	e9 f0 fd ff ff       	jmp    401020 <_init+0x20>

0000000000401230 <socket@plt>:
  401230:	ff 25 ca 4e 00 00    	jmp    *0x4eca(%rip)        # 406100 <socket@GLIBC_2.2.5>
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
  40125f:	ff 15 73 4d 00 00    	call   *0x4d73(%rip)        # 405fd8 <__libc_start_main@GLIBC_2.34>
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
  401280:	b8 90 64 40 00       	mov    $0x406490,%eax
  401285:	48 3d 90 64 40 00    	cmp    $0x406490,%rax
  40128b:	74 13                	je     4012a0 <deregister_tm_clones+0x20>
  40128d:	b8 00 00 00 00       	mov    $0x0,%eax
  401292:	48 85 c0             	test   %rax,%rax
  401295:	74 09                	je     4012a0 <deregister_tm_clones+0x20>
  401297:	bf 90 64 40 00       	mov    $0x406490,%edi
  40129c:	ff e0                	jmp    *%rax
  40129e:	66 90                	xchg   %ax,%ax
  4012a0:	c3                   	ret
  4012a1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4012a8:	00 00 00 00 
  4012ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012b0 <register_tm_clones>:
  4012b0:	be 90 64 40 00       	mov    $0x406490,%esi
  4012b5:	48 81 ee 90 64 40 00 	sub    $0x406490,%rsi
  4012bc:	48 89 f0             	mov    %rsi,%rax
  4012bf:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4012c3:	48 c1 f8 03          	sar    $0x3,%rax
  4012c7:	48 01 c6             	add    %rax,%rsi
  4012ca:	48 d1 fe             	sar    $1,%rsi
  4012cd:	74 11                	je     4012e0 <register_tm_clones+0x30>
  4012cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4012d4:	48 85 c0             	test   %rax,%rax
  4012d7:	74 07                	je     4012e0 <register_tm_clones+0x30>
  4012d9:	bf 90 64 40 00       	mov    $0x406490,%edi
  4012de:	ff e0                	jmp    *%rax
  4012e0:	c3                   	ret
  4012e1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4012e8:	00 00 00 00 
  4012ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012f0 <__do_global_dtors_aux>:
  4012f0:	f3 0f 1e fa          	endbr64
  4012f4:	80 3d ed 51 00 00 00 	cmpb   $0x0,0x51ed(%rip)        # 4064e8 <completed.0>
  4012fb:	75 13                	jne    401310 <__do_global_dtors_aux+0x20>
  4012fd:	55                   	push   %rbp
  4012fe:	48 89 e5             	mov    %rsp,%rbp
  401301:	e8 7a ff ff ff       	call   401280 <deregister_tm_clones>
  401306:	c6 05 db 51 00 00 01 	movb   $0x1,0x51db(%rip)        # 4064e8 <completed.0>
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
  40132f:	83 3d fa 51 00 00 00 	cmpl   $0x0,0x51fa(%rip)        # 406530 <is_checker>
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
  4013f7:	89 3d 23 51 00 00    	mov    %edi,0x5123(%rip)        # 406520 <check_level>
  4013fd:	8b 3d 2d 4d 00 00    	mov    0x4d2d(%rip),%edi        # 406130 <target_id>
  401403:	e8 00 20 00 00       	call   403408 <gencookie>
  401408:	89 c7                	mov    %eax,%edi
  40140a:	89 05 1c 51 00 00    	mov    %eax,0x511c(%rip)        # 40652c <cookie>
  401410:	e8 f3 1f 00 00       	call   403408 <gencookie>
  401415:	89 05 0d 51 00 00    	mov    %eax,0x510d(%rip)        # 406528 <authkey>
  40141b:	8b 05 0f 4d 00 00    	mov    0x4d0f(%rip),%eax        # 406130 <target_id>
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
  40144e:	48 89 05 33 50 00 00 	mov    %rax,0x5033(%rip)        # 406488 <buf_offset>
  401455:	c6 05 ec 5c 00 00 63 	movb   $0x63,0x5cec(%rip)        # 407148 <target_prefix>
  40145c:	83 3d 1d 50 00 00 00 	cmpl   $0x0,0x501d(%rip)        # 406480 <notify>
  401463:	74 09                	je     40146e <initialize_target+0xaa>
  401465:	83 3d c4 50 00 00 00 	cmpl   $0x0,0x50c4(%rip)        # 406530 <is_checker>
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
  4014a6:	e8 94 1c 00 00       	call   40313f <init_driver>
  4014ab:	85 c0                	test   %eax,%eax
  4014ad:	79 bf                	jns    40146e <initialize_target+0xaa>
  4014af:	48 89 e2             	mov    %rsp,%rdx
  4014b2:	48 8d 35 2f 2c 00 00 	lea    0x2c2f(%rip),%rsi        # 4040e8 <_IO_stdin_used+0xe8>
  4014b9:	bf 02 00 00 00       	mov    $0x2,%edi
  4014be:	b8 00 00 00 00       	mov    $0x0,%eax
  4014c3:	e8 c8 fc ff ff       	call   401190 <__printf_chk@plt>
  4014c8:	bf 08 00 00 00       	mov    $0x8,%edi
  4014cd:	e8 0e fd ff ff       	call   4011e0 <exit@plt>
  4014d2:	e8 e4 0f 00 00       	call   4024bb <__stack_chk_fail>

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
  401519:	48 c7 c6 aa 23 40 00 	mov    $0x4023aa,%rsi
  401520:	bf 0b 00 00 00       	mov    $0xb,%edi
  401525:	e8 d6 fb ff ff       	call   401100 <signal@plt>
  40152a:	48 c7 c6 50 23 40 00 	mov    $0x402350,%rsi
  401531:	bf 07 00 00 00       	mov    $0x7,%edi
  401536:	e8 c5 fb ff ff       	call   401100 <signal@plt>
  40153b:	48 c7 c6 04 24 40 00 	mov    $0x402404,%rsi
  401542:	bf 04 00 00 00       	mov    $0x4,%edi
  401547:	e8 b4 fb ff ff       	call   401100 <signal@plt>
  40154c:	83 3d dd 4f 00 00 00 	cmpl   $0x0,0x4fdd(%rip)        # 406530 <is_checker>
  401553:	75 26                	jne    40157b <main+0xa4>
  401555:	4c 8d 25 2e 30 00 00 	lea    0x302e(%rip),%r12        # 40458a <_IO_stdin_used+0x58a>
  40155c:	48 8b 05 3d 4f 00 00 	mov    0x4f3d(%rip),%rax        # 4064a0 <stdin@GLIBC_2.2.5>
  401563:	48 89 05 ae 4f 00 00 	mov    %rax,0x4fae(%rip)        # 406518 <infile>
  40156a:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401570:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401576:	e9 8d 00 00 00       	jmp    401608 <main+0x131>
  40157b:	48 c7 c6 5e 24 40 00 	mov    $0x40245e,%rsi
  401582:	bf 0e 00 00 00       	mov    $0xe,%edi
  401587:	e8 74 fb ff ff       	call   401100 <signal@plt>
  40158c:	bf 02 00 00 00       	mov    $0x2,%edi
  401591:	e8 2a fb ff ff       	call   4010c0 <alarm@plt>
  401596:	4c 8d 25 f2 2f 00 00 	lea    0x2ff2(%rip),%r12        # 40458f <_IO_stdin_used+0x58f>
  40159d:	eb bd                	jmp    40155c <main+0x85>
  40159f:	48 8b 3b             	mov    (%rbx),%rdi
  4015a2:	e8 7f fd ff ff       	call   401326 <usage>
  4015a7:	48 8d 35 5b 30 00 00 	lea    0x305b(%rip),%rsi        # 404609 <_IO_stdin_used+0x609>
  4015ae:	48 8b 3d 0b 4f 00 00 	mov    0x4f0b(%rip),%rdi        # 4064c0 <optarg@GLIBC_2.2.5>
  4015b5:	e8 e6 fb ff ff       	call   4011a0 <fopen@plt>
  4015ba:	48 89 05 57 4f 00 00 	mov    %rax,0x4f57(%rip)        # 406518 <infile>
  4015c1:	48 85 c0             	test   %rax,%rax
  4015c4:	75 42                	jne    401608 <main+0x131>
  4015c6:	48 8b 0d f3 4e 00 00 	mov    0x4ef3(%rip),%rcx        # 4064c0 <optarg@GLIBC_2.2.5>
  4015cd:	48 8d 15 c5 2f 00 00 	lea    0x2fc5(%rip),%rdx        # 404599 <_IO_stdin_used+0x599>
  4015d4:	be 02 00 00 00       	mov    $0x2,%esi
  4015d9:	48 8b 3d 00 4f 00 00 	mov    0x4f00(%rip),%rdi        # 4064e0 <stderr@GLIBC_2.2.5>
  4015e0:	e8 1b fc ff ff       	call   401200 <__fprintf_chk@plt>
  4015e5:	b8 01 00 00 00       	mov    $0x1,%eax
  4015ea:	e9 2b 01 00 00       	jmp    40171a <main+0x243>
  4015ef:	ba 10 00 00 00       	mov    $0x10,%edx
  4015f4:	be 00 00 00 00       	mov    $0x0,%esi
  4015f9:	48 8b 3d c0 4e 00 00 	mov    0x4ec0(%rip),%rdi        # 4064c0 <optarg@GLIBC_2.2.5>
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
  40163f:	48 8b 3d 7a 4e 00 00 	mov    0x4e7a(%rip),%rdi        # 4064c0 <optarg@GLIBC_2.2.5>
  401646:	e8 e5 fa ff ff       	call   401130 <strtol@plt>
  40164b:	41 89 c5             	mov    %eax,%r13d
  40164e:	eb b8                	jmp    401608 <main+0x131>
  401650:	c7 05 26 4e 00 00 00 	movl   $0x0,0x4e26(%rip)        # 406480 <notify>
  401657:	00 00 00 
  40165a:	eb ac                	jmp    401608 <main+0x131>
  40165c:	48 89 e7             	mov    %rsp,%rdi
  40165f:	ba 50 00 00 00       	mov    $0x50,%edx
  401664:	48 8b 35 55 4e 00 00 	mov    0x4e55(%rip),%rsi        # 4064c0 <optarg@GLIBC_2.2.5>
  40166b:	e8 e0 f9 ff ff       	call   401050 <strncpy@plt>
  401670:	eb 96                	jmp    401608 <main+0x131>
  401672:	0f be d0             	movsbl %al,%edx
  401675:	48 8d 35 3a 2f 00 00 	lea    0x2f3a(%rip),%rsi        # 4045b6 <_IO_stdin_used+0x5b6>
  40167c:	bf 02 00 00 00       	mov    $0x2,%edi
  401681:	b8 00 00 00 00       	mov    $0x0,%eax
  401686:	e8 05 fb ff ff       	call   401190 <__printf_chk@plt>
  40168b:	48 8b 3b             	mov    (%rbx),%rdi
  40168e:	e8 93 fc ff ff       	call   401326 <usage>
  401693:	be 00 00 00 00       	mov    $0x0,%esi
  401698:	44 89 ef             	mov    %r13d,%edi
  40169b:	e8 24 fd ff ff       	call   4013c4 <initialize_target>
  4016a0:	83 3d 89 4e 00 00 00 	cmpl   $0x0,0x4e89(%rip)        # 406530 <is_checker>
  4016a7:	74 3f                	je     4016e8 <main+0x211>
  4016a9:	44 39 35 78 4e 00 00 	cmp    %r14d,0x4e78(%rip)        # 406528 <authkey>
  4016b0:	75 13                	jne    4016c5 <main+0x1ee>
  4016b2:	48 89 e7             	mov    %rsp,%rdi
  4016b5:	48 8b 35 84 4a 00 00 	mov    0x4a84(%rip),%rsi        # 406140 <user_id>
  4016bc:	e8 2f fa ff ff       	call   4010f0 <strcmp@plt>
  4016c1:	85 c0                	test   %eax,%eax
  4016c3:	74 23                	je     4016e8 <main+0x211>
  4016c5:	44 89 f2             	mov    %r14d,%edx
  4016c8:	48 8d 35 41 2a 00 00 	lea    0x2a41(%rip),%rsi        # 404110 <_IO_stdin_used+0x110>
  4016cf:	bf 02 00 00 00       	mov    $0x2,%edi
  4016d4:	b8 00 00 00 00       	mov    $0x0,%eax
  4016d9:	e8 b2 fa ff ff       	call   401190 <__printf_chk@plt>
  4016de:	b8 00 00 00 00       	mov    $0x0,%eax
  4016e3:	e8 a6 08 00 00       	call   401f8e <check_fail>
  4016e8:	8b 15 3e 4e 00 00    	mov    0x4e3e(%rip),%edx        # 40652c <cookie>
  4016ee:	48 8d 35 d4 2e 00 00 	lea    0x2ed4(%rip),%rsi        # 4045c9 <_IO_stdin_used+0x5c9>
  4016f5:	bf 02 00 00 00       	mov    $0x2,%edi
  4016fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4016ff:	e8 8c fa ff ff       	call   401190 <__printf_chk@plt>
  401704:	be 00 00 00 00       	mov    $0x0,%esi
  401709:	48 8b 3d 78 4d 00 00 	mov    0x4d78(%rip),%rdi        # 406488 <buf_offset>
  401710:	e8 0c 0f 00 00       	call   402621 <stable_launch>
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
  401737:	e8 7f 0d 00 00       	call   4024bb <__stack_chk_fail>

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
  401c60:	e8 56 08 00 00       	call   4024bb <__stack_chk_fail>

0000000000401c65 <getbuf>:
  401c65:	f3 0f 1e fa          	endbr64
  401c69:	48 83 ec 28          	sub    $0x28,%rsp
  401c6d:	48 89 e7             	mov    %rsp,%rdi
  401c70:	e8 57 03 00 00       	call   401fcc <Gets>
  401c75:	b8 01 00 00 00       	mov    $0x1,%eax
  401c7a:	48 83 c4 28          	add    $0x28,%rsp
  401c7e:	c3                   	ret

0000000000401c7f <getbuf_withcanary>:
  401c7f:	55                   	push   %rbp
  401c80:	48 89 e5             	mov    %rsp,%rbp
  401c83:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  401c8a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401c91:	00 00 
  401c93:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401c97:	31 c0                	xor    %eax,%eax
  401c99:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  401ca0:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401ca7:	48 89 c7             	mov    %rax,%rdi
  401caa:	e8 1d 03 00 00       	call   401fcc <Gets>
  401caf:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401cb2:	48 98                	cltq
  401cb4:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  401cbb:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
  401cbf:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401cc6:	ba 80 00 00 00       	mov    $0x80,%edx
  401ccb:	48 89 c6             	mov    %rax,%rsi
  401cce:	48 89 cf             	mov    %rcx,%rdi
  401cd1:	e8 6a f4 ff ff       	call   401140 <memcpy@plt>
  401cd6:	b8 01 00 00 00       	mov    $0x1,%eax
  401cdb:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  401cdf:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401ce6:	00 00 
  401ce8:	74 05                	je     401cef <getbuf_withcanary+0x70>
  401cea:	e8 cc 07 00 00       	call   4024bb <__stack_chk_fail>
  401cef:	c9                   	leave
  401cf0:	c3                   	ret

0000000000401cf1 <touch1>:
  401cf1:	f3 0f 1e fa          	endbr64
  401cf5:	50                   	push   %rax
  401cf6:	58                   	pop    %rax
  401cf7:	48 83 ec 08          	sub    $0x8,%rsp
  401cfb:	c7 05 1f 48 00 00 01 	movl   $0x1,0x481f(%rip)        # 406524 <vlevel>
  401d02:	00 00 00 
  401d05:	48 8d 3d ff 28 00 00 	lea    0x28ff(%rip),%rdi        # 40460b <_IO_stdin_used+0x60b>
  401d0c:	e8 6f f3 ff ff       	call   401080 <puts@plt>
  401d11:	bf 01 00 00 00       	mov    $0x1,%edi
  401d16:	e8 2e 05 00 00       	call   402249 <validate>
  401d1b:	bf 00 00 00 00       	mov    $0x0,%edi
  401d20:	e8 bb f4 ff ff       	call   4011e0 <exit@plt>

0000000000401d25 <touch2>:
  401d25:	f3 0f 1e fa          	endbr64
  401d29:	50                   	push   %rax
  401d2a:	58                   	pop    %rax
  401d2b:	48 83 ec 08          	sub    $0x8,%rsp
  401d2f:	89 fa                	mov    %edi,%edx
  401d31:	c7 05 e9 47 00 00 02 	movl   $0x2,0x47e9(%rip)        # 406524 <vlevel>
  401d38:	00 00 00 
  401d3b:	39 3d eb 47 00 00    	cmp    %edi,0x47eb(%rip)        # 40652c <cookie>
  401d41:	74 2a                	je     401d6d <touch2+0x48>
  401d43:	48 8d 35 36 24 00 00 	lea    0x2436(%rip),%rsi        # 404180 <_IO_stdin_used+0x180>
  401d4a:	bf 02 00 00 00       	mov    $0x2,%edi
  401d4f:	b8 00 00 00 00       	mov    $0x0,%eax
  401d54:	e8 37 f4 ff ff       	call   401190 <__printf_chk@plt>
  401d59:	bf 02 00 00 00       	mov    $0x2,%edi
  401d5e:	e8 c1 05 00 00       	call   402324 <fail>
  401d63:	bf 00 00 00 00       	mov    $0x0,%edi
  401d68:	e8 73 f4 ff ff       	call   4011e0 <exit@plt>
  401d6d:	48 8d 35 e4 23 00 00 	lea    0x23e4(%rip),%rsi        # 404158 <_IO_stdin_used+0x158>
  401d74:	bf 02 00 00 00       	mov    $0x2,%edi
  401d79:	b8 00 00 00 00       	mov    $0x0,%eax
  401d7e:	e8 0d f4 ff ff       	call   401190 <__printf_chk@plt>
  401d83:	bf 02 00 00 00       	mov    $0x2,%edi
  401d88:	e8 bc 04 00 00       	call   402249 <validate>
  401d8d:	eb d4                	jmp    401d63 <touch2+0x3e>

0000000000401d8f <hexmatch>:
  401d8f:	f3 0f 1e fa          	endbr64
  401d93:	41 54                	push   %r12
  401d95:	55                   	push   %rbp
  401d96:	53                   	push   %rbx
  401d97:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  401d9b:	89 fd                	mov    %edi,%ebp
  401d9d:	48 89 f3             	mov    %rsi,%rbx
  401da0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401da7:	00 00 
  401da9:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401dae:	31 c0                	xor    %eax,%eax
  401db0:	e8 ab f3 ff ff       	call   401160 <random@plt>
  401db5:	48 89 c6             	mov    %rax,%rsi
  401db8:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401dbf:	0a d7 a3 
  401dc2:	48 f7 ea             	imul   %rdx
  401dc5:	48 8d 0c 32          	lea    (%rdx,%rsi,1),%rcx
  401dc9:	48 c1 f9 06          	sar    $0x6,%rcx
  401dcd:	48 89 f0             	mov    %rsi,%rax
  401dd0:	48 c1 f8 3f          	sar    $0x3f,%rax
  401dd4:	48 29 c1             	sub    %rax,%rcx
  401dd7:	48 8d 04 89          	lea    (%rcx,%rcx,4),%rax
  401ddb:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401ddf:	48 c1 e0 02          	shl    $0x2,%rax
  401de3:	48 29 c6             	sub    %rax,%rsi
  401de6:	4c 8d 24 34          	lea    (%rsp,%rsi,1),%r12
  401dea:	ba 6e 00 00 00       	mov    $0x6e,%edx
  401def:	48 39 d6             	cmp    %rdx,%rsi
  401df2:	48 0f 43 d6          	cmovae %rsi,%rdx
  401df6:	48 29 f2             	sub    %rsi,%rdx
  401df9:	41 89 e8             	mov    %ebp,%r8d
  401dfc:	48 8d 0d 25 28 00 00 	lea    0x2825(%rip),%rcx        # 404628 <_IO_stdin_used+0x628>
  401e03:	be 02 00 00 00       	mov    $0x2,%esi
  401e08:	4c 89 e7             	mov    %r12,%rdi
  401e0b:	b8 00 00 00 00       	mov    $0x0,%eax
  401e10:	e8 0b f4 ff ff       	call   401220 <__sprintf_chk@plt>
  401e15:	ba 09 00 00 00       	mov    $0x9,%edx
  401e1a:	4c 89 e6             	mov    %r12,%rsi
  401e1d:	48 89 df             	mov    %rbx,%rdi
  401e20:	e8 3b f2 ff ff       	call   401060 <strncmp@plt>
  401e25:	85 c0                	test   %eax,%eax
  401e27:	0f 94 c0             	sete   %al
  401e2a:	48 8b 54 24 78       	mov    0x78(%rsp),%rdx
  401e2f:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  401e36:	00 00 
  401e38:	75 0c                	jne    401e46 <hexmatch+0xb7>
  401e3a:	0f b6 c0             	movzbl %al,%eax
  401e3d:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  401e41:	5b                   	pop    %rbx
  401e42:	5d                   	pop    %rbp
  401e43:	41 5c                	pop    %r12
  401e45:	c3                   	ret
  401e46:	e8 70 06 00 00       	call   4024bb <__stack_chk_fail>

0000000000401e4b <touch3>:
  401e4b:	f3 0f 1e fa          	endbr64
  401e4f:	53                   	push   %rbx
  401e50:	48 89 fb             	mov    %rdi,%rbx
  401e53:	c7 05 c7 46 00 00 03 	movl   $0x3,0x46c7(%rip)        # 406524 <vlevel>
  401e5a:	00 00 00 
  401e5d:	48 89 fe             	mov    %rdi,%rsi
  401e60:	8b 3d c6 46 00 00    	mov    0x46c6(%rip),%edi        # 40652c <cookie>
  401e66:	e8 24 ff ff ff       	call   401d8f <hexmatch>
  401e6b:	85 c0                	test   %eax,%eax
  401e6d:	74 2d                	je     401e9c <touch3+0x51>
  401e6f:	48 89 da             	mov    %rbx,%rdx
  401e72:	48 8d 35 2f 23 00 00 	lea    0x232f(%rip),%rsi        # 4041a8 <_IO_stdin_used+0x1a8>
  401e79:	bf 02 00 00 00       	mov    $0x2,%edi
  401e7e:	b8 00 00 00 00       	mov    $0x0,%eax
  401e83:	e8 08 f3 ff ff       	call   401190 <__printf_chk@plt>
  401e88:	bf 03 00 00 00       	mov    $0x3,%edi
  401e8d:	e8 b7 03 00 00       	call   402249 <validate>
  401e92:	bf 00 00 00 00       	mov    $0x0,%edi
  401e97:	e8 44 f3 ff ff       	call   4011e0 <exit@plt>
  401e9c:	48 89 da             	mov    %rbx,%rdx
  401e9f:	48 8d 35 2a 23 00 00 	lea    0x232a(%rip),%rsi        # 4041d0 <_IO_stdin_used+0x1d0>
  401ea6:	bf 02 00 00 00       	mov    $0x2,%edi
  401eab:	b8 00 00 00 00       	mov    $0x0,%eax
  401eb0:	e8 db f2 ff ff       	call   401190 <__printf_chk@plt>
  401eb5:	bf 03 00 00 00       	mov    $0x3,%edi
  401eba:	e8 65 04 00 00       	call   402324 <fail>
  401ebf:	eb d1                	jmp    401e92 <touch3+0x47>

0000000000401ec1 <test>:
  401ec1:	f3 0f 1e fa          	endbr64
  401ec5:	48 83 ec 08          	sub    $0x8,%rsp
  401ec9:	b8 00 00 00 00       	mov    $0x0,%eax
  401ece:	e8 92 fd ff ff       	call   401c65 <getbuf>
  401ed3:	89 c2                	mov    %eax,%edx
  401ed5:	48 8d 35 1c 23 00 00 	lea    0x231c(%rip),%rsi        # 4041f8 <_IO_stdin_used+0x1f8>
  401edc:	bf 02 00 00 00       	mov    $0x2,%edi
  401ee1:	b8 00 00 00 00       	mov    $0x0,%eax
  401ee6:	e8 a5 f2 ff ff       	call   401190 <__printf_chk@plt>
  401eeb:	48 83 c4 08          	add    $0x8,%rsp
  401eef:	c3                   	ret

0000000000401ef0 <test2>:
  401ef0:	f3 0f 1e fa          	endbr64
  401ef4:	48 83 ec 08          	sub    $0x8,%rsp
  401ef8:	b8 00 00 00 00       	mov    $0x0,%eax
  401efd:	e8 7d fd ff ff       	call   401c7f <getbuf_withcanary>
  401f02:	89 c2                	mov    %eax,%edx
  401f04:	48 8d 35 15 23 00 00 	lea    0x2315(%rip),%rsi        # 404220 <_IO_stdin_used+0x220>
  401f0b:	bf 02 00 00 00       	mov    $0x2,%edi
  401f10:	b8 00 00 00 00       	mov    $0x0,%eax
  401f15:	e8 76 f2 ff ff       	call   401190 <__printf_chk@plt>
  401f1a:	48 83 c4 08          	add    $0x8,%rsp
  401f1e:	c3                   	ret

0000000000401f1f <save_char>:
  401f1f:	8b 05 1f 52 00 00    	mov    0x521f(%rip),%eax        # 407144 <gets_cnt>
  401f25:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401f2a:	7f 4a                	jg     401f76 <save_char+0x57>
  401f2c:	89 f9                	mov    %edi,%ecx
  401f2e:	c0 e9 04             	shr    $0x4,%cl
  401f31:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401f34:	4c 8d 05 c5 28 00 00 	lea    0x28c5(%rip),%r8        # 404800 <trans_char>
  401f3b:	83 e1 0f             	and    $0xf,%ecx
  401f3e:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  401f43:	48 8d 0d f6 45 00 00 	lea    0x45f6(%rip),%rcx        # 406540 <gets_buf>
  401f4a:	48 63 f2             	movslq %edx,%rsi
  401f4d:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  401f51:	8d 72 01             	lea    0x1(%rdx),%esi
  401f54:	83 e7 0f             	and    $0xf,%edi
  401f57:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  401f5c:	48 63 f6             	movslq %esi,%rsi
  401f5f:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  401f63:	83 c2 02             	add    $0x2,%edx
  401f66:	48 63 d2             	movslq %edx,%rdx
  401f69:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  401f6d:	83 c0 01             	add    $0x1,%eax
  401f70:	89 05 ce 51 00 00    	mov    %eax,0x51ce(%rip)        # 407144 <gets_cnt>
  401f76:	c3                   	ret

0000000000401f77 <save_term>:
  401f77:	8b 05 c7 51 00 00    	mov    0x51c7(%rip),%eax        # 407144 <gets_cnt>
  401f7d:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401f80:	48 98                	cltq
  401f82:	48 8d 15 b7 45 00 00 	lea    0x45b7(%rip),%rdx        # 406540 <gets_buf>
  401f89:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  401f8d:	c3                   	ret

0000000000401f8e <check_fail>:
  401f8e:	f3 0f 1e fa          	endbr64
  401f92:	50                   	push   %rax
  401f93:	58                   	pop    %rax
  401f94:	48 83 ec 08          	sub    $0x8,%rsp
  401f98:	0f be 15 a9 51 00 00 	movsbl 0x51a9(%rip),%edx        # 407148 <target_prefix>
  401f9f:	4c 8d 05 9a 45 00 00 	lea    0x459a(%rip),%r8        # 406540 <gets_buf>
  401fa6:	8b 0d 74 45 00 00    	mov    0x4574(%rip),%ecx        # 406520 <check_level>
  401fac:	48 8d 35 7a 26 00 00 	lea    0x267a(%rip),%rsi        # 40462d <_IO_stdin_used+0x62d>
  401fb3:	bf 02 00 00 00       	mov    $0x2,%edi
  401fb8:	b8 00 00 00 00       	mov    $0x0,%eax
  401fbd:	e8 ce f1 ff ff       	call   401190 <__printf_chk@plt>
  401fc2:	bf 01 00 00 00       	mov    $0x1,%edi
  401fc7:	e8 14 f2 ff ff       	call   4011e0 <exit@plt>

0000000000401fcc <Gets>:
  401fcc:	f3 0f 1e fa          	endbr64
  401fd0:	41 54                	push   %r12
  401fd2:	55                   	push   %rbp
  401fd3:	53                   	push   %rbx
  401fd4:	49 89 fc             	mov    %rdi,%r12
  401fd7:	c7 05 63 51 00 00 00 	movl   $0x0,0x5163(%rip)        # 407144 <gets_cnt>
  401fde:	00 00 00 
  401fe1:	48 89 fb             	mov    %rdi,%rbx
  401fe4:	eb 11                	jmp    401ff7 <Gets+0x2b>
  401fe6:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401fea:	88 03                	mov    %al,(%rbx)
  401fec:	0f b6 f8             	movzbl %al,%edi
  401fef:	e8 2b ff ff ff       	call   401f1f <save_char>
  401ff4:	48 89 eb             	mov    %rbp,%rbx
  401ff7:	48 8b 3d 1a 45 00 00 	mov    0x451a(%rip),%rdi        # 406518 <infile>
  401ffe:	e8 0d f2 ff ff       	call   401210 <getc@plt>
  402003:	83 f8 ff             	cmp    $0xffffffff,%eax
  402006:	74 05                	je     40200d <Gets+0x41>
  402008:	83 f8 0a             	cmp    $0xa,%eax
  40200b:	75 d9                	jne    401fe6 <Gets+0x1a>
  40200d:	c6 03 00             	movb   $0x0,(%rbx)
  402010:	b8 00 00 00 00       	mov    $0x0,%eax
  402015:	e8 5d ff ff ff       	call   401f77 <save_term>
  40201a:	4c 89 e0             	mov    %r12,%rax
  40201d:	5b                   	pop    %rbx
  40201e:	5d                   	pop    %rbp
  40201f:	41 5c                	pop    %r12
  402021:	c3                   	ret

0000000000402022 <notify_server>:
  402022:	f3 0f 1e fa          	endbr64
  402026:	55                   	push   %rbp
  402027:	53                   	push   %rbx
  402028:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
  40202f:	ff 
  402030:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402037:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  40203c:	4c 39 dc             	cmp    %r11,%rsp
  40203f:	75 ef                	jne    402030 <notify_server+0xe>
  402041:	48 83 ec 18          	sub    $0x18,%rsp
  402045:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40204c:	00 00 
  40204e:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  402055:	00 
  402056:	31 c0                	xor    %eax,%eax
  402058:	83 3d d1 44 00 00 00 	cmpl   $0x0,0x44d1(%rip)        # 406530 <is_checker>
  40205f:	0f 85 c2 01 00 00    	jne    402227 <notify_server+0x205>
  402065:	89 fb                	mov    %edi,%ebx
  402067:	81 3d d3 50 00 00 9c 	cmpl   $0x1f9c,0x50d3(%rip)        # 407144 <gets_cnt>
  40206e:	1f 00 00 
  402071:	0f 8f bd 00 00 00    	jg     402134 <notify_server+0x112>
  402077:	0f be 05 ca 50 00 00 	movsbl 0x50ca(%rip),%eax        # 407148 <target_prefix>
  40207e:	83 3d fb 43 00 00 00 	cmpl   $0x0,0x43fb(%rip)        # 406480 <notify>
  402085:	0f 84 c4 00 00 00    	je     40214f <notify_server+0x12d>
  40208b:	8b 15 97 44 00 00    	mov    0x4497(%rip),%edx        # 406528 <authkey>
  402091:	85 db                	test   %ebx,%ebx
  402093:	0f 84 c0 00 00 00    	je     402159 <notify_server+0x137>
  402099:	48 8d 2d a3 25 00 00 	lea    0x25a3(%rip),%rbp        # 404643 <_IO_stdin_used+0x643>
  4020a0:	48 89 e7             	mov    %rsp,%rdi
  4020a3:	48 8d 0d 96 44 00 00 	lea    0x4496(%rip),%rcx        # 406540 <gets_buf>
  4020aa:	51                   	push   %rcx
  4020ab:	56                   	push   %rsi
  4020ac:	50                   	push   %rax
  4020ad:	52                   	push   %rdx
  4020ae:	49 89 e9             	mov    %rbp,%r9
  4020b1:	44 8b 05 78 40 00 00 	mov    0x4078(%rip),%r8d        # 406130 <target_id>
  4020b8:	48 8d 0d 8e 25 00 00 	lea    0x258e(%rip),%rcx        # 40464d <_IO_stdin_used+0x64d>
  4020bf:	ba 00 20 00 00       	mov    $0x2000,%edx
  4020c4:	be 02 00 00 00       	mov    $0x2,%esi
  4020c9:	b8 00 00 00 00       	mov    $0x0,%eax
  4020ce:	e8 4d f1 ff ff       	call   401220 <__sprintf_chk@plt>
  4020d3:	48 83 c4 20          	add    $0x20,%rsp
  4020d7:	83 3d a2 43 00 00 00 	cmpl   $0x0,0x43a2(%rip)        # 406480 <notify>
  4020de:	0f 84 ba 00 00 00    	je     40219e <notify_server+0x17c>
  4020e4:	48 89 e1             	mov    %rsp,%rcx
  4020e7:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  4020ee:	00 
  4020ef:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4020f5:	48 8b 15 4c 40 00 00 	mov    0x404c(%rip),%rdx        # 406148 <lab>
  4020fc:	48 8b 35 4d 40 00 00 	mov    0x404d(%rip),%rsi        # 406150 <course>
  402103:	48 8b 3d 36 40 00 00 	mov    0x4036(%rip),%rdi        # 406140 <user_id>
  40210a:	e8 4e 12 00 00       	call   40335d <driver_post>
  40210f:	85 c0                	test   %eax,%eax
  402111:	78 52                	js     402165 <notify_server+0x143>
  402113:	85 db                	test   %ebx,%ebx
  402115:	74 76                	je     40218d <notify_server+0x16b>
  402117:	48 8d 3d 62 21 00 00 	lea    0x2162(%rip),%rdi        # 404280 <_IO_stdin_used+0x280>
  40211e:	e8 5d ef ff ff       	call   401080 <puts@plt>
  402123:	48 8d 3d 4b 25 00 00 	lea    0x254b(%rip),%rdi        # 404675 <_IO_stdin_used+0x675>
  40212a:	e8 51 ef ff ff       	call   401080 <puts@plt>
  40212f:	e9 f3 00 00 00       	jmp    402227 <notify_server+0x205>
  402134:	48 8d 35 15 21 00 00 	lea    0x2115(%rip),%rsi        # 404250 <_IO_stdin_used+0x250>
  40213b:	bf 02 00 00 00       	mov    $0x2,%edi
  402140:	e8 4b f0 ff ff       	call   401190 <__printf_chk@plt>
  402145:	bf 01 00 00 00       	mov    $0x1,%edi
  40214a:	e8 91 f0 ff ff       	call   4011e0 <exit@plt>
  40214f:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  402154:	e9 38 ff ff ff       	jmp    402091 <notify_server+0x6f>
  402159:	48 8d 2d e8 24 00 00 	lea    0x24e8(%rip),%rbp        # 404648 <_IO_stdin_used+0x648>
  402160:	e9 3b ff ff ff       	jmp    4020a0 <notify_server+0x7e>
  402165:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  40216c:	00 
  40216d:	48 8d 35 f5 24 00 00 	lea    0x24f5(%rip),%rsi        # 404669 <_IO_stdin_used+0x669>
  402174:	bf 02 00 00 00       	mov    $0x2,%edi
  402179:	b8 00 00 00 00       	mov    $0x0,%eax
  40217e:	e8 0d f0 ff ff       	call   401190 <__printf_chk@plt>
  402183:	bf 01 00 00 00       	mov    $0x1,%edi
  402188:	e8 53 f0 ff ff       	call   4011e0 <exit@plt>
  40218d:	48 8d 3d eb 24 00 00 	lea    0x24eb(%rip),%rdi        # 40467f <_IO_stdin_used+0x67f>
  402194:	e8 e7 ee ff ff       	call   401080 <puts@plt>
  402199:	e9 89 00 00 00       	jmp    402227 <notify_server+0x205>
  40219e:	48 89 ea             	mov    %rbp,%rdx
  4021a1:	48 8d 35 10 21 00 00 	lea    0x2110(%rip),%rsi        # 4042b8 <_IO_stdin_used+0x2b8>
  4021a8:	bf 02 00 00 00       	mov    $0x2,%edi
  4021ad:	b8 00 00 00 00       	mov    $0x0,%eax
  4021b2:	e8 d9 ef ff ff       	call   401190 <__printf_chk@plt>
  4021b7:	48 8b 15 82 3f 00 00 	mov    0x3f82(%rip),%rdx        # 406140 <user_id>
  4021be:	48 8d 35 c1 24 00 00 	lea    0x24c1(%rip),%rsi        # 404686 <_IO_stdin_used+0x686>
  4021c5:	bf 02 00 00 00       	mov    $0x2,%edi
  4021ca:	b8 00 00 00 00       	mov    $0x0,%eax
  4021cf:	e8 bc ef ff ff       	call   401190 <__printf_chk@plt>
  4021d4:	48 8b 15 75 3f 00 00 	mov    0x3f75(%rip),%rdx        # 406150 <course>
  4021db:	48 8d 35 b1 24 00 00 	lea    0x24b1(%rip),%rsi        # 404693 <_IO_stdin_used+0x693>
  4021e2:	bf 02 00 00 00       	mov    $0x2,%edi
  4021e7:	b8 00 00 00 00       	mov    $0x0,%eax
  4021ec:	e8 9f ef ff ff       	call   401190 <__printf_chk@plt>
  4021f1:	48 8b 15 50 3f 00 00 	mov    0x3f50(%rip),%rdx        # 406148 <lab>
  4021f8:	48 8d 35 a0 24 00 00 	lea    0x24a0(%rip),%rsi        # 40469f <_IO_stdin_used+0x69f>
  4021ff:	bf 02 00 00 00       	mov    $0x2,%edi
  402204:	b8 00 00 00 00       	mov    $0x0,%eax
  402209:	e8 82 ef ff ff       	call   401190 <__printf_chk@plt>
  40220e:	48 89 e2             	mov    %rsp,%rdx
  402211:	48 8d 35 90 24 00 00 	lea    0x2490(%rip),%rsi        # 4046a8 <_IO_stdin_used+0x6a8>
  402218:	bf 02 00 00 00       	mov    $0x2,%edi
  40221d:	b8 00 00 00 00       	mov    $0x0,%eax
  402222:	e8 69 ef ff ff       	call   401190 <__printf_chk@plt>
  402227:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  40222e:	00 
  40222f:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402236:	00 00 
  402238:	75 0a                	jne    402244 <notify_server+0x222>
  40223a:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  402241:	5b                   	pop    %rbx
  402242:	5d                   	pop    %rbp
  402243:	c3                   	ret
  402244:	e8 72 02 00 00       	call   4024bb <__stack_chk_fail>

0000000000402249 <validate>:
  402249:	f3 0f 1e fa          	endbr64
  40224d:	53                   	push   %rbx
  40224e:	89 fb                	mov    %edi,%ebx
  402250:	83 3d d9 42 00 00 00 	cmpl   $0x0,0x42d9(%rip)        # 406530 <is_checker>
  402257:	74 79                	je     4022d2 <validate+0x89>
  402259:	39 3d c5 42 00 00    	cmp    %edi,0x42c5(%rip)        # 406524 <vlevel>
  40225f:	75 39                	jne    40229a <validate+0x51>
  402261:	8b 15 b9 42 00 00    	mov    0x42b9(%rip),%edx        # 406520 <check_level>
  402267:	39 fa                	cmp    %edi,%edx
  402269:	75 45                	jne    4022b0 <validate+0x67>
  40226b:	0f be 0d d6 4e 00 00 	movsbl 0x4ed6(%rip),%ecx        # 407148 <target_prefix>
  402272:	4c 8d 0d c7 42 00 00 	lea    0x42c7(%rip),%r9        # 406540 <gets_buf>
  402279:	41 89 f8             	mov    %edi,%r8d
  40227c:	8b 15 a6 42 00 00    	mov    0x42a6(%rip),%edx        # 406528 <authkey>
  402282:	48 8d 35 7f 20 00 00 	lea    0x207f(%rip),%rsi        # 404308 <_IO_stdin_used+0x308>
  402289:	bf 02 00 00 00       	mov    $0x2,%edi
  40228e:	b8 00 00 00 00       	mov    $0x0,%eax
  402293:	e8 f8 ee ff ff       	call   401190 <__printf_chk@plt>
  402298:	5b                   	pop    %rbx
  402299:	c3                   	ret
  40229a:	48 8d 3d 13 24 00 00 	lea    0x2413(%rip),%rdi        # 4046b4 <_IO_stdin_used+0x6b4>
  4022a1:	e8 da ed ff ff       	call   401080 <puts@plt>
  4022a6:	b8 00 00 00 00       	mov    $0x0,%eax
  4022ab:	e8 de fc ff ff       	call   401f8e <check_fail>
  4022b0:	89 f9                	mov    %edi,%ecx
  4022b2:	48 8d 35 27 20 00 00 	lea    0x2027(%rip),%rsi        # 4042e0 <_IO_stdin_used+0x2e0>
  4022b9:	bf 02 00 00 00       	mov    $0x2,%edi
  4022be:	b8 00 00 00 00       	mov    $0x0,%eax
  4022c3:	e8 c8 ee ff ff       	call   401190 <__printf_chk@plt>
  4022c8:	b8 00 00 00 00       	mov    $0x0,%eax
  4022cd:	e8 bc fc ff ff       	call   401f8e <check_fail>
  4022d2:	39 3d 4c 42 00 00    	cmp    %edi,0x424c(%rip)        # 406524 <vlevel>
  4022d8:	74 1a                	je     4022f4 <validate+0xab>
  4022da:	48 8d 3d d3 23 00 00 	lea    0x23d3(%rip),%rdi        # 4046b4 <_IO_stdin_used+0x6b4>
  4022e1:	e8 9a ed ff ff       	call   401080 <puts@plt>
  4022e6:	89 de                	mov    %ebx,%esi
  4022e8:	bf 00 00 00 00       	mov    $0x0,%edi
  4022ed:	e8 30 fd ff ff       	call   402022 <notify_server>
  4022f2:	eb a4                	jmp    402298 <validate+0x4f>
  4022f4:	0f be 0d 4d 4e 00 00 	movsbl 0x4e4d(%rip),%ecx        # 407148 <target_prefix>
  4022fb:	89 fa                	mov    %edi,%edx
  4022fd:	48 8d 35 2c 20 00 00 	lea    0x202c(%rip),%rsi        # 404330 <_IO_stdin_used+0x330>
  402304:	bf 02 00 00 00       	mov    $0x2,%edi
  402309:	b8 00 00 00 00       	mov    $0x0,%eax
  40230e:	e8 7d ee ff ff       	call   401190 <__printf_chk@plt>
  402313:	89 de                	mov    %ebx,%esi
  402315:	bf 01 00 00 00       	mov    $0x1,%edi
  40231a:	e8 03 fd ff ff       	call   402022 <notify_server>
  40231f:	e9 74 ff ff ff       	jmp    402298 <validate+0x4f>

0000000000402324 <fail>:
  402324:	f3 0f 1e fa          	endbr64
  402328:	48 83 ec 08          	sub    $0x8,%rsp
  40232c:	83 3d fd 41 00 00 00 	cmpl   $0x0,0x41fd(%rip)        # 406530 <is_checker>
  402333:	75 11                	jne    402346 <fail+0x22>
  402335:	89 fe                	mov    %edi,%esi
  402337:	bf 00 00 00 00       	mov    $0x0,%edi
  40233c:	e8 e1 fc ff ff       	call   402022 <notify_server>
  402341:	48 83 c4 08          	add    $0x8,%rsp
  402345:	c3                   	ret
  402346:	b8 00 00 00 00       	mov    $0x0,%eax
  40234b:	e8 3e fc ff ff       	call   401f8e <check_fail>

0000000000402350 <bushandler>:
  402350:	f3 0f 1e fa          	endbr64
  402354:	50                   	push   %rax
  402355:	58                   	pop    %rax
  402356:	48 83 ec 08          	sub    $0x8,%rsp
  40235a:	83 3d cf 41 00 00 00 	cmpl   $0x0,0x41cf(%rip)        # 406530 <is_checker>
  402361:	74 16                	je     402379 <bushandler+0x29>
  402363:	48 8d 3d 68 23 00 00 	lea    0x2368(%rip),%rdi        # 4046d2 <_IO_stdin_used+0x6d2>
  40236a:	e8 11 ed ff ff       	call   401080 <puts@plt>
  40236f:	b8 00 00 00 00       	mov    $0x0,%eax
  402374:	e8 15 fc ff ff       	call   401f8e <check_fail>
  402379:	48 8d 3d e8 1f 00 00 	lea    0x1fe8(%rip),%rdi        # 404368 <_IO_stdin_used+0x368>
  402380:	e8 fb ec ff ff       	call   401080 <puts@plt>
  402385:	48 8d 3d 50 23 00 00 	lea    0x2350(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  40238c:	e8 ef ec ff ff       	call   401080 <puts@plt>
  402391:	be 00 00 00 00       	mov    $0x0,%esi
  402396:	bf 00 00 00 00       	mov    $0x0,%edi
  40239b:	e8 82 fc ff ff       	call   402022 <notify_server>
  4023a0:	bf 01 00 00 00       	mov    $0x1,%edi
  4023a5:	e8 36 ee ff ff       	call   4011e0 <exit@plt>

00000000004023aa <seghandler>:
  4023aa:	f3 0f 1e fa          	endbr64
  4023ae:	50                   	push   %rax
  4023af:	58                   	pop    %rax
  4023b0:	48 83 ec 08          	sub    $0x8,%rsp
  4023b4:	83 3d 75 41 00 00 00 	cmpl   $0x0,0x4175(%rip)        # 406530 <is_checker>
  4023bb:	74 16                	je     4023d3 <seghandler+0x29>
  4023bd:	48 8d 3d 2e 23 00 00 	lea    0x232e(%rip),%rdi        # 4046f2 <_IO_stdin_used+0x6f2>
  4023c4:	e8 b7 ec ff ff       	call   401080 <puts@plt>
  4023c9:	b8 00 00 00 00       	mov    $0x0,%eax
  4023ce:	e8 bb fb ff ff       	call   401f8e <check_fail>
  4023d3:	48 8d 3d ae 1f 00 00 	lea    0x1fae(%rip),%rdi        # 404388 <_IO_stdin_used+0x388>
  4023da:	e8 a1 ec ff ff       	call   401080 <puts@plt>
  4023df:	48 8d 3d f6 22 00 00 	lea    0x22f6(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  4023e6:	e8 95 ec ff ff       	call   401080 <puts@plt>
  4023eb:	be 00 00 00 00       	mov    $0x0,%esi
  4023f0:	bf 00 00 00 00       	mov    $0x0,%edi
  4023f5:	e8 28 fc ff ff       	call   402022 <notify_server>
  4023fa:	bf 01 00 00 00       	mov    $0x1,%edi
  4023ff:	e8 dc ed ff ff       	call   4011e0 <exit@plt>

0000000000402404 <illegalhandler>:
  402404:	f3 0f 1e fa          	endbr64
  402408:	50                   	push   %rax
  402409:	58                   	pop    %rax
  40240a:	48 83 ec 08          	sub    $0x8,%rsp
  40240e:	83 3d 1b 41 00 00 00 	cmpl   $0x0,0x411b(%rip)        # 406530 <is_checker>
  402415:	74 16                	je     40242d <illegalhandler+0x29>
  402417:	48 8d 3d e7 22 00 00 	lea    0x22e7(%rip),%rdi        # 404705 <_IO_stdin_used+0x705>
  40241e:	e8 5d ec ff ff       	call   401080 <puts@plt>
  402423:	b8 00 00 00 00       	mov    $0x0,%eax
  402428:	e8 61 fb ff ff       	call   401f8e <check_fail>
  40242d:	48 8d 3d 7c 1f 00 00 	lea    0x1f7c(%rip),%rdi        # 4043b0 <_IO_stdin_used+0x3b0>
  402434:	e8 47 ec ff ff       	call   401080 <puts@plt>
  402439:	48 8d 3d 9c 22 00 00 	lea    0x229c(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  402440:	e8 3b ec ff ff       	call   401080 <puts@plt>
  402445:	be 00 00 00 00       	mov    $0x0,%esi
  40244a:	bf 00 00 00 00       	mov    $0x0,%edi
  40244f:	e8 ce fb ff ff       	call   402022 <notify_server>
  402454:	bf 01 00 00 00       	mov    $0x1,%edi
  402459:	e8 82 ed ff ff       	call   4011e0 <exit@plt>

000000000040245e <sigalrmhandler>:
  40245e:	f3 0f 1e fa          	endbr64
  402462:	50                   	push   %rax
  402463:	58                   	pop    %rax
  402464:	48 83 ec 08          	sub    $0x8,%rsp
  402468:	83 3d c1 40 00 00 00 	cmpl   $0x0,0x40c1(%rip)        # 406530 <is_checker>
  40246f:	74 16                	je     402487 <sigalrmhandler+0x29>
  402471:	48 8d 3d a1 22 00 00 	lea    0x22a1(%rip),%rdi        # 404719 <_IO_stdin_used+0x719>
  402478:	e8 03 ec ff ff       	call   401080 <puts@plt>
  40247d:	b8 00 00 00 00       	mov    $0x0,%eax
  402482:	e8 07 fb ff ff       	call   401f8e <check_fail>
  402487:	ba 02 00 00 00       	mov    $0x2,%edx
  40248c:	48 8d 35 4d 1f 00 00 	lea    0x1f4d(%rip),%rsi        # 4043e0 <_IO_stdin_used+0x3e0>
  402493:	bf 02 00 00 00       	mov    $0x2,%edi
  402498:	b8 00 00 00 00       	mov    $0x0,%eax
  40249d:	e8 ee ec ff ff       	call   401190 <__printf_chk@plt>
  4024a2:	be 00 00 00 00       	mov    $0x0,%esi
  4024a7:	bf 00 00 00 00       	mov    $0x0,%edi
  4024ac:	e8 71 fb ff ff       	call   402022 <notify_server>
  4024b1:	bf 01 00 00 00       	mov    $0x1,%edi
  4024b6:	e8 25 ed ff ff       	call   4011e0 <exit@plt>

00000000004024bb <__stack_chk_fail>:
  4024bb:	f3 0f 1e fa          	endbr64
  4024bf:	50                   	push   %rax
  4024c0:	58                   	pop    %rax
  4024c1:	48 83 ec 08          	sub    $0x8,%rsp
  4024c5:	83 3d 64 40 00 00 00 	cmpl   $0x0,0x4064(%rip)        # 406530 <is_checker>
  4024cc:	74 16                	je     4024e4 <__stack_chk_fail+0x29>
  4024ce:	48 8d 3d 4c 22 00 00 	lea    0x224c(%rip),%rdi        # 404721 <_IO_stdin_used+0x721>
  4024d5:	e8 a6 eb ff ff       	call   401080 <puts@plt>
  4024da:	b8 00 00 00 00       	mov    $0x0,%eax
  4024df:	e8 aa fa ff ff       	call   401f8e <check_fail>
  4024e4:	48 8d 3d 2d 1f 00 00 	lea    0x1f2d(%rip),%rdi        # 404418 <_IO_stdin_used+0x418>
  4024eb:	e8 90 eb ff ff       	call   401080 <puts@plt>
  4024f0:	48 8d 3d e5 21 00 00 	lea    0x21e5(%rip),%rdi        # 4046dc <_IO_stdin_used+0x6dc>
  4024f7:	e8 84 eb ff ff       	call   401080 <puts@plt>
  4024fc:	be 00 00 00 00       	mov    $0x0,%esi
  402501:	bf 00 00 00 00       	mov    $0x0,%edi
  402506:	e8 17 fb ff ff       	call   402022 <notify_server>
  40250b:	bf 01 00 00 00       	mov    $0x1,%edi
  402510:	e8 cb ec ff ff       	call   4011e0 <exit@plt>

0000000000402515 <launch>:
  402515:	f3 0f 1e fa          	endbr64
  402519:	55                   	push   %rbp
  40251a:	48 89 e5             	mov    %rsp,%rbp
  40251d:	53                   	push   %rbx
  40251e:	48 83 ec 18          	sub    $0x18,%rsp
  402522:	48 89 fa             	mov    %rdi,%rdx
  402525:	89 f3                	mov    %esi,%ebx
  402527:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40252e:	00 00 
  402530:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  402534:	31 c0                	xor    %eax,%eax
  402536:	48 8d 47 17          	lea    0x17(%rdi),%rax
  40253a:	48 89 c6             	mov    %rax,%rsi
  40253d:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
  402541:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  402547:	48 89 e1             	mov    %rsp,%rcx
  40254a:	48 29 c1             	sub    %rax,%rcx
  40254d:	48 39 cc             	cmp    %rcx,%rsp
  402550:	74 12                	je     402564 <launch+0x4f>
  402552:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402559:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  402560:	00 00 
  402562:	eb e9                	jmp    40254d <launch+0x38>
  402564:	48 89 f0             	mov    %rsi,%rax
  402567:	25 ff 0f 00 00       	and    $0xfff,%eax
  40256c:	48 29 c4             	sub    %rax,%rsp
  40256f:	48 85 c0             	test   %rax,%rax
  402572:	74 06                	je     40257a <launch+0x65>
  402574:	48 83 4c 04 f8 00    	orq    $0x0,-0x8(%rsp,%rax,1)
  40257a:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  40257f:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  402583:	48 89 d1             	mov    %rdx,%rcx
  402586:	be f4 00 00 00       	mov    $0xf4,%esi
  40258b:	e8 40 ec ff ff       	call   4011d0 <__memset_chk@plt>
  402590:	48 8b 05 09 3f 00 00 	mov    0x3f09(%rip),%rax        # 4064a0 <stdin@GLIBC_2.2.5>
  402597:	48 39 05 7a 3f 00 00 	cmp    %rax,0x3f7a(%rip)        # 406518 <infile>
  40259e:	74 42                	je     4025e2 <launch+0xcd>
  4025a0:	c7 05 7a 3f 00 00 00 	movl   $0x0,0x3f7a(%rip)        # 406524 <vlevel>
  4025a7:	00 00 00 
  4025aa:	85 db                	test   %ebx,%ebx
  4025ac:	75 4c                	jne    4025fa <launch+0xe5>
  4025ae:	b8 00 00 00 00       	mov    $0x0,%eax
  4025b3:	e8 09 f9 ff ff       	call   401ec1 <test>
  4025b8:	83 3d 71 3f 00 00 00 	cmpl   $0x0,0x3f71(%rip)        # 406530 <is_checker>
  4025bf:	75 45                	jne    402606 <launch+0xf1>
  4025c1:	48 8d 3d 80 21 00 00 	lea    0x2180(%rip),%rdi        # 404748 <_IO_stdin_used+0x748>
  4025c8:	e8 b3 ea ff ff       	call   401080 <puts@plt>
  4025cd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4025d1:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4025d8:	00 00 
  4025da:	75 40                	jne    40261c <launch+0x107>
  4025dc:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  4025e0:	c9                   	leave
  4025e1:	c3                   	ret
  4025e2:	48 8d 35 47 21 00 00 	lea    0x2147(%rip),%rsi        # 404730 <_IO_stdin_used+0x730>
  4025e9:	bf 02 00 00 00       	mov    $0x2,%edi
  4025ee:	b8 00 00 00 00       	mov    $0x0,%eax
  4025f3:	e8 98 eb ff ff       	call   401190 <__printf_chk@plt>
  4025f8:	eb a6                	jmp    4025a0 <launch+0x8b>
  4025fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4025ff:	e8 ec f8 ff ff       	call   401ef0 <test2>
  402604:	eb b2                	jmp    4025b8 <launch+0xa3>
  402606:	48 8d 3d 30 21 00 00 	lea    0x2130(%rip),%rdi        # 40473d <_IO_stdin_used+0x73d>
  40260d:	e8 6e ea ff ff       	call   401080 <puts@plt>
  402612:	b8 00 00 00 00       	mov    $0x0,%eax
  402617:	e8 72 f9 ff ff       	call   401f8e <check_fail>
  40261c:	e8 9a fe ff ff       	call   4024bb <__stack_chk_fail>

0000000000402621 <stable_launch>:
  402621:	f3 0f 1e fa          	endbr64
  402625:	55                   	push   %rbp
  402626:	53                   	push   %rbx
  402627:	48 83 ec 08          	sub    $0x8,%rsp
  40262b:	89 f5                	mov    %esi,%ebp
  40262d:	48 89 3d dc 3e 00 00 	mov    %rdi,0x3edc(%rip)        # 406510 <global_offset>
  402634:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  40263a:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402640:	b9 32 01 00 00       	mov    $0x132,%ecx
  402645:	ba 07 00 00 00       	mov    $0x7,%edx
  40264a:	be 00 00 10 00       	mov    $0x100000,%esi
  40264f:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402654:	e8 57 ea ff ff       	call   4010b0 <mmap@plt>
  402659:	48 89 c3             	mov    %rax,%rbx
  40265c:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  402662:	75 4a                	jne    4026ae <stable_launch+0x8d>
  402664:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  40266b:	48 89 15 96 3e 00 00 	mov    %rdx,0x3e96(%rip)        # 406508 <stack_top>
  402672:	48 89 e0             	mov    %rsp,%rax
  402675:	48 89 d4             	mov    %rdx,%rsp
  402678:	48 89 c2             	mov    %rax,%rdx
  40267b:	48 89 15 7e 3e 00 00 	mov    %rdx,0x3e7e(%rip)        # 406500 <global_save_stack>
  402682:	89 ee                	mov    %ebp,%esi
  402684:	48 8b 3d 85 3e 00 00 	mov    0x3e85(%rip),%rdi        # 406510 <global_offset>
  40268b:	e8 85 fe ff ff       	call   402515 <launch>
  402690:	48 8b 05 69 3e 00 00 	mov    0x3e69(%rip),%rax        # 406500 <global_save_stack>
  402697:	48 89 c4             	mov    %rax,%rsp
  40269a:	be 00 00 10 00       	mov    $0x100000,%esi
  40269f:	48 89 df             	mov    %rbx,%rdi
  4026a2:	e8 d9 ea ff ff       	call   401180 <munmap@plt>
  4026a7:	48 83 c4 08          	add    $0x8,%rsp
  4026ab:	5b                   	pop    %rbx
  4026ac:	5d                   	pop    %rbp
  4026ad:	c3                   	ret
  4026ae:	be 00 00 10 00       	mov    $0x100000,%esi
  4026b3:	48 89 c7             	mov    %rax,%rdi
  4026b6:	e8 c5 ea ff ff       	call   401180 <munmap@plt>
  4026bb:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  4026c0:	48 8d 15 79 1d 00 00 	lea    0x1d79(%rip),%rdx        # 404440 <_IO_stdin_used+0x440>
  4026c7:	be 02 00 00 00       	mov    $0x2,%esi
  4026cc:	48 8b 3d 0d 3e 00 00 	mov    0x3e0d(%rip),%rdi        # 4064e0 <stderr@GLIBC_2.2.5>
  4026d3:	b8 00 00 00 00       	mov    $0x0,%eax
  4026d8:	e8 23 eb ff ff       	call   401200 <__fprintf_chk@plt>
  4026dd:	bf 01 00 00 00       	mov    $0x1,%edi
  4026e2:	e8 f9 ea ff ff       	call   4011e0 <exit@plt>

00000000004026e7 <rio_readinitb>:
  4026e7:	89 37                	mov    %esi,(%rdi)
  4026e9:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  4026f0:	48 8d 47 10          	lea    0x10(%rdi),%rax
  4026f4:	48 89 47 08          	mov    %rax,0x8(%rdi)
  4026f8:	c3                   	ret

00000000004026f9 <sigalrm_handler>:
  4026f9:	f3 0f 1e fa          	endbr64
  4026fd:	50                   	push   %rax
  4026fe:	58                   	pop    %rax
  4026ff:	48 83 ec 08          	sub    $0x8,%rsp
  402703:	b9 00 00 00 00       	mov    $0x0,%ecx
  402708:	48 8d 15 59 1d 00 00 	lea    0x1d59(%rip),%rdx        # 404468 <_IO_stdin_used+0x468>
  40270f:	be 02 00 00 00       	mov    $0x2,%esi
  402714:	48 8b 3d c5 3d 00 00 	mov    0x3dc5(%rip),%rdi        # 4064e0 <stderr@GLIBC_2.2.5>
  40271b:	b8 00 00 00 00       	mov    $0x0,%eax
  402720:	e8 db ea ff ff       	call   401200 <__fprintf_chk@plt>
  402725:	bf 01 00 00 00       	mov    $0x1,%edi
  40272a:	e8 b1 ea ff ff       	call   4011e0 <exit@plt>

000000000040272f <rio_writen>:
  40272f:	41 55                	push   %r13
  402731:	41 54                	push   %r12
  402733:	55                   	push   %rbp
  402734:	53                   	push   %rbx
  402735:	48 83 ec 08          	sub    $0x8,%rsp
  402739:	41 89 fc             	mov    %edi,%r12d
  40273c:	48 89 f5             	mov    %rsi,%rbp
  40273f:	49 89 d5             	mov    %rdx,%r13
  402742:	48 89 d3             	mov    %rdx,%rbx
  402745:	eb 06                	jmp    40274d <rio_writen+0x1e>
  402747:	48 29 c3             	sub    %rax,%rbx
  40274a:	48 01 c5             	add    %rax,%rbp
  40274d:	48 85 db             	test   %rbx,%rbx
  402750:	74 24                	je     402776 <rio_writen+0x47>
  402752:	48 89 da             	mov    %rbx,%rdx
  402755:	48 89 ee             	mov    %rbp,%rsi
  402758:	44 89 e7             	mov    %r12d,%edi
  40275b:	e8 30 e9 ff ff       	call   401090 <write@plt>
  402760:	48 85 c0             	test   %rax,%rax
  402763:	7f e2                	jg     402747 <rio_writen+0x18>
  402765:	e8 c6 e8 ff ff       	call   401030 <__errno_location@plt>
  40276a:	83 38 04             	cmpl   $0x4,(%rax)
  40276d:	75 15                	jne    402784 <rio_writen+0x55>
  40276f:	b8 00 00 00 00       	mov    $0x0,%eax
  402774:	eb d1                	jmp    402747 <rio_writen+0x18>
  402776:	4c 89 e8             	mov    %r13,%rax
  402779:	48 83 c4 08          	add    $0x8,%rsp
  40277d:	5b                   	pop    %rbx
  40277e:	5d                   	pop    %rbp
  40277f:	41 5c                	pop    %r12
  402781:	41 5d                	pop    %r13
  402783:	c3                   	ret
  402784:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40278b:	eb ec                	jmp    402779 <rio_writen+0x4a>

000000000040278d <rio_read>:
  40278d:	41 55                	push   %r13
  40278f:	41 54                	push   %r12
  402791:	55                   	push   %rbp
  402792:	53                   	push   %rbx
  402793:	48 83 ec 08          	sub    $0x8,%rsp
  402797:	48 89 fb             	mov    %rdi,%rbx
  40279a:	49 89 f5             	mov    %rsi,%r13
  40279d:	49 89 d4             	mov    %rdx,%r12
  4027a0:	eb 0a                	jmp    4027ac <rio_read+0x1f>
  4027a2:	e8 89 e8 ff ff       	call   401030 <__errno_location@plt>
  4027a7:	83 38 04             	cmpl   $0x4,(%rax)
  4027aa:	75 5f                	jne    40280b <rio_read+0x7e>
  4027ac:	8b 6b 04             	mov    0x4(%rbx),%ebp
  4027af:	85 ed                	test   %ebp,%ebp
  4027b1:	7f 22                	jg     4027d5 <rio_read+0x48>
  4027b3:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  4027b7:	8b 3b                	mov    (%rbx),%edi
  4027b9:	ba 00 20 00 00       	mov    $0x2000,%edx
  4027be:	48 89 ee             	mov    %rbp,%rsi
  4027c1:	e8 1a e9 ff ff       	call   4010e0 <read@plt>
  4027c6:	89 43 04             	mov    %eax,0x4(%rbx)
  4027c9:	85 c0                	test   %eax,%eax
  4027cb:	78 d5                	js     4027a2 <rio_read+0x15>
  4027cd:	74 45                	je     402814 <rio_read+0x87>
  4027cf:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  4027d3:	eb d7                	jmp    4027ac <rio_read+0x1f>
  4027d5:	89 e8                	mov    %ebp,%eax
  4027d7:	4c 39 e0             	cmp    %r12,%rax
  4027da:	72 03                	jb     4027df <rio_read+0x52>
  4027dc:	44 89 e5             	mov    %r12d,%ebp
  4027df:	4c 63 e5             	movslq %ebp,%r12
  4027e2:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  4027e6:	4c 89 e2             	mov    %r12,%rdx
  4027e9:	4c 89 ef             	mov    %r13,%rdi
  4027ec:	e8 4f e9 ff ff       	call   401140 <memcpy@plt>
  4027f1:	4c 01 63 08          	add    %r12,0x8(%rbx)
  4027f5:	8b 43 04             	mov    0x4(%rbx),%eax
  4027f8:	29 e8                	sub    %ebp,%eax
  4027fa:	89 43 04             	mov    %eax,0x4(%rbx)
  4027fd:	4c 89 e0             	mov    %r12,%rax
  402800:	48 83 c4 08          	add    $0x8,%rsp
  402804:	5b                   	pop    %rbx
  402805:	5d                   	pop    %rbp
  402806:	41 5c                	pop    %r12
  402808:	41 5d                	pop    %r13
  40280a:	c3                   	ret
  40280b:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402812:	eb ec                	jmp    402800 <rio_read+0x73>
  402814:	b8 00 00 00 00       	mov    $0x0,%eax
  402819:	eb e5                	jmp    402800 <rio_read+0x73>

000000000040281b <rio_readlineb>:
  40281b:	41 55                	push   %r13
  40281d:	41 54                	push   %r12
  40281f:	55                   	push   %rbp
  402820:	53                   	push   %rbx
  402821:	48 83 ec 18          	sub    $0x18,%rsp
  402825:	49 89 fd             	mov    %rdi,%r13
  402828:	48 89 f5             	mov    %rsi,%rbp
  40282b:	49 89 d4             	mov    %rdx,%r12
  40282e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402835:	00 00 
  402837:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40283c:	31 c0                	xor    %eax,%eax
  40283e:	bb 01 00 00 00       	mov    $0x1,%ebx
  402843:	eb 18                	jmp    40285d <rio_readlineb+0x42>
  402845:	85 c0                	test   %eax,%eax
  402847:	75 65                	jne    4028ae <rio_readlineb+0x93>
  402849:	48 83 fb 01          	cmp    $0x1,%rbx
  40284d:	75 3d                	jne    40288c <rio_readlineb+0x71>
  40284f:	b8 00 00 00 00       	mov    $0x0,%eax
  402854:	eb 3d                	jmp    402893 <rio_readlineb+0x78>
  402856:	48 83 c3 01          	add    $0x1,%rbx
  40285a:	48 89 d5             	mov    %rdx,%rbp
  40285d:	4c 39 e3             	cmp    %r12,%rbx
  402860:	73 2a                	jae    40288c <rio_readlineb+0x71>
  402862:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  402867:	ba 01 00 00 00       	mov    $0x1,%edx
  40286c:	4c 89 ef             	mov    %r13,%rdi
  40286f:	e8 19 ff ff ff       	call   40278d <rio_read>
  402874:	83 f8 01             	cmp    $0x1,%eax
  402877:	75 cc                	jne    402845 <rio_readlineb+0x2a>
  402879:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  40287d:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
  402882:	88 45 00             	mov    %al,0x0(%rbp)
  402885:	3c 0a                	cmp    $0xa,%al
  402887:	75 cd                	jne    402856 <rio_readlineb+0x3b>
  402889:	48 89 d5             	mov    %rdx,%rbp
  40288c:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402890:	48 89 d8             	mov    %rbx,%rax
  402893:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  402898:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40289f:	00 00 
  4028a1:	75 14                	jne    4028b7 <rio_readlineb+0x9c>
  4028a3:	48 83 c4 18          	add    $0x18,%rsp
  4028a7:	5b                   	pop    %rbx
  4028a8:	5d                   	pop    %rbp
  4028a9:	41 5c                	pop    %r12
  4028ab:	41 5d                	pop    %r13
  4028ad:	c3                   	ret
  4028ae:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4028b5:	eb dc                	jmp    402893 <rio_readlineb+0x78>
  4028b7:	e8 ff fb ff ff       	call   4024bb <__stack_chk_fail>

00000000004028bc <urlencode>:
  4028bc:	41 54                	push   %r12
  4028be:	55                   	push   %rbp
  4028bf:	53                   	push   %rbx
  4028c0:	48 83 ec 10          	sub    $0x10,%rsp
  4028c4:	48 89 fb             	mov    %rdi,%rbx
  4028c7:	48 89 f5             	mov    %rsi,%rbp
  4028ca:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4028d1:	00 00 
  4028d3:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4028d8:	31 c0                	xor    %eax,%eax
  4028da:	e8 c1 e7 ff ff       	call   4010a0 <strlen@plt>
  4028df:	eb 0f                	jmp    4028f0 <urlencode+0x34>
  4028e1:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  4028e5:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4028e9:	48 83 c3 01          	add    $0x1,%rbx
  4028ed:	44 89 e0             	mov    %r12d,%eax
  4028f0:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  4028f4:	85 c0                	test   %eax,%eax
  4028f6:	0f 84 a8 00 00 00    	je     4029a4 <urlencode+0xe8>
  4028fc:	44 0f b6 03          	movzbl (%rbx),%r8d
  402900:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402904:	0f 94 c0             	sete   %al
  402907:	41 80 f8 2d          	cmp    $0x2d,%r8b
  40290b:	0f 94 c2             	sete   %dl
  40290e:	08 d0                	or     %dl,%al
  402910:	75 cf                	jne    4028e1 <urlencode+0x25>
  402912:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402916:	74 c9                	je     4028e1 <urlencode+0x25>
  402918:	41 80 f8 5f          	cmp    $0x5f,%r8b
  40291c:	74 c3                	je     4028e1 <urlencode+0x25>
  40291e:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402922:	3c 09                	cmp    $0x9,%al
  402924:	76 bb                	jbe    4028e1 <urlencode+0x25>
  402926:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  40292a:	3c 19                	cmp    $0x19,%al
  40292c:	76 b3                	jbe    4028e1 <urlencode+0x25>
  40292e:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402932:	3c 19                	cmp    $0x19,%al
  402934:	76 ab                	jbe    4028e1 <urlencode+0x25>
  402936:	41 80 f8 20          	cmp    $0x20,%r8b
  40293a:	74 56                	je     402992 <urlencode+0xd6>
  40293c:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402940:	3c 5f                	cmp    $0x5f,%al
  402942:	0f 96 c0             	setbe  %al
  402945:	41 80 f8 09          	cmp    $0x9,%r8b
  402949:	0f 94 c2             	sete   %dl
  40294c:	08 d0                	or     %dl,%al
  40294e:	74 4f                	je     40299f <urlencode+0xe3>
  402950:	48 89 e7             	mov    %rsp,%rdi
  402953:	45 0f b6 c0          	movzbl %r8b,%r8d
  402957:	48 8d 0d f8 1d 00 00 	lea    0x1df8(%rip),%rcx        # 404756 <_IO_stdin_used+0x756>
  40295e:	ba 08 00 00 00       	mov    $0x8,%edx
  402963:	be 02 00 00 00       	mov    $0x2,%esi
  402968:	b8 00 00 00 00       	mov    $0x0,%eax
  40296d:	e8 ae e8 ff ff       	call   401220 <__sprintf_chk@plt>
  402972:	0f b6 04 24          	movzbl (%rsp),%eax
  402976:	88 45 00             	mov    %al,0x0(%rbp)
  402979:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  40297e:	88 45 01             	mov    %al,0x1(%rbp)
  402981:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402986:	88 45 02             	mov    %al,0x2(%rbp)
  402989:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  40298d:	e9 57 ff ff ff       	jmp    4028e9 <urlencode+0x2d>
  402992:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402996:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40299a:	e9 4a ff ff ff       	jmp    4028e9 <urlencode+0x2d>
  40299f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029a4:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  4029a9:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4029b0:	00 00 
  4029b2:	75 09                	jne    4029bd <urlencode+0x101>
  4029b4:	48 83 c4 10          	add    $0x10,%rsp
  4029b8:	5b                   	pop    %rbx
  4029b9:	5d                   	pop    %rbp
  4029ba:	41 5c                	pop    %r12
  4029bc:	c3                   	ret
  4029bd:	e8 f9 fa ff ff       	call   4024bb <__stack_chk_fail>

00000000004029c2 <submitr>:
  4029c2:	f3 0f 1e fa          	endbr64
  4029c6:	41 57                	push   %r15
  4029c8:	41 56                	push   %r14
  4029ca:	41 55                	push   %r13
  4029cc:	41 54                	push   %r12
  4029ce:	55                   	push   %rbp
  4029cf:	53                   	push   %rbx
  4029d0:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
  4029d7:	ff 
  4029d8:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4029df:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  4029e4:	4c 39 dc             	cmp    %r11,%rsp
  4029e7:	75 ef                	jne    4029d8 <submitr+0x16>
  4029e9:	48 83 ec 68          	sub    $0x68,%rsp
  4029ed:	49 89 fd             	mov    %rdi,%r13
  4029f0:	41 89 f6             	mov    %esi,%r14d
  4029f3:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
  4029f8:	49 89 cc             	mov    %rcx,%r12
  4029fb:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  402a00:	4c 89 4c 24 08       	mov    %r9,0x8(%rsp)
  402a05:	4c 8b bc 24 a0 a0 00 	mov    0xa0a0(%rsp),%r15
  402a0c:	00 
  402a0d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402a14:	00 00 
  402a16:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  402a1d:	00 
  402a1e:	31 c0                	xor    %eax,%eax
  402a20:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402a27:	00 
  402a28:	ba 00 00 00 00       	mov    $0x0,%edx
  402a2d:	be 01 00 00 00       	mov    $0x1,%esi
  402a32:	bf 02 00 00 00       	mov    $0x2,%edi
  402a37:	e8 f4 e7 ff ff       	call   401230 <socket@plt>
  402a3c:	85 c0                	test   %eax,%eax
  402a3e:	0f 88 72 02 00 00    	js     402cb6 <submitr+0x2f4>
  402a44:	89 c3                	mov    %eax,%ebx
  402a46:	4c 89 ef             	mov    %r13,%rdi
  402a49:	e8 c2 e6 ff ff       	call   401110 <gethostbyname@plt>
  402a4e:	48 85 c0             	test   %rax,%rax
  402a51:	0f 84 ab 02 00 00    	je     402d02 <submitr+0x340>
  402a57:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
  402a5c:	66 0f ef c0          	pxor   %xmm0,%xmm0
  402a60:	0f 29 44 24 30       	movaps %xmm0,0x30(%rsp)
  402a65:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402a6c:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402a70:	48 8b 40 18          	mov    0x18(%rax),%rax
  402a74:	48 8b 30             	mov    (%rax),%rsi
  402a77:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402a7c:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402a81:	e8 9a e6 ff ff       	call   401120 <__memmove_chk@plt>
  402a86:	66 41 c1 c6 08       	rol    $0x8,%r14w
  402a8b:	66 44 89 74 24 32    	mov    %r14w,0x32(%rsp)
  402a91:	ba 10 00 00 00       	mov    $0x10,%edx
  402a96:	48 89 ee             	mov    %rbp,%rsi
  402a99:	89 df                	mov    %ebx,%edi
  402a9b:	e8 50 e7 ff ff       	call   4011f0 <connect@plt>
  402aa0:	85 c0                	test   %eax,%eax
  402aa2:	0f 88 cc 02 00 00    	js     402d74 <submitr+0x3b2>
  402aa8:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402aad:	e8 ee e5 ff ff       	call   4010a0 <strlen@plt>
  402ab2:	49 89 c6             	mov    %rax,%r14
  402ab5:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  402aba:	e8 e1 e5 ff ff       	call   4010a0 <strlen@plt>
  402abf:	48 89 c5             	mov    %rax,%rbp
  402ac2:	4c 89 e7             	mov    %r12,%rdi
  402ac5:	e8 d6 e5 ff ff       	call   4010a0 <strlen@plt>
  402aca:	48 01 c5             	add    %rax,%rbp
  402acd:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402ad2:	e8 c9 e5 ff ff       	call   4010a0 <strlen@plt>
  402ad7:	48 01 c5             	add    %rax,%rbp
  402ada:	4b 8d 04 76          	lea    (%r14,%r14,2),%rax
  402ade:	48 8d 84 05 80 00 00 	lea    0x80(%rbp,%rax,1),%rax
  402ae5:	00 
  402ae6:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402aec:	0f 87 e6 02 00 00    	ja     402dd8 <submitr+0x416>
  402af2:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  402af9:	00 
  402afa:	b9 00 04 00 00       	mov    $0x400,%ecx
  402aff:	b8 00 00 00 00       	mov    $0x0,%eax
  402b04:	48 89 f7             	mov    %rsi,%rdi
  402b07:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402b0a:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402b0f:	e8 a8 fd ff ff       	call   4028bc <urlencode>
  402b14:	85 c0                	test   %eax,%eax
  402b16:	0f 88 2e 03 00 00    	js     402e4a <submitr+0x488>
  402b1c:	48 8d ac 24 50 20 00 	lea    0x2050(%rsp),%rbp
  402b23:	00 
  402b24:	48 83 ec 08          	sub    $0x8,%rsp
  402b28:	41 55                	push   %r13
  402b2a:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
  402b31:	00 
  402b32:	50                   	push   %rax
  402b33:	41 54                	push   %r12
  402b35:	4c 8b 4c 24 38       	mov    0x38(%rsp),%r9
  402b3a:	4c 8b 44 24 30       	mov    0x30(%rsp),%r8
  402b3f:	48 8d 0d 4a 19 00 00 	lea    0x194a(%rip),%rcx        # 404490 <_IO_stdin_used+0x490>
  402b46:	ba 00 20 00 00       	mov    $0x2000,%edx
  402b4b:	be 02 00 00 00       	mov    $0x2,%esi
  402b50:	48 89 ef             	mov    %rbp,%rdi
  402b53:	b8 00 00 00 00       	mov    $0x0,%eax
  402b58:	e8 c3 e6 ff ff       	call   401220 <__sprintf_chk@plt>
  402b5d:	48 83 c4 20          	add    $0x20,%rsp
  402b61:	48 89 ef             	mov    %rbp,%rdi
  402b64:	e8 37 e5 ff ff       	call   4010a0 <strlen@plt>
  402b69:	48 89 c2             	mov    %rax,%rdx
  402b6c:	48 89 ee             	mov    %rbp,%rsi
  402b6f:	89 df                	mov    %ebx,%edi
  402b71:	e8 b9 fb ff ff       	call   40272f <rio_writen>
  402b76:	48 85 c0             	test   %rax,%rax
  402b79:	0f 88 53 03 00 00    	js     402ed2 <submitr+0x510>
  402b7f:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
  402b84:	89 de                	mov    %ebx,%esi
  402b86:	48 89 ef             	mov    %rbp,%rdi
  402b89:	e8 59 fb ff ff       	call   4026e7 <rio_readinitb>
  402b8e:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402b95:	00 
  402b96:	ba 00 20 00 00       	mov    $0x2000,%edx
  402b9b:	48 89 ef             	mov    %rbp,%rdi
  402b9e:	e8 78 fc ff ff       	call   40281b <rio_readlineb>
  402ba3:	48 85 c0             	test   %rax,%rax
  402ba6:	0f 8e 92 03 00 00    	jle    402f3e <submitr+0x57c>
  402bac:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402bb1:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  402bb8:	00 
  402bb9:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402bc0:	00 
  402bc1:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  402bc8:	00 
  402bc9:	48 8d 35 8d 1b 00 00 	lea    0x1b8d(%rip),%rsi        # 40475d <_IO_stdin_used+0x75d>
  402bd0:	b8 00 00 00 00       	mov    $0x0,%eax
  402bd5:	e8 96 e5 ff ff       	call   401170 <__isoc99_sscanf@plt>
  402bda:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402be1:	00 
  402be2:	48 8d 35 8b 1b 00 00 	lea    0x1b8b(%rip),%rsi        # 404774 <_IO_stdin_used+0x774>
  402be9:	e8 02 e5 ff ff       	call   4010f0 <strcmp@plt>
  402bee:	85 c0                	test   %eax,%eax
  402bf0:	0f 84 c8 03 00 00    	je     402fbe <submitr+0x5fc>
  402bf6:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402bfd:	00 
  402bfe:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402c03:	ba 00 20 00 00       	mov    $0x2000,%edx
  402c08:	e8 0e fc ff ff       	call   40281b <rio_readlineb>
  402c0d:	48 85 c0             	test   %rax,%rax
  402c10:	7f c8                	jg     402bda <submitr+0x218>
  402c12:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402c19:	3a 20 43 
  402c1c:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402c23:	20 75 6e 
  402c26:	49 89 07             	mov    %rax,(%r15)
  402c29:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402c2d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402c34:	74 6f 20 
  402c37:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  402c3e:	68 65 61 
  402c41:	49 89 47 10          	mov    %rax,0x10(%r15)
  402c45:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402c49:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402c50:	66 72 6f 
  402c53:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
  402c5a:	6f 6c 61 
  402c5d:	49 89 47 20          	mov    %rax,0x20(%r15)
  402c61:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402c65:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402c6c:	6c 61 62 
  402c6f:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  402c76:	65 72 00 
  402c79:	49 89 47 29          	mov    %rax,0x29(%r15)
  402c7d:	49 89 57 31          	mov    %rdx,0x31(%r15)
  402c81:	89 df                	mov    %ebx,%edi
  402c83:	e8 48 e4 ff ff       	call   4010d0 <close@plt>
  402c88:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c8d:	48 8b 94 24 58 a0 00 	mov    0xa058(%rsp),%rdx
  402c94:	00 
  402c95:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402c9c:	00 00 
  402c9e:	0f 85 67 04 00 00    	jne    40310b <submitr+0x749>
  402ca4:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  402cab:	5b                   	pop    %rbx
  402cac:	5d                   	pop    %rbp
  402cad:	41 5c                	pop    %r12
  402caf:	41 5d                	pop    %r13
  402cb1:	41 5e                	pop    %r14
  402cb3:	41 5f                	pop    %r15
  402cb5:	c3                   	ret
  402cb6:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402cbd:	3a 20 43 
  402cc0:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402cc7:	20 75 6e 
  402cca:	49 89 07             	mov    %rax,(%r15)
  402ccd:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402cd1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402cd8:	74 6f 20 
  402cdb:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402ce2:	65 20 73 
  402ce5:	49 89 47 10          	mov    %rax,0x10(%r15)
  402ce9:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402ced:	48 b8 20 73 6f 63 6b 	movabs $0x74656b636f7320,%rax
  402cf4:	65 74 00 
  402cf7:	49 89 47 1e          	mov    %rax,0x1e(%r15)
  402cfb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d00:	eb 8b                	jmp    402c8d <submitr+0x2cb>
  402d02:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402d09:	3a 20 44 
  402d0c:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402d13:	20 75 6e 
  402d16:	49 89 07             	mov    %rax,(%r15)
  402d19:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402d1d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402d24:	74 6f 20 
  402d27:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402d2e:	76 65 20 
  402d31:	49 89 47 10          	mov    %rax,0x10(%r15)
  402d35:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402d39:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  402d40:	61 62 20 
  402d43:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
  402d4a:	72 20 61 
  402d4d:	49 89 47 20          	mov    %rax,0x20(%r15)
  402d51:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402d55:	48 b8 61 64 64 72 65 	movabs $0x73736572646461,%rax
  402d5c:	73 73 00 
  402d5f:	49 89 47 2f          	mov    %rax,0x2f(%r15)
  402d63:	89 df                	mov    %ebx,%edi
  402d65:	e8 66 e3 ff ff       	call   4010d0 <close@plt>
  402d6a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d6f:	e9 19 ff ff ff       	jmp    402c8d <submitr+0x2cb>
  402d74:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402d7b:	3a 20 55 
  402d7e:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402d85:	20 74 6f 
  402d88:	49 89 07             	mov    %rax,(%r15)
  402d8b:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402d8f:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402d96:	65 63 74 
  402d99:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  402da0:	68 65 20 
  402da3:	49 89 47 10          	mov    %rax,0x10(%r15)
  402da7:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402dab:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402db2:	6c 61 62 
  402db5:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  402dbc:	65 72 00 
  402dbf:	49 89 47 1f          	mov    %rax,0x1f(%r15)
  402dc3:	49 89 57 27          	mov    %rdx,0x27(%r15)
  402dc7:	89 df                	mov    %ebx,%edi
  402dc9:	e8 02 e3 ff ff       	call   4010d0 <close@plt>
  402dce:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402dd3:	e9 b5 fe ff ff       	jmp    402c8d <submitr+0x2cb>
  402dd8:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402ddf:	3a 20 52 
  402de2:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402de9:	20 73 74 
  402dec:	49 89 07             	mov    %rax,(%r15)
  402def:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402df3:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402dfa:	74 6f 6f 
  402dfd:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  402e04:	65 2e 20 
  402e07:	49 89 47 10          	mov    %rax,0x10(%r15)
  402e0b:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402e0f:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402e16:	61 73 65 
  402e19:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  402e20:	49 54 52 
  402e23:	49 89 47 20          	mov    %rax,0x20(%r15)
  402e27:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402e2b:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402e32:	55 46 00 
  402e35:	49 89 47 30          	mov    %rax,0x30(%r15)
  402e39:	89 df                	mov    %ebx,%edi
  402e3b:	e8 90 e2 ff ff       	call   4010d0 <close@plt>
  402e40:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e45:	e9 43 fe ff ff       	jmp    402c8d <submitr+0x2cb>
  402e4a:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402e51:	3a 20 55 
  402e54:	48 ba 73 65 72 69 64 	movabs $0x7473206469726573,%rdx
  402e5b:	20 73 74 
  402e5e:	49 89 07             	mov    %rax,(%r15)
  402e61:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402e65:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402e6c:	63 6f 6e 
  402e6f:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  402e76:	20 61 6e 
  402e79:	49 89 47 10          	mov    %rax,0x10(%r15)
  402e7d:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402e81:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402e88:	67 61 6c 
  402e8b:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  402e92:	6e 70 72 
  402e95:	49 89 47 20          	mov    %rax,0x20(%r15)
  402e99:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402e9d:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402ea4:	6c 65 20 
  402ea7:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  402eae:	63 74 65 
  402eb1:	49 89 47 30          	mov    %rax,0x30(%r15)
  402eb5:	49 89 57 38          	mov    %rdx,0x38(%r15)
  402eb9:	41 c7 47 3f 65 72 2e 	movl   $0x2e7265,0x3f(%r15)
  402ec0:	00 
  402ec1:	89 df                	mov    %ebx,%edi
  402ec3:	e8 08 e2 ff ff       	call   4010d0 <close@plt>
  402ec8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ecd:	e9 bb fd ff ff       	jmp    402c8d <submitr+0x2cb>
  402ed2:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402ed9:	3a 20 43 
  402edc:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402ee3:	20 75 6e 
  402ee6:	49 89 07             	mov    %rax,(%r15)
  402ee9:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402eed:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402ef4:	74 6f 20 
  402ef7:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  402efe:	20 74 6f 
  402f01:	49 89 47 10          	mov    %rax,0x10(%r15)
  402f05:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402f09:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  402f10:	41 75 74 
  402f13:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
  402f1a:	73 65 72 
  402f1d:	49 89 47 20          	mov    %rax,0x20(%r15)
  402f21:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402f25:	41 c7 47 30 76 65 72 	movl   $0x726576,0x30(%r15)
  402f2c:	00 
  402f2d:	89 df                	mov    %ebx,%edi
  402f2f:	e8 9c e1 ff ff       	call   4010d0 <close@plt>
  402f34:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f39:	e9 4f fd ff ff       	jmp    402c8d <submitr+0x2cb>
  402f3e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402f45:	3a 20 43 
  402f48:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402f4f:	20 75 6e 
  402f52:	49 89 07             	mov    %rax,(%r15)
  402f55:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402f59:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402f60:	74 6f 20 
  402f63:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  402f6a:	66 69 72 
  402f6d:	49 89 47 10          	mov    %rax,0x10(%r15)
  402f71:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402f75:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402f7c:	61 64 65 
  402f7f:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
  402f86:	6d 20 41 
  402f89:	49 89 47 20          	mov    %rax,0x20(%r15)
  402f8d:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402f91:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402f98:	6c 61 62 
  402f9b:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  402fa2:	65 72 00 
  402fa5:	49 89 47 2e          	mov    %rax,0x2e(%r15)
  402fa9:	49 89 57 36          	mov    %rdx,0x36(%r15)
  402fad:	89 df                	mov    %ebx,%edi
  402faf:	e8 1c e1 ff ff       	call   4010d0 <close@plt>
  402fb4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402fb9:	e9 cf fc ff ff       	jmp    402c8d <submitr+0x2cb>
  402fbe:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402fc5:	00 
  402fc6:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402fcb:	ba 00 20 00 00       	mov    $0x2000,%edx
  402fd0:	e8 46 f8 ff ff       	call   40281b <rio_readlineb>
  402fd5:	48 85 c0             	test   %rax,%rax
  402fd8:	7e 78                	jle    403052 <submitr+0x690>
  402fda:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  402fdf:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402fe6:	0f 85 e6 00 00 00    	jne    4030d2 <submitr+0x710>
  402fec:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402ff3:	00 
  402ff4:	4c 89 ff             	mov    %r15,%rdi
  402ff7:	e8 74 e0 ff ff       	call   401070 <strcpy@plt>
  402ffc:	89 df                	mov    %ebx,%edi
  402ffe:	e8 cd e0 ff ff       	call   4010d0 <close@plt>
  403003:	48 8d 35 64 17 00 00 	lea    0x1764(%rip),%rsi        # 40476e <_IO_stdin_used+0x76e>
  40300a:	4c 89 ff             	mov    %r15,%rdi
  40300d:	e8 de e0 ff ff       	call   4010f0 <strcmp@plt>
  403012:	85 c0                	test   %eax,%eax
  403014:	0f 84 73 fc ff ff    	je     402c8d <submitr+0x2cb>
  40301a:	48 8d 35 51 17 00 00 	lea    0x1751(%rip),%rsi        # 404772 <_IO_stdin_used+0x772>
  403021:	4c 89 ff             	mov    %r15,%rdi
  403024:	e8 c7 e0 ff ff       	call   4010f0 <strcmp@plt>
  403029:	85 c0                	test   %eax,%eax
  40302b:	0f 84 5c fc ff ff    	je     402c8d <submitr+0x2cb>
  403031:	48 8d 35 3f 17 00 00 	lea    0x173f(%rip),%rsi        # 404777 <_IO_stdin_used+0x777>
  403038:	4c 89 ff             	mov    %r15,%rdi
  40303b:	e8 b0 e0 ff ff       	call   4010f0 <strcmp@plt>
  403040:	85 c0                	test   %eax,%eax
  403042:	0f 84 45 fc ff ff    	je     402c8d <submitr+0x2cb>
  403048:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40304d:	e9 3b fc ff ff       	jmp    402c8d <submitr+0x2cb>
  403052:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403059:	3a 20 43 
  40305c:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403063:	20 75 6e 
  403066:	49 89 07             	mov    %rax,(%r15)
  403069:	49 89 57 08          	mov    %rdx,0x8(%r15)
  40306d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403074:	74 6f 20 
  403077:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  40307e:	73 74 61 
  403081:	49 89 47 10          	mov    %rax,0x10(%r15)
  403085:	49 89 57 18          	mov    %rdx,0x18(%r15)
  403089:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  403090:	65 73 73 
  403093:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  40309a:	72 6f 6d 
  40309d:	49 89 47 20          	mov    %rax,0x20(%r15)
  4030a1:	49 89 57 28          	mov    %rdx,0x28(%r15)
  4030a5:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  4030ac:	6c 61 62 
  4030af:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  4030b6:	65 72 00 
  4030b9:	49 89 47 30          	mov    %rax,0x30(%r15)
  4030bd:	49 89 57 38          	mov    %rdx,0x38(%r15)
  4030c1:	89 df                	mov    %ebx,%edi
  4030c3:	e8 08 e0 ff ff       	call   4010d0 <close@plt>
  4030c8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4030cd:	e9 bb fb ff ff       	jmp    402c8d <submitr+0x2cb>
  4030d2:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  4030d9:	00 
  4030da:	48 8d 0d 0f 14 00 00 	lea    0x140f(%rip),%rcx        # 4044f0 <_IO_stdin_used+0x4f0>
  4030e1:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4030e8:	be 02 00 00 00       	mov    $0x2,%esi
  4030ed:	4c 89 ff             	mov    %r15,%rdi
  4030f0:	b8 00 00 00 00       	mov    $0x0,%eax
  4030f5:	e8 26 e1 ff ff       	call   401220 <__sprintf_chk@plt>
  4030fa:	89 df                	mov    %ebx,%edi
  4030fc:	e8 cf df ff ff       	call   4010d0 <close@plt>
  403101:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403106:	e9 82 fb ff ff       	jmp    402c8d <submitr+0x2cb>
  40310b:	e8 ab f3 ff ff       	call   4024bb <__stack_chk_fail>

0000000000403110 <init_timeout>:
  403110:	f3 0f 1e fa          	endbr64
  403114:	85 ff                	test   %edi,%edi
  403116:	74 26                	je     40313e <init_timeout+0x2e>
  403118:	53                   	push   %rbx
  403119:	89 fb                	mov    %edi,%ebx
  40311b:	78 1a                	js     403137 <init_timeout+0x27>
  40311d:	48 8d 35 d5 f5 ff ff 	lea    -0xa2b(%rip),%rsi        # 4026f9 <sigalrm_handler>
  403124:	bf 0e 00 00 00       	mov    $0xe,%edi
  403129:	e8 d2 df ff ff       	call   401100 <signal@plt>
  40312e:	89 df                	mov    %ebx,%edi
  403130:	e8 8b df ff ff       	call   4010c0 <alarm@plt>
  403135:	5b                   	pop    %rbx
  403136:	c3                   	ret
  403137:	bb 00 00 00 00       	mov    $0x0,%ebx
  40313c:	eb df                	jmp    40311d <init_timeout+0xd>
  40313e:	c3                   	ret

000000000040313f <init_driver>:
  40313f:	f3 0f 1e fa          	endbr64
  403143:	41 54                	push   %r12
  403145:	55                   	push   %rbp
  403146:	53                   	push   %rbx
  403147:	48 83 ec 20          	sub    $0x20,%rsp
  40314b:	48 89 fd             	mov    %rdi,%rbp
  40314e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  403155:	00 00 
  403157:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40315c:	31 c0                	xor    %eax,%eax
  40315e:	be 01 00 00 00       	mov    $0x1,%esi
  403163:	bf 0d 00 00 00       	mov    $0xd,%edi
  403168:	e8 93 df ff ff       	call   401100 <signal@plt>
  40316d:	be 01 00 00 00       	mov    $0x1,%esi
  403172:	bf 1d 00 00 00       	mov    $0x1d,%edi
  403177:	e8 84 df ff ff       	call   401100 <signal@plt>
  40317c:	be 01 00 00 00       	mov    $0x1,%esi
  403181:	bf 1d 00 00 00       	mov    $0x1d,%edi
  403186:	e8 75 df ff ff       	call   401100 <signal@plt>
  40318b:	ba 00 00 00 00       	mov    $0x0,%edx
  403190:	be 01 00 00 00       	mov    $0x1,%esi
  403195:	bf 02 00 00 00       	mov    $0x2,%edi
  40319a:	e8 91 e0 ff ff       	call   401230 <socket@plt>
  40319f:	85 c0                	test   %eax,%eax
  4031a1:	0f 88 93 00 00 00    	js     40323a <init_driver+0xfb>
  4031a7:	89 c3                	mov    %eax,%ebx
  4031a9:	48 8d 3d ca 15 00 00 	lea    0x15ca(%rip),%rdi        # 40477a <_IO_stdin_used+0x77a>
  4031b0:	e8 5b df ff ff       	call   401110 <gethostbyname@plt>
  4031b5:	48 85 c0             	test   %rax,%rax
  4031b8:	0f 84 c9 00 00 00    	je     403287 <init_driver+0x148>
  4031be:	49 89 e4             	mov    %rsp,%r12
  4031c1:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4031c5:	0f 29 04 24          	movaps %xmm0,(%rsp)
  4031c9:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  4031cf:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4031d3:	48 8b 40 18          	mov    0x18(%rax),%rax
  4031d7:	48 8b 30             	mov    (%rax),%rsi
  4031da:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  4031df:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4031e4:	e8 37 df ff ff       	call   401120 <__memmove_chk@plt>
  4031e9:	66 c7 44 24 02 00 50 	movw   $0x5000,0x2(%rsp)
  4031f0:	ba 10 00 00 00       	mov    $0x10,%edx
  4031f5:	4c 89 e6             	mov    %r12,%rsi
  4031f8:	89 df                	mov    %ebx,%edi
  4031fa:	e8 f1 df ff ff       	call   4011f0 <connect@plt>
  4031ff:	85 c0                	test   %eax,%eax
  403201:	0f 88 e5 00 00 00    	js     4032ec <init_driver+0x1ad>
  403207:	89 df                	mov    %ebx,%edi
  403209:	e8 c2 de ff ff       	call   4010d0 <close@plt>
  40320e:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  403214:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  403218:	b8 00 00 00 00       	mov    $0x0,%eax
  40321d:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
  403222:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  403229:	00 00 
  40322b:	0f 85 27 01 00 00    	jne    403358 <init_driver+0x219>
  403231:	48 83 c4 20          	add    $0x20,%rsp
  403235:	5b                   	pop    %rbx
  403236:	5d                   	pop    %rbp
  403237:	41 5c                	pop    %r12
  403239:	c3                   	ret
  40323a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403241:	3a 20 43 
  403244:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40324b:	20 75 6e 
  40324e:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403252:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403256:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40325d:	74 6f 20 
  403260:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  403267:	65 20 73 
  40326a:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40326e:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403272:	48 b8 20 73 6f 63 6b 	movabs $0x74656b636f7320,%rax
  403279:	65 74 00 
  40327c:	48 89 45 1e          	mov    %rax,0x1e(%rbp)
  403280:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403285:	eb 96                	jmp    40321d <init_driver+0xde>
  403287:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  40328e:	3a 20 44 
  403291:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  403298:	20 75 6e 
  40329b:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40329f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4032a3:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4032aa:	74 6f 20 
  4032ad:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  4032b4:	76 65 20 
  4032b7:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4032bb:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4032bf:	48 b8 20 73 65 72 76 	movabs $0x2072657672657320,%rax
  4032c6:	65 72 20 
  4032c9:	48 ba 61 64 64 72 65 	movabs $0x73736572646461,%rdx
  4032d0:	73 73 00 
  4032d3:	48 89 45 1f          	mov    %rax,0x1f(%rbp)
  4032d7:	48 89 55 27          	mov    %rdx,0x27(%rbp)
  4032db:	89 df                	mov    %ebx,%edi
  4032dd:	e8 ee dd ff ff       	call   4010d0 <close@plt>
  4032e2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4032e7:	e9 31 ff ff ff       	jmp    40321d <init_driver+0xde>
  4032ec:	48 b8 31 36 32 2e 31 	movabs $0x2e3530312e323631,%rax
  4032f3:	30 35 2e 
  4032f6:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4032fa:	48 b8 2e 33 31 2e 32 	movabs $0x3233322e31332e,%rax
  403301:	33 32 00 
  403304:	48 89 45 07          	mov    %rax,0x7(%rbp)
  403308:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  40330f:	3a 20 55 
  403312:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  403319:	20 74 6f 
  40331c:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403320:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403324:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  40332b:	65 63 74 
  40332e:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  403335:	65 72 76 
  403338:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40333c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403340:	c7 45 1f 76 65 72 00 	movl   $0x726576,0x1f(%rbp)
  403347:	89 df                	mov    %ebx,%edi
  403349:	e8 82 dd ff ff       	call   4010d0 <close@plt>
  40334e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403353:	e9 c5 fe ff ff       	jmp    40321d <init_driver+0xde>
  403358:	e8 5e f1 ff ff       	call   4024bb <__stack_chk_fail>

000000000040335d <driver_post>:
  40335d:	f3 0f 1e fa          	endbr64
  403361:	53                   	push   %rbx
  403362:	4c 89 cb             	mov    %r9,%rbx
  403365:	45 85 c0             	test   %r8d,%r8d
  403368:	75 18                	jne    403382 <driver_post+0x25>
  40336a:	48 85 ff             	test   %rdi,%rdi
  40336d:	74 05                	je     403374 <driver_post+0x17>
  40336f:	80 3f 00             	cmpb   $0x0,(%rdi)
  403372:	75 37                	jne    4033ab <driver_post+0x4e>
  403374:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  403379:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  40337d:	44 89 c0             	mov    %r8d,%eax
  403380:	5b                   	pop    %rbx
  403381:	c3                   	ret
  403382:	48 89 ca             	mov    %rcx,%rdx
  403385:	48 8d 35 fd 13 00 00 	lea    0x13fd(%rip),%rsi        # 404789 <_IO_stdin_used+0x789>
  40338c:	bf 02 00 00 00       	mov    $0x2,%edi
  403391:	b8 00 00 00 00       	mov    $0x0,%eax
  403396:	e8 f5 dd ff ff       	call   401190 <__printf_chk@plt>
  40339b:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4033a0:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4033a4:	b8 00 00 00 00       	mov    $0x0,%eax
  4033a9:	eb d5                	jmp    403380 <driver_post+0x23>
  4033ab:	48 83 ec 08          	sub    $0x8,%rsp
  4033af:	41 51                	push   %r9
  4033b1:	49 89 c9             	mov    %rcx,%r9
  4033b4:	49 89 d0             	mov    %rdx,%r8
  4033b7:	48 89 f9             	mov    %rdi,%rcx
  4033ba:	48 89 f2             	mov    %rsi,%rdx
  4033bd:	be 50 00 00 00       	mov    $0x50,%esi
  4033c2:	48 8d 3d b1 13 00 00 	lea    0x13b1(%rip),%rdi        # 40477a <_IO_stdin_used+0x77a>
  4033c9:	e8 f4 f5 ff ff       	call   4029c2 <submitr>
  4033ce:	48 83 c4 10          	add    $0x10,%rsp
  4033d2:	eb ac                	jmp    403380 <driver_post+0x23>

00000000004033d4 <check>:
  4033d4:	f3 0f 1e fa          	endbr64
  4033d8:	89 f8                	mov    %edi,%eax
  4033da:	c1 e8 1c             	shr    $0x1c,%eax
  4033dd:	74 1d                	je     4033fc <check+0x28>
  4033df:	b9 00 00 00 00       	mov    $0x0,%ecx
  4033e4:	83 f9 1f             	cmp    $0x1f,%ecx
  4033e7:	7f 0d                	jg     4033f6 <check+0x22>
  4033e9:	89 f8                	mov    %edi,%eax
  4033eb:	d3 e8                	shr    %cl,%eax
  4033ed:	3c 0a                	cmp    $0xa,%al
  4033ef:	74 11                	je     403402 <check+0x2e>
  4033f1:	83 c1 08             	add    $0x8,%ecx
  4033f4:	eb ee                	jmp    4033e4 <check+0x10>
  4033f6:	b8 01 00 00 00       	mov    $0x1,%eax
  4033fb:	c3                   	ret
  4033fc:	b8 00 00 00 00       	mov    $0x0,%eax
  403401:	c3                   	ret
  403402:	b8 00 00 00 00       	mov    $0x0,%eax
  403407:	c3                   	ret

0000000000403408 <gencookie>:
  403408:	f3 0f 1e fa          	endbr64
  40340c:	53                   	push   %rbx
  40340d:	83 c7 01             	add    $0x1,%edi
  403410:	e8 2b dc ff ff       	call   401040 <srandom@plt>
  403415:	e8 46 dd ff ff       	call   401160 <random@plt>
  40341a:	89 c3                	mov    %eax,%ebx
  40341c:	89 c7                	mov    %eax,%edi
  40341e:	e8 b1 ff ff ff       	call   4033d4 <check>
  403423:	85 c0                	test   %eax,%eax
  403425:	74 ee                	je     403415 <gencookie+0xd>
  403427:	89 d8                	mov    %ebx,%eax
  403429:	5b                   	pop    %rbx
  40342a:	c3                   	ret

Disassembly of section .fini:

000000000040342c <_fini>:
  40342c:	f3 0f 1e fa          	endbr64
  403430:	48 83 ec 08          	sub    $0x8,%rsp
  403434:	48 83 c4 08          	add    $0x8,%rsp
  403438:	c3                   	ret
