0000000000q <touch1>:
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

0000000000401c65 <getbuf>:
  401c65:	f3 0f 1e fa          	endbr64
  401c69:	48 83 ec 28          	sub    $0x28,%rsp // 40
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




---


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


----


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
  402000:	c7 07 89 d6 90 c2    	movl   $0xc290d689,(%rdi) //???
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

---

0000000000401ffc <setval_102>:
  401ffc:	f3 0f 1e fa          	endbr64
  402000:	c7 07 89 d6 90 c2    	movl   $0xc290d689,(%rdi) //???
  402006:	c3                   	ret

000000000040207d <setval_137>:
  40207d:	f3 0f 1e fa          	endbr64
  402081:	c7 07 f2 89 d6 c3    	movl   $0xc3d689f2,(%rdi)
  402087:	c3                   	ret



---

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
