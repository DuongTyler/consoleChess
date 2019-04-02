	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	__Z11updateBoardv       ## -- Begin function _Z11updateBoardv
	.p2align	4, 0x90
__Z11updateBoardv:                      ## @_Z11updateBoardv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movl	$0, -52(%rbp)
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	cmpl	$8, -52(%rbp)
	jge	LBB0_8
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	$0, -56(%rbp)
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$8, -56(%rbp)
	jge	LBB0_6
## BB#4:                                ##   in Loop: Header=BB0_3 Depth=2
	leaq	_redboardmem(%rip), %rax
	leaq	_redspaces(%rip), %rcx
	movslq	-52(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movslq	-56(%rbp), %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movslq	-52(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rax
	movslq	-56(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
## BB#5:                                ##   in Loop: Header=BB0_3 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	LBB0_3
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_7
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	LBB0_1
LBB0_8:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	leaq	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(%rip), %rsi
	movq	%rax, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	*-48(%rbp)
	movl	$8, -60(%rbp)
	movl	$7, -64(%rbp)
	movq	%rax, -80(%rbp)         ## 8-byte Spill
LBB0_9:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_11 Depth 2
	cmpl	$-1, -64(%rbp)
	jle	LBB0_19
## BB#10:                               ##   in Loop: Header=BB0_9 Depth=1
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str.1(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movl	$0, -68(%rbp)
	movq	%rax, -88(%rbp)         ## 8-byte Spill
LBB0_11:                                ##   Parent Loop BB0_9 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$8, -68(%rbp)
	jge	LBB0_17
## BB#12:                               ##   in Loop: Header=BB0_11 Depth=2
	movl	$2, %eax
	movl	-64(%rbp), %ecx
	movl	%eax, -92(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-92(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	addl	-68(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	LBB0_14
## BB#13:                               ##   in Loop: Header=BB0_11 Depth=2
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str.2(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, -104(%rbp)        ## 8-byte Spill
	jmp	LBB0_15
LBB0_14:                                ##   in Loop: Header=BB0_11 Depth=2
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str.3(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, -112(%rbp)        ## 8-byte Spill
LBB0_15:                                ##   in Loop: Header=BB0_11 Depth=2
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	_board(%rip), %rax
	movslq	-68(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movslq	-64(%rbp), %rcx
	movsbl	(%rax,%rcx), %esi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	leaq	L_.str.4(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, -120(%rbp)        ## 8-byte Spill
## BB#16:                               ##   in Loop: Header=BB0_11 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	LBB0_11
LBB0_17:                                ##   in Loop: Header=BB0_9 Depth=1
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str.5(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movl	-60(%rbp), %esi
	movq	%rax, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	leaq	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(%rip), %rdi
	movq	%rax, -24(%rbp)
	movq	%rdi, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	*-32(%rbp)
	movl	-60(%rbp), %esi
	addl	$-1, %esi
	movl	%esi, -60(%rbp)
	movq	%rax, -128(%rbp)        ## 8-byte Spill
## BB#18:                               ##   in Loop: Header=BB0_9 Depth=1
	movl	-64(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -64(%rbp)
	jmp	LBB0_9
LBB0_19:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str.6(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	leaq	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(%rip), %rsi
	movq	%rax, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	*-16(%rbp)
	movq	%rax, -136(%rbp)        ## 8-byte Spill
	addq	$144, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc ## -- Begin function _ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.weak_definition	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.p2align	4, 0x90
__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc: ## @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi3:
	.cfi_def_cfa_offset 16
Lcfi4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi5:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -24(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -32(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__111char_traitsIcE6lengthEPKc
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	movq	-32(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, %rdx
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_ ## -- Begin function _ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.globl	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.weak_definition	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.p2align	4, 0x90
__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_: ## @_ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
## BB#0:
	pushq	%rbp
Lcfi6:
	.cfi_def_cfa_offset 16
Lcfi7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi8:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	movq	%rdi, %rcx
	addq	%rax, %rcx
	movq	%rcx, -32(%rbp)
	movb	$10, -33(%rbp)
	movq	-32(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%rdi, -80(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, -88(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__18ios_base6getlocEv
	movq	-88(%rbp), %rax         ## 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
Ltmp0:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp1:
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	jmp	LBB2_1
LBB2_1:
	movb	-33(%rbp), %al
	movq	-96(%rbp), %rcx         ## 8-byte Reload
	movq	%rcx, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	56(%rsi), %rsi
	movsbl	-9(%rbp), %edi
Ltmp2:
	movl	%edi, -100(%rbp)        ## 4-byte Spill
	movq	%rdx, %rdi
	movl	-100(%rbp), %r8d        ## 4-byte Reload
	movq	%rsi, -112(%rbp)        ## 8-byte Spill
	movl	%r8d, %esi
	movq	-112(%rbp), %rdx        ## 8-byte Reload
	callq	*%rdx
Ltmp3:
	movb	%al, -113(%rbp)         ## 1-byte Spill
	jmp	LBB2_5
LBB2_2:
Ltmp4:
	movl	%edx, %ecx
	movq	%rax, -56(%rbp)
	movl	%ecx, -60(%rbp)
Ltmp5:
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp6:
	jmp	LBB2_3
LBB2_3:
	movq	-56(%rbp), %rdi
	callq	__Unwind_Resume
LBB2_4:
Ltmp7:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -120(%rbp)        ## 4-byte Spill
	callq	___clang_call_terminate
LBB2_5:
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movq	-80(%rbp), %rdi         ## 8-byte Reload
	movb	-113(%rbp), %al         ## 1-byte Reload
	movsbl	%al, %esi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	movq	-72(%rbp), %rdi
	movq	%rax, -128(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	movq	-72(%rbp), %rdi
	movq	%rax, -136(%rbp)        ## 8-byte Spill
	movq	%rdi, %rax
	addq	$144, %rsp
	popq	%rbp
	retq
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table2:
Lexception0:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\274"                  ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	52                      ## Call site table length
Lset0 = Lfunc_begin0-Lfunc_begin0       ## >> Call Site 1 <<
	.long	Lset0
Lset1 = Ltmp0-Lfunc_begin0              ##   Call between Lfunc_begin0 and Ltmp0
	.long	Lset1
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset2 = Ltmp0-Lfunc_begin0              ## >> Call Site 2 <<
	.long	Lset2
Lset3 = Ltmp3-Ltmp0                     ##   Call between Ltmp0 and Ltmp3
	.long	Lset3
Lset4 = Ltmp4-Lfunc_begin0              ##     jumps to Ltmp4
	.long	Lset4
	.byte	0                       ##   On action: cleanup
Lset5 = Ltmp5-Lfunc_begin0              ## >> Call Site 3 <<
	.long	Lset5
Lset6 = Ltmp6-Ltmp5                     ##   Call between Ltmp5 and Ltmp6
	.long	Lset6
Lset7 = Ltmp7-Lfunc_begin0              ##     jumps to Ltmp7
	.long	Lset7
	.byte	1                       ##   On action: 1
Lset8 = Ltmp6-Lfunc_begin0              ## >> Call Site 4 <<
	.long	Lset8
Lset9 = Lfunc_end0-Ltmp6                ##   Call between Ltmp6 and Lfunc_end0
	.long	Lset9
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c ## -- Begin function _ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	.weak_definition	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	.p2align	4, 0x90
__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c: ## @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi9:
	.cfi_def_cfa_offset 16
Lcfi10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi11:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	%sil, %al
	leaq	-9(%rbp), %rsi
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z5sleepi              ## -- Begin function _Z5sleepi
	.p2align	4, 0x90
__Z5sleepi:                             ## @_Z5sleepi
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi12:
	.cfi_def_cfa_offset 16
Lcfi13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi14:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	imull	$1000, -4(%rbp), %edi   ## imm = 0x3E8
	callq	_usleep
	movl	%eax, -8(%rbp)          ## 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z5setupv              ## -- Begin function _Z5setupv
	.p2align	4, 0x90
__Z5setupv:                             ## @_Z5setupv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi15:
	.cfi_def_cfa_offset 16
Lcfi16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi17:
	.cfi_def_cfa_register %rbp
	movl	$0, -4(%rbp)
LBB5_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_3 Depth 2
	cmpl	$8, -4(%rbp)
	jge	LBB5_8
## BB#2:                                ##   in Loop: Header=BB5_1 Depth=1
	movl	$0, -8(%rbp)
LBB5_3:                                 ##   Parent Loop BB5_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$8, -8(%rbp)
	jge	LBB5_6
## BB#4:                                ##   in Loop: Header=BB5_3 Depth=2
	leaq	_board(%rip), %rax
	movslq	-8(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movslq	-4(%rbp), %rcx
	movb	$32, (%rax,%rcx)
## BB#5:                                ##   in Loop: Header=BB5_3 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	LBB5_3
LBB5_6:                                 ##   in Loop: Header=BB5_1 Depth=1
	jmp	LBB5_7
LBB5_7:                                 ##   in Loop: Header=BB5_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	LBB5_1
LBB5_8:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z4moveiiii            ## -- Begin function _Z4moveiiii
	.p2align	4, 0x90
__Z4moveiiii:                           ## @_Z4moveiiii
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi18:
	.cfi_def_cfa_offset 16
Lcfi19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi20:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	_positions(%rip), %rax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movslq	-4(%rbp), %r8
	shlq	$6, %r8
	addq	%r8, %rax
	movslq	-8(%rbp), %r8
	movq	(%rax,%r8,8), %rdi
	callq	__ZN5piece8getPieceEv
	leaq	_positions(%rip), %rdi
	leaq	_board(%rip), %r8
	movslq	-12(%rbp), %r9
	shlq	$3, %r9
	movq	%r8, %r10
	addq	%r9, %r10
	movslq	-16(%rbp), %r9
	movb	%al, (%r10,%r9)
	movslq	-4(%rbp), %r9
	shlq	$3, %r9
	addq	%r9, %r8
	movslq	-8(%rbp), %r9
	movb	$32, (%r8,%r9)
	movslq	-4(%rbp), %r8
	shlq	$6, %r8
	movq	%rdi, %r9
	addq	%r8, %r9
	movslq	-8(%rbp), %r8
	movq	(%r9,%r8,8), %r8
	movslq	-12(%rbp), %r9
	shlq	$6, %r9
	movq	%rdi, %r10
	addq	%r9, %r10
	movslq	-16(%rbp), %r9
	movq	%r8, (%r10,%r9,8)
	movslq	-4(%rbp), %r8
	shlq	$6, %r8
	addq	%r8, %rdi
	movslq	-8(%rbp), %r8
	movq	(%rdi,%r8,8), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	__ZN5piece9updatePosEii
	leaq	_positions(%rip), %rdi
	movq	_clearPos(%rip), %r8
	movslq	-4(%rbp), %r9
	shlq	$6, %r9
	addq	%r9, %rdi
	movslq	-8(%rbp), %r9
	movq	%r8, (%rdi,%r9,8)
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5piece8getPieceEv   ## -- Begin function _ZN5piece8getPieceEv
	.weak_definition	__ZN5piece8getPieceEv
	.p2align	4, 0x90
__ZN5piece8getPieceEv:                  ## @_ZN5piece8getPieceEv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi21:
	.cfi_def_cfa_offset 16
Lcfi22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi23:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movsbl	9(%rdi), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5piece9updatePosEii ## -- Begin function _ZN5piece9updatePosEii
	.weak_definition	__ZN5piece9updatePosEii
	.p2align	4, 0x90
__ZN5piece9updatePosEii:                ## @_ZN5piece9updatePosEii
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi24:
	.cfi_def_cfa_offset 16
Lcfi25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi26:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	(%rdi), %edx
	subl	-20(%rbp), %edx
	movq	%rdi, -32(%rbp)         ## 8-byte Spill
	movl	%edx, %edi
	callq	_abs
	cmpl	$1, %eax
	je	LBB8_3
## BB#1:
	movq	-32(%rbp), %rax         ## 8-byte Reload
	movl	4(%rax), %ecx
	subl	-24(%rbp), %ecx
	movl	%ecx, %edi
	callq	_abs
	cmpl	$1, %eax
	je	LBB8_3
## BB#2:
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rcx         ## 8-byte Reload
	movl	%eax, (%rcx)
	movl	-24(%rbp), %eax
	movl	%eax, 4(%rcx)
	movl	$0, -4(%rbp)
	jmp	LBB8_4
LBB8_3:
	movl	$-1, -4(%rbp)
LBB8_4:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
## BB#0:
	pushq	%rbp
Lcfi27:
	.cfi_def_cfa_offset 16
Lcfi28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi29:
	.cfi_def_cfa_register %rbp
	subq	$1296, %rsp             ## imm = 0x510
	movl	$0, -724(%rbp)
	callq	__Z5setupv
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	movq	_positions(%rip), %rax
	movq	%rax, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv
	leaq	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(%rip), %rsi
	movq	%rax, -712(%rbp)
	movq	%rsi, -720(%rbp)
	movq	-712(%rbp), %rdi
	callq	*-720(%rbp)
	leaq	-736(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$3, %edx
	movl	%ecx, %esi
	movq	%rax, -888(%rbp)        ## 8-byte Spill
	callq	__ZN4kingC1Ebii
	leaq	-736(%rbp), %rax
	movq	%rax, -744(%rbp)
	movq	-744(%rbp), %rdi
	callq	__ZN5piece8getPieceEv
	leaq	-760(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$4, %edx
	movb	%al, _board+24(%rip)
	movq	-744(%rbp), %r8
	movq	%r8, _positions+192(%rip)
	movl	%ecx, %esi
	callq	__ZN5queenC1Ebii
	leaq	-760(%rbp), %rdi
	movq	%rdi, -768(%rbp)
	movq	-768(%rbp), %rdi
	callq	__ZN5piece8getPieceEv
	leaq	-784(%rbp), %rdi
	movl	$1, %esi
	movl	$3, %edx
	movl	$7, %ecx
	movb	%al, _board+32(%rip)
	movq	-768(%rbp), %r8
	movq	%r8, _positions+256(%rip)
	callq	__ZN4kingC1Ebii
	leaq	-784(%rbp), %rdi
	movq	%rdi, -792(%rbp)
	movq	-744(%rbp), %rdi
	callq	__ZN5piece8getPieceEv
	leaq	-808(%rbp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	movl	$7, %ecx
	movb	%al, _board+31(%rip)
	movq	-792(%rbp), %r8
	movq	%r8, _positions+248(%rip)
	callq	__ZN5queenC1Ebii
	leaq	-808(%rbp), %rdi
	movq	%rdi, -816(%rbp)
	movq	-816(%rbp), %rdi
	callq	__ZN5piece8getPieceEv
	leaq	L_.str.7(%rip), %rdi
	movb	%al, _board+39(%rip)
	movq	-816(%rbp), %r8
	movq	%r8, _positions+312(%rip)
	callq	_system
	movl	%eax, -892(%rbp)        ## 4-byte Spill
	callq	__Z11updateBoardv
	movb	$0, -817(%rbp)
	movb	$0, -818(%rbp)
LBB9_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_3 Depth 2
	movb	-818(%rbp), %al
	xorb	$-1, %al
	testb	$1, %al
	jne	LBB9_2
	jmp	LBB9_117
LBB9_2:                                 ##   in Loop: Header=BB9_1 Depth=1
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str.8(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	xorl	%esi, %esi
	movl	$24, %ecx
	movl	%ecx, %edx
	leaq	-848(%rbp), %rdi
	movq	%rdi, -704(%rbp)
	movq	-704(%rbp), %rdi
	movq	%rdi, -696(%rbp)
	movq	-696(%rbp), %rdi
	movq	%rdi, -688(%rbp)
	movq	-688(%rbp), %r8
	movq	%r8, -680(%rbp)
	movq	-680(%rbp), %r8
	movq	%r8, %r9
	movq	%r9, -672(%rbp)
	movq	-672(%rbp), %r9
	movq	%rdi, -904(%rbp)        ## 8-byte Spill
	movq	%r9, %rdi
	movq	%rax, -912(%rbp)        ## 8-byte Spill
	movq	%r8, -920(%rbp)         ## 8-byte Spill
	callq	_memset
	movq	-920(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -664(%rbp)
	movq	-664(%rbp), %rax
	movq	%rax, -656(%rbp)
	movq	-904(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -632(%rbp)
	movq	-632(%rbp), %rdx
	movq	%rdx, -624(%rbp)
	movq	-624(%rbp), %rdx
	movq	%rdx, -616(%rbp)
	movq	-616(%rbp), %rdx
	movq	%rdx, -640(%rbp)
	movl	$0, -644(%rbp)
LBB9_3:                                 ##   Parent Loop BB9_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$3, -644(%rbp)
	jae	LBB9_5
## BB#4:                                ##   in Loop: Header=BB9_3 Depth=2
	movq	-640(%rbp), %rax
	movl	-644(%rbp), %ecx
	movl	%ecx, %edx
	movq	$0, (%rax,%rdx,8)
	movl	-644(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -644(%rbp)
	jmp	LBB9_3
LBB9_5:                                 ##   in Loop: Header=BB9_1 Depth=1
	movq	__ZNSt3__13cinE@GOTPCREL(%rip), %rax
	movq	%rax, -600(%rbp)
	leaq	-848(%rbp), %rax
	movq	%rax, -608(%rbp)
	movq	-600(%rbp), %rax
	movq	-608(%rbp), %rsi
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	%rdx, -560(%rbp)
	movb	$10, -561(%rbp)
	movq	-560(%rbp), %rcx
Ltmp8:
	leaq	-576(%rbp), %rdi
	movq	%rsi, -928(%rbp)        ## 8-byte Spill
	movq	%rcx, %rsi
	movq	%rax, -936(%rbp)        ## 8-byte Spill
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp9:
	jmp	LBB9_6
LBB9_6:                                 ##   in Loop: Header=BB9_1 Depth=1
	leaq	-576(%rbp), %rax
	movq	%rax, -552(%rbp)
	movq	-552(%rbp), %rdi
Ltmp10:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp11:
	movq	%rax, -944(%rbp)        ## 8-byte Spill
	jmp	LBB9_7
LBB9_7:                                 ##   in Loop: Header=BB9_1 Depth=1
	movb	-561(%rbp), %al
	movq	-944(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -536(%rbp)
	movb	%al, -537(%rbp)
	movq	-536(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	56(%rsi), %rsi
	movsbl	-537(%rbp), %edi
Ltmp12:
	movl	%edi, -948(%rbp)        ## 4-byte Spill
	movq	%rdx, %rdi
	movl	-948(%rbp), %r8d        ## 4-byte Reload
	movq	%rsi, -960(%rbp)        ## 8-byte Spill
	movl	%r8d, %esi
	movq	-960(%rbp), %rdx        ## 8-byte Reload
	callq	*%rdx
Ltmp13:
	movb	%al, -961(%rbp)         ## 1-byte Spill
	jmp	LBB9_11
LBB9_8:
Ltmp14:
	movl	%edx, %ecx
	movq	%rax, -584(%rbp)
	movl	%ecx, -588(%rbp)
Ltmp15:
	leaq	-576(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp16:
	jmp	LBB9_9
LBB9_9:
	movq	-584(%rbp), %rax
	movl	-588(%rbp), %ecx
	movq	%rax, -976(%rbp)        ## 8-byte Spill
	movl	%ecx, -980(%rbp)        ## 4-byte Spill
	jmp	LBB9_20
LBB9_10:
Ltmp17:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -984(%rbp)        ## 4-byte Spill
	callq	___clang_call_terminate
LBB9_11:                                ##   in Loop: Header=BB9_1 Depth=1
Ltmp18:
	leaq	-576(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp19:
	jmp	LBB9_12
LBB9_12:                                ##   in Loop: Header=BB9_1 Depth=1
Ltmp20:
	movb	-961(%rbp), %al         ## 1-byte Reload
	movsbl	%al, %edx
	movq	-936(%rbp), %rdi        ## 8-byte Reload
	movq	-928(%rbp), %rsi        ## 8-byte Reload
	callq	__ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Ltmp21:
	movq	%rax, -992(%rbp)        ## 8-byte Spill
	jmp	LBB9_13
LBB9_13:                                ##   in Loop: Header=BB9_1 Depth=1
	jmp	LBB9_14
LBB9_14:                                ##   in Loop: Header=BB9_1 Depth=1
	leaq	-848(%rbp), %rax
	movq	%rax, -520(%rbp)
	movq	$0, -528(%rbp)
	movq	-520(%rbp), %rax
	movq	%rax, -512(%rbp)
	movq	-512(%rbp), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rcx
	movq	%rcx, -496(%rbp)
	movq	-496(%rbp), %rcx
	movq	%rcx, -488(%rbp)
	movq	-488(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	andq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1000(%rbp)       ## 8-byte Spill
	je	LBB9_16
## BB#15:                               ##   in Loop: Header=BB9_1 Depth=1
	movq	-1000(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -440(%rbp)
	movq	-440(%rbp), %rcx
	movq	%rcx, -432(%rbp)
	movq	-432(%rbp), %rcx
	movq	%rcx, -424(%rbp)
	movq	-424(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -1008(%rbp)       ## 8-byte Spill
	jmp	LBB9_17
LBB9_16:                                ##   in Loop: Header=BB9_1 Depth=1
	movq	-1000(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -480(%rbp)
	movq	-480(%rbp), %rcx
	movq	%rcx, -472(%rbp)
	movq	-472(%rbp), %rcx
	movq	%rcx, -464(%rbp)
	movq	-464(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -456(%rbp)
	movq	-456(%rbp), %rcx
	movq	%rcx, -448(%rbp)
	movq	-448(%rbp), %rcx
	movq	%rcx, -1008(%rbp)       ## 8-byte Spill
LBB9_17:                                ##   in Loop: Header=BB9_1 Depth=1
	movq	-1008(%rbp), %rax       ## 8-byte Reload
	movq	-528(%rbp), %rcx
	movsbl	(%rax,%rcx), %edi
Ltmp22:
	callq	__Z7toupperi
Ltmp23:
	movl	%eax, -1012(%rbp)       ## 4-byte Spill
	jmp	LBB9_18
LBB9_18:                                ##   in Loop: Header=BB9_1 Depth=1
	movl	-1012(%rbp), %eax       ## 4-byte Reload
	addl	$-65, %eax
	movl	%eax, %ecx
	subl	$7, %eax
	movq	%rcx, -1024(%rbp)       ## 8-byte Spill
	movl	%eax, -1028(%rbp)       ## 4-byte Spill
	ja	LBB9_29
## BB#120:                              ##   in Loop: Header=BB9_1 Depth=1
	leaq	LJTI9_0(%rip), %rax
	movq	-1024(%rbp), %rcx       ## 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
LBB9_19:
Ltmp70:
	movl	%edx, %ecx
	movq	%rax, -976(%rbp)        ## 8-byte Spill
	movl	%ecx, -980(%rbp)        ## 4-byte Spill
	jmp	LBB9_20
LBB9_20:
	movl	-980(%rbp), %eax        ## 4-byte Reload
	movq	-976(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -856(%rbp)
	movl	%eax, -860(%rbp)
Ltmp71:
	leaq	-848(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp72:
	jmp	LBB9_116
LBB9_21:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$1, -817(%rbp)
	movl	$0, -864(%rbp)
	jmp	LBB9_30
LBB9_22:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$1, -817(%rbp)
	movl	$1, -864(%rbp)
	jmp	LBB9_30
LBB9_23:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$1, -817(%rbp)
	movl	$2, -864(%rbp)
	jmp	LBB9_30
LBB9_24:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$1, -817(%rbp)
	movl	$3, -864(%rbp)
	jmp	LBB9_30
LBB9_25:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$1, -817(%rbp)
	movl	$4, -864(%rbp)
	jmp	LBB9_30
LBB9_26:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$1, -817(%rbp)
	movl	$5, -864(%rbp)
	jmp	LBB9_30
LBB9_27:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$1, -817(%rbp)
	movl	$6, -864(%rbp)
	jmp	LBB9_30
LBB9_28:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$1, -817(%rbp)
	movl	$7, -864(%rbp)
	jmp	LBB9_30
LBB9_29:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$0, -817(%rbp)
LBB9_30:                                ##   in Loop: Header=BB9_1 Depth=1
	testb	$1, -817(%rbp)
	je	LBB9_45
## BB#31:                               ##   in Loop: Header=BB9_1 Depth=1
	leaq	-848(%rbp), %rax
	movq	%rax, -408(%rbp)
	movq	$1, -416(%rbp)
	movq	-408(%rbp), %rax
	movq	%rax, -400(%rbp)
	movq	-400(%rbp), %rax
	movq	%rax, -392(%rbp)
	movq	-392(%rbp), %rcx
	movq	%rcx, -384(%rbp)
	movq	-384(%rbp), %rcx
	movq	%rcx, -376(%rbp)
	movq	-376(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	andq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1040(%rbp)       ## 8-byte Spill
	je	LBB9_33
## BB#32:                               ##   in Loop: Header=BB9_1 Depth=1
	movq	-1040(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rcx
	movq	%rcx, -320(%rbp)
	movq	-320(%rbp), %rcx
	movq	%rcx, -312(%rbp)
	movq	-312(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -1048(%rbp)       ## 8-byte Spill
	jmp	LBB9_34
LBB9_33:                                ##   in Loop: Header=BB9_1 Depth=1
	movq	-1040(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rcx
	movq	%rcx, -360(%rbp)
	movq	-360(%rbp), %rcx
	movq	%rcx, -352(%rbp)
	movq	-352(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -344(%rbp)
	movq	-344(%rbp), %rcx
	movq	%rcx, -336(%rbp)
	movq	-336(%rbp), %rcx
	movq	%rcx, -1048(%rbp)       ## 8-byte Spill
LBB9_34:                                ##   in Loop: Header=BB9_1 Depth=1
	movq	-1048(%rbp), %rax       ## 8-byte Reload
	movq	-416(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	addl	$-49, %edx
	movl	%edx, %eax
	subl	$7, %edx
	movq	%rax, -1056(%rbp)       ## 8-byte Spill
	movl	%edx, -1060(%rbp)       ## 4-byte Spill
	ja	LBB9_43
## BB#121:                              ##   in Loop: Header=BB9_1 Depth=1
	leaq	LJTI9_1(%rip), %rax
	movq	-1056(%rbp), %rcx       ## 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
LBB9_35:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$1, -817(%rbp)
	movl	$0, -868(%rbp)
	jmp	LBB9_44
LBB9_36:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$1, -817(%rbp)
	movl	$1, -868(%rbp)
	jmp	LBB9_44
LBB9_37:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$1, -817(%rbp)
	movl	$2, -868(%rbp)
	jmp	LBB9_44
LBB9_38:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$1, -817(%rbp)
	movl	$3, -868(%rbp)
	jmp	LBB9_44
LBB9_39:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$1, -817(%rbp)
	movl	$4, -868(%rbp)
	jmp	LBB9_44
LBB9_40:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$1, -817(%rbp)
	movl	$5, -868(%rbp)
	jmp	LBB9_44
LBB9_41:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$1, -817(%rbp)
	movl	$6, -868(%rbp)
	jmp	LBB9_44
LBB9_42:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$1, -817(%rbp)
	movl	$7, -868(%rbp)
	jmp	LBB9_44
LBB9_43:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$0, -817(%rbp)
LBB9_44:                                ##   in Loop: Header=BB9_1 Depth=1
	jmp	LBB9_45
LBB9_45:                                ##   in Loop: Header=BB9_1 Depth=1
	testb	$1, -817(%rbp)
	je	LBB9_61
## BB#46:                               ##   in Loop: Header=BB9_1 Depth=1
	leaq	-848(%rbp), %rax
	movq	%rax, -296(%rbp)
	movq	$3, -304(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rcx
	movq	%rcx, -272(%rbp)
	movq	-272(%rbp), %rcx
	movq	%rcx, -264(%rbp)
	movq	-264(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	andq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1072(%rbp)       ## 8-byte Spill
	je	LBB9_48
## BB#47:                               ##   in Loop: Header=BB9_1 Depth=1
	movq	-1072(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rcx
	movq	%rcx, -208(%rbp)
	movq	-208(%rbp), %rcx
	movq	%rcx, -200(%rbp)
	movq	-200(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -1080(%rbp)       ## 8-byte Spill
	jmp	LBB9_49
LBB9_48:                                ##   in Loop: Header=BB9_1 Depth=1
	movq	-1072(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rcx
	movq	%rcx, -248(%rbp)
	movq	-248(%rbp), %rcx
	movq	%rcx, -240(%rbp)
	movq	-240(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -232(%rbp)
	movq	-232(%rbp), %rcx
	movq	%rcx, -224(%rbp)
	movq	-224(%rbp), %rcx
	movq	%rcx, -1080(%rbp)       ## 8-byte Spill
LBB9_49:                                ##   in Loop: Header=BB9_1 Depth=1
	movq	-1080(%rbp), %rax       ## 8-byte Reload
	movq	-304(%rbp), %rcx
	movsbl	(%rax,%rcx), %edi
Ltmp24:
	callq	__Z7toupperi
Ltmp25:
	movl	%eax, -1084(%rbp)       ## 4-byte Spill
	jmp	LBB9_50
LBB9_50:                                ##   in Loop: Header=BB9_1 Depth=1
	movl	-1084(%rbp), %eax       ## 4-byte Reload
	addl	$-65, %eax
	movl	%eax, %ecx
	subl	$7, %eax
	movq	%rcx, -1096(%rbp)       ## 8-byte Spill
	movl	%eax, -1100(%rbp)       ## 4-byte Spill
	ja	LBB9_59
## BB#122:                              ##   in Loop: Header=BB9_1 Depth=1
	leaq	LJTI9_2(%rip), %rax
	movq	-1096(%rbp), %rcx       ## 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
LBB9_51:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$1, -817(%rbp)
	movl	$0, -872(%rbp)
	jmp	LBB9_60
LBB9_52:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$1, -817(%rbp)
	movl	$1, -872(%rbp)
	jmp	LBB9_60
LBB9_53:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$1, -817(%rbp)
	movl	$2, -872(%rbp)
	jmp	LBB9_60
LBB9_54:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$1, -817(%rbp)
	movl	$3, -872(%rbp)
	jmp	LBB9_60
LBB9_55:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$1, -817(%rbp)
	movl	$4, -872(%rbp)
	jmp	LBB9_60
LBB9_56:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$1, -817(%rbp)
	movl	$5, -872(%rbp)
	jmp	LBB9_60
LBB9_57:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$1, -817(%rbp)
	movl	$6, -872(%rbp)
	jmp	LBB9_60
LBB9_58:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$1, -817(%rbp)
	movl	$7, -872(%rbp)
	jmp	LBB9_60
LBB9_59:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$0, -817(%rbp)
LBB9_60:                                ##   in Loop: Header=BB9_1 Depth=1
	jmp	LBB9_61
LBB9_61:                                ##   in Loop: Header=BB9_1 Depth=1
	testb	$1, -817(%rbp)
	je	LBB9_76
## BB#62:                               ##   in Loop: Header=BB9_1 Depth=1
	leaq	-848(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	$4, -192(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rcx
	movq	%rcx, -160(%rbp)
	movq	-160(%rbp), %rcx
	movq	%rcx, -152(%rbp)
	movq	-152(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	andq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1112(%rbp)       ## 8-byte Spill
	je	LBB9_64
## BB#63:                               ##   in Loop: Header=BB9_1 Depth=1
	movq	-1112(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movq	-96(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movq	-88(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -1120(%rbp)       ## 8-byte Spill
	jmp	LBB9_65
LBB9_64:                                ##   in Loop: Header=BB9_1 Depth=1
	movq	-1112(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rcx
	movq	%rcx, -136(%rbp)
	movq	-136(%rbp), %rcx
	movq	%rcx, -128(%rbp)
	movq	-128(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -120(%rbp)
	movq	-120(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rcx
	movq	%rcx, -1120(%rbp)       ## 8-byte Spill
LBB9_65:                                ##   in Loop: Header=BB9_1 Depth=1
	movq	-1120(%rbp), %rax       ## 8-byte Reload
	movq	-192(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	addl	$-49, %edx
	movl	%edx, %eax
	subl	$7, %edx
	movq	%rax, -1128(%rbp)       ## 8-byte Spill
	movl	%edx, -1132(%rbp)       ## 4-byte Spill
	ja	LBB9_74
## BB#123:                              ##   in Loop: Header=BB9_1 Depth=1
	leaq	LJTI9_3(%rip), %rax
	movq	-1128(%rbp), %rcx       ## 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
LBB9_66:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$1, -817(%rbp)
	movl	$0, -876(%rbp)
	jmp	LBB9_75
LBB9_67:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$1, -817(%rbp)
	movl	$1, -876(%rbp)
	jmp	LBB9_75
LBB9_68:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$1, -817(%rbp)
	movl	$2, -876(%rbp)
	jmp	LBB9_75
LBB9_69:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$1, -817(%rbp)
	movl	$3, -876(%rbp)
	jmp	LBB9_75
LBB9_70:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$1, -817(%rbp)
	movl	$4, -876(%rbp)
	jmp	LBB9_75
LBB9_71:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$1, -817(%rbp)
	movl	$5, -876(%rbp)
	jmp	LBB9_75
LBB9_72:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$1, -817(%rbp)
	movl	$6, -876(%rbp)
	jmp	LBB9_75
LBB9_73:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$1, -817(%rbp)
	movl	$7, -876(%rbp)
	jmp	LBB9_75
LBB9_74:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$0, -817(%rbp)
LBB9_75:                                ##   in Loop: Header=BB9_1 Depth=1
	jmp	LBB9_76
LBB9_76:                                ##   in Loop: Header=BB9_1 Depth=1
	testb	$1, -817(%rbp)
	je	LBB9_93
## BB#77:                               ##   in Loop: Header=BB9_1 Depth=1
Ltmp26:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str.9(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp27:
	movq	%rax, -1144(%rbp)       ## 8-byte Spill
	jmp	LBB9_78
LBB9_78:                                ##   in Loop: Header=BB9_1 Depth=1
	movq	-1144(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -72(%rbp)
	leaq	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(%rip), %rcx
	movq	%rcx, -80(%rbp)
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rcx
Ltmp28:
	callq	*%rcx
Ltmp29:
	movq	%rax, -1152(%rbp)       ## 8-byte Spill
	jmp	LBB9_79
LBB9_79:                                ##   in Loop: Header=BB9_1 Depth=1
	jmp	LBB9_80
LBB9_80:                                ##   in Loop: Header=BB9_1 Depth=1
	leaq	_positions(%rip), %rax
	movslq	-864(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-868(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	cmpq	_clearPos(%rip), %rax
	je	LBB9_87
## BB#81:                               ##   in Loop: Header=BB9_1 Depth=1
	movl	-864(%rbp), %eax
	cmpl	-872(%rbp), %eax
	jne	LBB9_83
## BB#82:                               ##   in Loop: Header=BB9_1 Depth=1
	movl	-868(%rbp), %eax
	cmpl	-876(%rbp), %eax
	je	LBB9_87
LBB9_83:                                ##   in Loop: Header=BB9_1 Depth=1
	leaq	_positions(%rip), %rax
	movslq	-872(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-876(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	cmpq	_clearPos(%rip), %rax
	je	LBB9_92
## BB#84:                               ##   in Loop: Header=BB9_1 Depth=1
	movslq	-864(%rbp), %rax
	shlq	$6, %rax
	leaq	_positions(%rip), %rcx
	addq	%rax, %rcx
	movslq	-868(%rbp), %rax
	movq	(%rcx,%rax,8), %rdi
Ltmp30:
	callq	__ZN5piece7getSideEv
Ltmp31:
	movb	%al, -1153(%rbp)        ## 1-byte Spill
	jmp	LBB9_85
LBB9_85:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	-1153(%rbp), %al        ## 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movslq	-872(%rbp), %rdx
	shlq	$6, %rdx
	leaq	_positions(%rip), %rsi
	addq	%rdx, %rsi
	movslq	-876(%rbp), %rdx
	movq	(%rsi,%rdx,8), %rdi
Ltmp32:
	movl	%ecx, -1160(%rbp)       ## 4-byte Spill
	callq	__ZN5piece7getSideEv
Ltmp33:
	movb	%al, -1161(%rbp)        ## 1-byte Spill
	jmp	LBB9_86
LBB9_86:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	-1161(%rbp), %al        ## 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	-1160(%rbp), %edx       ## 4-byte Reload
	cmpl	%ecx, %edx
	jne	LBB9_92
LBB9_87:                                ##   in Loop: Header=BB9_1 Depth=1
Ltmp34:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str.10(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp35:
	movq	%rax, -1176(%rbp)       ## 8-byte Spill
	jmp	LBB9_88
LBB9_88:                                ##   in Loop: Header=BB9_1 Depth=1
	movq	-1176(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -56(%rbp)
	leaq	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(%rip), %rcx
	movq	%rcx, -64(%rbp)
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rcx
Ltmp36:
	callq	*%rcx
Ltmp37:
	movq	%rax, -1184(%rbp)       ## 8-byte Spill
	jmp	LBB9_89
LBB9_89:                                ##   in Loop: Header=BB9_1 Depth=1
	jmp	LBB9_90
LBB9_90:                                ##   in Loop: Header=BB9_1 Depth=1
	movb	$0, -817(%rbp)
Ltmp38:
	movl	$500, %edi              ## imm = 0x1F4
	callq	__Z5sleepi
Ltmp39:
	jmp	LBB9_91
LBB9_91:                                ##   in Loop: Header=BB9_1 Depth=1
	jmp	LBB9_92
LBB9_92:                                ##   in Loop: Header=BB9_1 Depth=1
	jmp	LBB9_93
LBB9_93:                                ##   in Loop: Header=BB9_1 Depth=1
Ltmp40:
	leaq	L_.str.7(%rip), %rdi
	callq	_system
Ltmp41:
	movl	%eax, -1188(%rbp)       ## 4-byte Spill
	jmp	LBB9_94
LBB9_94:                                ##   in Loop: Header=BB9_1 Depth=1
	testb	$1, -817(%rbp)
	je	LBB9_109
## BB#95:                               ##   in Loop: Header=BB9_1 Depth=1
Ltmp42:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str.11(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp43:
	movq	%rax, -1200(%rbp)       ## 8-byte Spill
	jmp	LBB9_96
LBB9_96:                                ##   in Loop: Header=BB9_1 Depth=1
	movq	-1200(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -40(%rbp)
	leaq	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(%rip), %rcx
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rcx
Ltmp44:
	callq	*%rcx
Ltmp45:
	movq	%rax, -1208(%rbp)       ## 8-byte Spill
	jmp	LBB9_97
LBB9_97:                                ##   in Loop: Header=BB9_1 Depth=1
	jmp	LBB9_98
LBB9_98:                                ##   in Loop: Header=BB9_1 Depth=1
	movl	-864(%rbp), %edi
	movl	-868(%rbp), %esi
	movl	-872(%rbp), %edx
	movl	-876(%rbp), %ecx
Ltmp46:
	callq	__Z4moveiiii
Ltmp47:
	jmp	LBB9_99
LBB9_99:                                ##   in Loop: Header=BB9_1 Depth=1
	movl	-864(%rbp), %esi
Ltmp48:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp49:
	movq	%rax, -1216(%rbp)       ## 8-byte Spill
	jmp	LBB9_100
LBB9_100:                               ##   in Loop: Header=BB9_1 Depth=1
Ltmp50:
	leaq	L_.str.12(%rip), %rsi
	movq	-1216(%rbp), %rdi       ## 8-byte Reload
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp51:
	movq	%rax, -1224(%rbp)       ## 8-byte Spill
	jmp	LBB9_101
LBB9_101:                               ##   in Loop: Header=BB9_1 Depth=1
	movl	-868(%rbp), %esi
Ltmp52:
	movq	-1224(%rbp), %rdi       ## 8-byte Reload
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp53:
	movq	%rax, -1232(%rbp)       ## 8-byte Spill
	jmp	LBB9_102
LBB9_102:                               ##   in Loop: Header=BB9_1 Depth=1
Ltmp54:
	leaq	L_.str.13(%rip), %rsi
	movq	-1232(%rbp), %rdi       ## 8-byte Reload
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp55:
	movq	%rax, -1240(%rbp)       ## 8-byte Spill
	jmp	LBB9_103
LBB9_103:                               ##   in Loop: Header=BB9_1 Depth=1
	movl	-872(%rbp), %esi
Ltmp56:
	movq	-1240(%rbp), %rdi       ## 8-byte Reload
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp57:
	movq	%rax, -1248(%rbp)       ## 8-byte Spill
	jmp	LBB9_104
LBB9_104:                               ##   in Loop: Header=BB9_1 Depth=1
Ltmp58:
	leaq	L_.str.12(%rip), %rsi
	movq	-1248(%rbp), %rdi       ## 8-byte Reload
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp59:
	movq	%rax, -1256(%rbp)       ## 8-byte Spill
	jmp	LBB9_105
LBB9_105:                               ##   in Loop: Header=BB9_1 Depth=1
	movl	-876(%rbp), %esi
Ltmp60:
	movq	-1256(%rbp), %rdi       ## 8-byte Reload
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp61:
	movq	%rax, -1264(%rbp)       ## 8-byte Spill
	jmp	LBB9_106
LBB9_106:                               ##   in Loop: Header=BB9_1 Depth=1
	movq	-1264(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -24(%rbp)
	leaq	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(%rip), %rcx
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rcx
Ltmp62:
	callq	*%rcx
Ltmp63:
	movq	%rax, -1272(%rbp)       ## 8-byte Spill
	jmp	LBB9_107
LBB9_107:                               ##   in Loop: Header=BB9_1 Depth=1
	jmp	LBB9_108
LBB9_108:                               ##   in Loop: Header=BB9_1 Depth=1
	jmp	LBB9_109
LBB9_109:                               ##   in Loop: Header=BB9_1 Depth=1
Ltmp64:
	callq	__Z11updateBoardv
Ltmp65:
	jmp	LBB9_110
LBB9_110:                               ##   in Loop: Header=BB9_1 Depth=1
	testb	$1, -817(%rbp)
	jne	LBB9_115
## BB#111:                              ##   in Loop: Header=BB9_1 Depth=1
Ltmp66:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str.14(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp67:
	movq	%rax, -1280(%rbp)       ## 8-byte Spill
	jmp	LBB9_112
LBB9_112:                               ##   in Loop: Header=BB9_1 Depth=1
	movq	-1280(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -8(%rbp)
	leaq	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(%rip), %rcx
	movq	%rcx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
Ltmp68:
	callq	*%rcx
Ltmp69:
	movq	%rax, -1288(%rbp)       ## 8-byte Spill
	jmp	LBB9_113
LBB9_113:                               ##   in Loop: Header=BB9_1 Depth=1
	jmp	LBB9_114
LBB9_114:                               ##   in Loop: Header=BB9_1 Depth=1
	jmp	LBB9_115
LBB9_115:                               ##   in Loop: Header=BB9_1 Depth=1
	leaq	-848(%rbp), %rdi
	movb	$0, -817(%rbp)
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	LBB9_1
LBB9_116:
	jmp	LBB9_118
LBB9_117:
	xorl	%eax, %eax
	addq	$1296, %rsp             ## imm = 0x510
	popq	%rbp
	retq
LBB9_118:
	movq	-856(%rbp), %rdi
	callq	__Unwind_Resume
LBB9_119:
Ltmp73:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -1292(%rbp)       ## 4-byte Spill
	callq	___clang_call_terminate
Lfunc_end1:
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L9_0_set_21 = LBB9_21-LJTI9_0
L9_0_set_22 = LBB9_22-LJTI9_0
L9_0_set_23 = LBB9_23-LJTI9_0
L9_0_set_24 = LBB9_24-LJTI9_0
L9_0_set_25 = LBB9_25-LJTI9_0
L9_0_set_26 = LBB9_26-LJTI9_0
L9_0_set_27 = LBB9_27-LJTI9_0
L9_0_set_28 = LBB9_28-LJTI9_0
LJTI9_0:
	.long	L9_0_set_21
	.long	L9_0_set_22
	.long	L9_0_set_23
	.long	L9_0_set_24
	.long	L9_0_set_25
	.long	L9_0_set_26
	.long	L9_0_set_27
	.long	L9_0_set_28
L9_1_set_35 = LBB9_35-LJTI9_1
L9_1_set_36 = LBB9_36-LJTI9_1
L9_1_set_37 = LBB9_37-LJTI9_1
L9_1_set_38 = LBB9_38-LJTI9_1
L9_1_set_39 = LBB9_39-LJTI9_1
L9_1_set_40 = LBB9_40-LJTI9_1
L9_1_set_41 = LBB9_41-LJTI9_1
L9_1_set_42 = LBB9_42-LJTI9_1
LJTI9_1:
	.long	L9_1_set_35
	.long	L9_1_set_36
	.long	L9_1_set_37
	.long	L9_1_set_38
	.long	L9_1_set_39
	.long	L9_1_set_40
	.long	L9_1_set_41
	.long	L9_1_set_42
L9_2_set_51 = LBB9_51-LJTI9_2
L9_2_set_52 = LBB9_52-LJTI9_2
L9_2_set_53 = LBB9_53-LJTI9_2
L9_2_set_54 = LBB9_54-LJTI9_2
L9_2_set_55 = LBB9_55-LJTI9_2
L9_2_set_56 = LBB9_56-LJTI9_2
L9_2_set_57 = LBB9_57-LJTI9_2
L9_2_set_58 = LBB9_58-LJTI9_2
LJTI9_2:
	.long	L9_2_set_51
	.long	L9_2_set_52
	.long	L9_2_set_53
	.long	L9_2_set_54
	.long	L9_2_set_55
	.long	L9_2_set_56
	.long	L9_2_set_57
	.long	L9_2_set_58
L9_3_set_66 = LBB9_66-LJTI9_3
L9_3_set_67 = LBB9_67-LJTI9_3
L9_3_set_68 = LBB9_68-LJTI9_3
L9_3_set_69 = LBB9_69-LJTI9_3
L9_3_set_70 = LBB9_70-LJTI9_3
L9_3_set_71 = LBB9_71-LJTI9_3
L9_3_set_72 = LBB9_72-LJTI9_3
L9_3_set_73 = LBB9_73-LJTI9_3
LJTI9_3:
	.long	L9_3_set_66
	.long	L9_3_set_67
	.long	L9_3_set_68
	.long	L9_3_set_69
	.long	L9_3_set_70
	.long	L9_3_set_71
	.long	L9_3_set_72
	.long	L9_3_set_73
	.end_data_region
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table9:
Lexception1:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\364"                  ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	104                     ## Call site table length
Lset10 = Lfunc_begin1-Lfunc_begin1      ## >> Call Site 1 <<
	.long	Lset10
Lset11 = Ltmp8-Lfunc_begin1             ##   Call between Lfunc_begin1 and Ltmp8
	.long	Lset11
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset12 = Ltmp8-Lfunc_begin1             ## >> Call Site 2 <<
	.long	Lset12
Lset13 = Ltmp9-Ltmp8                    ##   Call between Ltmp8 and Ltmp9
	.long	Lset13
Lset14 = Ltmp70-Lfunc_begin1            ##     jumps to Ltmp70
	.long	Lset14
	.byte	0                       ##   On action: cleanup
Lset15 = Ltmp10-Lfunc_begin1            ## >> Call Site 3 <<
	.long	Lset15
Lset16 = Ltmp13-Ltmp10                  ##   Call between Ltmp10 and Ltmp13
	.long	Lset16
Lset17 = Ltmp14-Lfunc_begin1            ##     jumps to Ltmp14
	.long	Lset17
	.byte	0                       ##   On action: cleanup
Lset18 = Ltmp15-Lfunc_begin1            ## >> Call Site 4 <<
	.long	Lset18
Lset19 = Ltmp16-Ltmp15                  ##   Call between Ltmp15 and Ltmp16
	.long	Lset19
Lset20 = Ltmp17-Lfunc_begin1            ##     jumps to Ltmp17
	.long	Lset20
	.byte	3                       ##   On action: 2
Lset21 = Ltmp18-Lfunc_begin1            ## >> Call Site 5 <<
	.long	Lset21
Lset22 = Ltmp23-Ltmp18                  ##   Call between Ltmp18 and Ltmp23
	.long	Lset22
Lset23 = Ltmp70-Lfunc_begin1            ##     jumps to Ltmp70
	.long	Lset23
	.byte	0                       ##   On action: cleanup
Lset24 = Ltmp71-Lfunc_begin1            ## >> Call Site 6 <<
	.long	Lset24
Lset25 = Ltmp72-Ltmp71                  ##   Call between Ltmp71 and Ltmp72
	.long	Lset25
Lset26 = Ltmp73-Lfunc_begin1            ##     jumps to Ltmp73
	.long	Lset26
	.byte	5                       ##   On action: 3
Lset27 = Ltmp24-Lfunc_begin1            ## >> Call Site 7 <<
	.long	Lset27
Lset28 = Ltmp69-Ltmp24                  ##   Call between Ltmp24 and Ltmp69
	.long	Lset28
Lset29 = Ltmp70-Lfunc_begin1            ##     jumps to Ltmp70
	.long	Lset29
	.byte	0                       ##   On action: cleanup
Lset30 = Ltmp69-Lfunc_begin1            ## >> Call Site 8 <<
	.long	Lset30
Lset31 = Lfunc_end1-Ltmp69              ##   Call between Ltmp69 and Lfunc_end1
	.long	Lset31
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	0                       ## >> Action Record 1 <<
                                        ##   Cleanup
	.byte	0                       ##   No further actions
	.byte	1                       ## >> Action Record 2 <<
                                        ##   Catch TypeInfo 1
	.byte	125                     ##   Continue to action 1
	.byte	1                       ## >> Action Record 3 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN4kingC1Ebii         ## -- Begin function _ZN4kingC1Ebii
	.weak_def_can_be_hidden	__ZN4kingC1Ebii
	.p2align	4, 0x90
__ZN4kingC1Ebii:                        ## @_ZN4kingC1Ebii
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi30:
	.cfi_def_cfa_offset 16
Lcfi31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi32:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movb	-9(%rbp), %al
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	andb	$1, %al
	movzbl	%al, %esi
	callq	__ZN4kingC2Ebii
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5queenC1Ebii        ## -- Begin function _ZN5queenC1Ebii
	.weak_def_can_be_hidden	__ZN5queenC1Ebii
	.p2align	4, 0x90
__ZN5queenC1Ebii:                       ## @_ZN5queenC1Ebii
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi33:
	.cfi_def_cfa_offset 16
Lcfi34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi35:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movb	-9(%rbp), %al
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	andb	$1, %al
	movzbl	%al, %esi
	callq	__ZN5queenC2Ebii
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z7toupperi            ## -- Begin function _Z7toupperi
	.weak_definition	__Z7toupperi
	.p2align	4, 0x90
__Z7toupperi:                           ## @_Z7toupperi
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi36:
	.cfi_def_cfa_offset 16
Lcfi37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi38:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	___toupper
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5piece7getSideEv    ## -- Begin function _ZN5piece7getSideEv
	.weak_definition	__ZN5piece7getSideEv
	.p2align	4, 0x90
__ZN5piece7getSideEv:                   ## @_ZN5piece7getSideEv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi39:
	.cfi_def_cfa_offset 16
Lcfi40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi41:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movb	8(%rdi), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	___clang_call_terminate ## -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_definition	___clang_call_terminate
	.p2align	4, 0x90
___clang_call_terminate:                ## @__clang_call_terminate
## BB#0:
	pushq	%rax
	callq	___cxa_begin_catch
	movq	%rax, (%rsp)            ## 8-byte Spill
	callq	__ZSt9terminatev
                                        ## -- End function
	.globl	__ZN4kingC2Ebii         ## -- Begin function _ZN4kingC2Ebii
	.weak_def_can_be_hidden	__ZN4kingC2Ebii
	.p2align	4, 0x90
__ZN4kingC2Ebii:                        ## @_ZN4kingC2Ebii
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi42:
	.cfi_def_cfa_offset 16
Lcfi43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi44:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %r8
	movq	%rdi, -32(%rbp)         ## 8-byte Spill
	movq	%r8, %rdi
	callq	__ZN5pieceC2Ev
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	movb	$75, 10(%rdi)
	movb	$75, 9(%rdi)
	movb	-9(%rbp), %al
	andb	$1, %al
	movb	%al, 8(%rdi)
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	callq	__ZN5piece9updatePosEii
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5pieceC2Ev          ## -- Begin function _ZN5pieceC2Ev
	.weak_def_can_be_hidden	__ZN5pieceC2Ev
	.p2align	4, 0x90
__ZN5pieceC2Ev:                         ## @_ZN5pieceC2Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi45:
	.cfi_def_cfa_offset 16
Lcfi46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi47:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5queenC2Ebii        ## -- Begin function _ZN5queenC2Ebii
	.weak_def_can_be_hidden	__ZN5queenC2Ebii
	.p2align	4, 0x90
__ZN5queenC2Ebii:                       ## @_ZN5queenC2Ebii
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi48:
	.cfi_def_cfa_offset 16
Lcfi49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi50:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %r8
	movq	%rdi, -32(%rbp)         ## 8-byte Spill
	movq	%r8, %rdi
	callq	__ZN5pieceC2Ev
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	movb	$81, 10(%rdi)
	movb	$81, 9(%rdi)
	movb	-9(%rbp), %al
	andb	$1, %al
	movb	%al, 8(%rdi)
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	callq	__ZN5piece9updatePosEii
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ## -- Begin function _ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_definition	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	4, 0x90
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ## @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
## BB#0:
	pushq	%rbp
Lcfi51:
	.cfi_def_cfa_offset 16
Lcfi52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi53:
	.cfi_def_cfa_register %rbp
	subq	$416, %rsp              ## imm = 0x1A0
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movq	-200(%rbp), %rsi
Ltmp74:
	leaq	-232(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp75:
	jmp	LBB18_1
LBB18_1:
	leaq	-232(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -265(%rbp)         ## 1-byte Spill
## BB#2:
	movb	-265(%rbp), %al         ## 1-byte Reload
	testb	$1, %al
	jne	LBB18_3
	jmp	LBB18_26
LBB18_3:
	leaq	-256(%rbp), %rax
	movq	-200(%rbp), %rcx
	movq	%rax, -176(%rbp)
	movq	%rcx, -184(%rbp)
	movq	-176(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, -144(%rbp)
	movq	%rcx, -152(%rbp)
	movq	-144(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	-24(%rdx), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -136(%rbp)
	movq	-136(%rbp), %rcx
	movq	%rcx, -128(%rbp)
	movq	-128(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	-208(%rbp), %rsi
	movq	-200(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movl	8(%rax), %edi
	movq	%rsi, -280(%rbp)        ## 8-byte Spill
	movl	%edi, -284(%rbp)        ## 4-byte Spill
## BB#4:
	movl	-284(%rbp), %eax        ## 4-byte Reload
	andl	$176, %eax
	cmpl	$32, %eax
	jne	LBB18_6
## BB#5:
	movq	-208(%rbp), %rax
	addq	-216(%rbp), %rax
	movq	%rax, -296(%rbp)        ## 8-byte Spill
	jmp	LBB18_7
LBB18_6:
	movq	-208(%rbp), %rax
	movq	%rax, -296(%rbp)        ## 8-byte Spill
LBB18_7:
	movq	-296(%rbp), %rax        ## 8-byte Reload
	movq	-208(%rbp), %rcx
	addq	-216(%rbp), %rcx
	movq	-200(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	-24(%rsi), %rsi
	addq	%rsi, %rdx
	movq	-200(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-24(%rdi), %rdi
	addq	%rdi, %rsi
	movq	%rsi, -72(%rbp)
	movq	-72(%rbp), %rsi
	movq	%rax, -304(%rbp)        ## 8-byte Spill
	movq	%rcx, -312(%rbp)        ## 8-byte Spill
	movq	%rdx, -320(%rbp)        ## 8-byte Spill
	movq	%rsi, -328(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__111char_traitsIcE3eofEv
	movq	-328(%rbp), %rcx        ## 8-byte Reload
	movl	144(%rcx), %esi
	movl	%eax, %edi
	callq	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	testb	$1, %al
	jne	LBB18_8
	jmp	LBB18_16
LBB18_8:
	movq	-328(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -32(%rbp)
	movb	$32, -33(%rbp)
	movq	-32(%rbp), %rsi
Ltmp76:
	leaq	-48(%rbp), %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp77:
	jmp	LBB18_9
LBB18_9:
	leaq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
Ltmp78:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp79:
	movq	%rax, -336(%rbp)        ## 8-byte Spill
	jmp	LBB18_10
LBB18_10:
	movb	-33(%rbp), %al
	movq	-336(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	56(%rsi), %rsi
	movsbl	-9(%rbp), %edi
Ltmp80:
	movl	%edi, -340(%rbp)        ## 4-byte Spill
	movq	%rdx, %rdi
	movl	-340(%rbp), %r8d        ## 4-byte Reload
	movq	%rsi, -352(%rbp)        ## 8-byte Spill
	movl	%r8d, %esi
	movq	-352(%rbp), %rdx        ## 8-byte Reload
	callq	*%rdx
Ltmp81:
	movb	%al, -353(%rbp)         ## 1-byte Spill
	jmp	LBB18_14
LBB18_11:
Ltmp82:
	movl	%edx, %ecx
	movq	%rax, -56(%rbp)
	movl	%ecx, -60(%rbp)
Ltmp83:
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp84:
	jmp	LBB18_12
LBB18_12:
	movq	-56(%rbp), %rax
	movl	-60(%rbp), %ecx
	movq	%rax, -368(%rbp)        ## 8-byte Spill
	movl	%ecx, -372(%rbp)        ## 4-byte Spill
	jmp	LBB18_24
LBB18_13:
Ltmp85:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -376(%rbp)        ## 4-byte Spill
	callq	___clang_call_terminate
LBB18_14:
Ltmp86:
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp87:
	jmp	LBB18_15
LBB18_15:
	movb	-353(%rbp), %al         ## 1-byte Reload
	movsbl	%al, %ecx
	movq	-328(%rbp), %rdx        ## 8-byte Reload
	movl	%ecx, 144(%rdx)
LBB18_16:
	movq	-328(%rbp), %rax        ## 8-byte Reload
	movl	144(%rax), %ecx
	movb	%cl, %dl
	movb	%dl, -377(%rbp)         ## 1-byte Spill
## BB#17:
	movq	-256(%rbp), %rdi
Ltmp88:
	movb	-377(%rbp), %al         ## 1-byte Reload
	movsbl	%al, %r9d
	movq	-280(%rbp), %rsi        ## 8-byte Reload
	movq	-304(%rbp), %rdx        ## 8-byte Reload
	movq	-312(%rbp), %rcx        ## 8-byte Reload
	movq	-320(%rbp), %r8         ## 8-byte Reload
	callq	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp89:
	movq	%rax, -392(%rbp)        ## 8-byte Spill
	jmp	LBB18_18
LBB18_18:
	leaq	-264(%rbp), %rax
	movq	-392(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -264(%rbp)
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	jne	LBB18_25
## BB#19:
	movq	-200(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movl	$5, -116(%rbp)
	movq	-112(%rbp), %rax
	movl	-116(%rbp), %edx
	movq	%rax, -96(%rbp)
	movl	%edx, -100(%rbp)
	movq	-96(%rbp), %rax
	movl	32(%rax), %edx
	movl	-100(%rbp), %esi
	orl	%esi, %edx
Ltmp90:
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	__ZNSt3__18ios_base5clearEj
Ltmp91:
	jmp	LBB18_20
LBB18_20:
	jmp	LBB18_21
LBB18_21:
	jmp	LBB18_25
LBB18_22:
Ltmp97:
	movl	%edx, %ecx
	movq	%rax, -240(%rbp)
	movl	%ecx, -244(%rbp)
	jmp	LBB18_29
LBB18_23:
Ltmp92:
	movl	%edx, %ecx
	movq	%rax, -368(%rbp)        ## 8-byte Spill
	movl	%ecx, -372(%rbp)        ## 4-byte Spill
	jmp	LBB18_24
LBB18_24:
	movl	-372(%rbp), %eax        ## 4-byte Reload
	movq	-368(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -240(%rbp)
	movl	%eax, -244(%rbp)
Ltmp93:
	leaq	-232(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp94:
	jmp	LBB18_28
LBB18_25:
	jmp	LBB18_26
LBB18_26:
Ltmp95:
	leaq	-232(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp96:
	jmp	LBB18_27
LBB18_27:
	jmp	LBB18_31
LBB18_28:
	jmp	LBB18_29
LBB18_29:
	movq	-240(%rbp), %rdi
	callq	___cxa_begin_catch
	movq	-200(%rbp), %rdi
	movq	(%rdi), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rdi
Ltmp98:
	movq	%rax, -400(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp99:
	jmp	LBB18_30
LBB18_30:
	callq	___cxa_end_catch
LBB18_31:
	movq	-200(%rbp), %rax
	addq	$416, %rsp              ## imm = 0x1A0
	popq	%rbp
	retq
LBB18_32:
Ltmp100:
	movl	%edx, %ecx
	movq	%rax, -240(%rbp)
	movl	%ecx, -244(%rbp)
Ltmp101:
	callq	___cxa_end_catch
Ltmp102:
	jmp	LBB18_33
LBB18_33:
	jmp	LBB18_34
LBB18_34:
	movq	-240(%rbp), %rdi
	callq	__Unwind_Resume
LBB18_35:
Ltmp103:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -404(%rbp)        ## 4-byte Spill
	callq	___clang_call_terminate
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table18:
Lexception2:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\253\201"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\234\001"              ## Call site table length
Lset32 = Ltmp74-Lfunc_begin2            ## >> Call Site 1 <<
	.long	Lset32
Lset33 = Ltmp75-Ltmp74                  ##   Call between Ltmp74 and Ltmp75
	.long	Lset33
Lset34 = Ltmp97-Lfunc_begin2            ##     jumps to Ltmp97
	.long	Lset34
	.byte	5                       ##   On action: 3
Lset35 = Ltmp76-Lfunc_begin2            ## >> Call Site 2 <<
	.long	Lset35
Lset36 = Ltmp77-Ltmp76                  ##   Call between Ltmp76 and Ltmp77
	.long	Lset36
Lset37 = Ltmp92-Lfunc_begin2            ##     jumps to Ltmp92
	.long	Lset37
	.byte	5                       ##   On action: 3
Lset38 = Ltmp78-Lfunc_begin2            ## >> Call Site 3 <<
	.long	Lset38
Lset39 = Ltmp81-Ltmp78                  ##   Call between Ltmp78 and Ltmp81
	.long	Lset39
Lset40 = Ltmp82-Lfunc_begin2            ##     jumps to Ltmp82
	.long	Lset40
	.byte	3                       ##   On action: 2
Lset41 = Ltmp83-Lfunc_begin2            ## >> Call Site 4 <<
	.long	Lset41
Lset42 = Ltmp84-Ltmp83                  ##   Call between Ltmp83 and Ltmp84
	.long	Lset42
Lset43 = Ltmp85-Lfunc_begin2            ##     jumps to Ltmp85
	.long	Lset43
	.byte	7                       ##   On action: 4
Lset44 = Ltmp86-Lfunc_begin2            ## >> Call Site 5 <<
	.long	Lset44
Lset45 = Ltmp91-Ltmp86                  ##   Call between Ltmp86 and Ltmp91
	.long	Lset45
Lset46 = Ltmp92-Lfunc_begin2            ##     jumps to Ltmp92
	.long	Lset46
	.byte	5                       ##   On action: 3
Lset47 = Ltmp93-Lfunc_begin2            ## >> Call Site 6 <<
	.long	Lset47
Lset48 = Ltmp94-Ltmp93                  ##   Call between Ltmp93 and Ltmp94
	.long	Lset48
Lset49 = Ltmp103-Lfunc_begin2           ##     jumps to Ltmp103
	.long	Lset49
	.byte	5                       ##   On action: 3
Lset50 = Ltmp95-Lfunc_begin2            ## >> Call Site 7 <<
	.long	Lset50
Lset51 = Ltmp96-Ltmp95                  ##   Call between Ltmp95 and Ltmp96
	.long	Lset51
Lset52 = Ltmp97-Lfunc_begin2            ##     jumps to Ltmp97
	.long	Lset52
	.byte	5                       ##   On action: 3
Lset53 = Ltmp96-Lfunc_begin2            ## >> Call Site 8 <<
	.long	Lset53
Lset54 = Ltmp98-Ltmp96                  ##   Call between Ltmp96 and Ltmp98
	.long	Lset54
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset55 = Ltmp98-Lfunc_begin2            ## >> Call Site 9 <<
	.long	Lset55
Lset56 = Ltmp99-Ltmp98                  ##   Call between Ltmp98 and Ltmp99
	.long	Lset56
Lset57 = Ltmp100-Lfunc_begin2           ##     jumps to Ltmp100
	.long	Lset57
	.byte	0                       ##   On action: cleanup
Lset58 = Ltmp99-Lfunc_begin2            ## >> Call Site 10 <<
	.long	Lset58
Lset59 = Ltmp101-Ltmp99                 ##   Call between Ltmp99 and Ltmp101
	.long	Lset59
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset60 = Ltmp101-Lfunc_begin2           ## >> Call Site 11 <<
	.long	Lset60
Lset61 = Ltmp102-Ltmp101                ##   Call between Ltmp101 and Ltmp102
	.long	Lset61
Lset62 = Ltmp103-Lfunc_begin2           ##     jumps to Ltmp103
	.long	Lset62
	.byte	5                       ##   On action: 3
Lset63 = Ltmp102-Lfunc_begin2           ## >> Call Site 12 <<
	.long	Lset63
Lset64 = Lfunc_end2-Ltmp102             ##   Call between Ltmp102 and Lfunc_end2
	.long	Lset64
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	0                       ## >> Action Record 1 <<
                                        ##   Cleanup
	.byte	0                       ##   No further actions
	.byte	1                       ## >> Action Record 2 <<
                                        ##   Catch TypeInfo 1
	.byte	125                     ##   Continue to action 1
	.byte	1                       ## >> Action Record 3 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
	.byte	1                       ## >> Action Record 4 <<
                                        ##   Catch TypeInfo 1
	.byte	125                     ##   Continue to action 3
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__111char_traitsIcE6lengthEPKc ## -- Begin function _ZNSt3__111char_traitsIcE6lengthEPKc
	.weak_definition	__ZNSt3__111char_traitsIcE6lengthEPKc
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE6lengthEPKc:  ## @_ZNSt3__111char_traitsIcE6lengthEPKc
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi54:
	.cfi_def_cfa_offset 16
Lcfi55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi56:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_strlen
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ## -- Begin function _ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_definition	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	4, 0x90
__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ## @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
## BB#0:
	pushq	%rbp
Lcfi57:
	.cfi_def_cfa_offset 16
Lcfi58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi59:
	.cfi_def_cfa_register %rbp
	subq	$736, %rsp              ## imm = 0x2E0
	movb	%r9b, %al
	leaq	-560(%rbp), %r10
	leaq	-496(%rbp), %r11
	movq	%rdi, -512(%rbp)
	movq	%rsi, -520(%rbp)
	movq	%rdx, -528(%rbp)
	movq	%rcx, -536(%rbp)
	movq	%r8, -544(%rbp)
	movb	%al, -545(%rbp)
	movq	-512(%rbp), %rcx
	movq	%r11, -480(%rbp)
	movq	$-1, -488(%rbp)
	movq	-480(%rbp), %rdx
	movq	-488(%rbp), %rsi
	movq	%rdx, -464(%rbp)
	movq	%rsi, -472(%rbp)
	movq	-464(%rbp), %rdx
	movq	$0, (%rdx)
	movq	-496(%rbp), %rdx
	movq	%rdx, -560(%rbp)
	movq	%r10, -456(%rbp)
	cmpq	$0, %rcx
	jne	LBB20_2
## BB#1:
	movq	-512(%rbp), %rax
	movq	%rax, -504(%rbp)
	jmp	LBB20_29
LBB20_2:
	movq	-536(%rbp), %rax
	movq	-520(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -568(%rbp)
	movq	-544(%rbp), %rax
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -576(%rbp)
	movq	-576(%rbp), %rax
	cmpq	-568(%rbp), %rax
	jle	LBB20_4
## BB#3:
	movq	-568(%rbp), %rax
	movq	-576(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -576(%rbp)
	jmp	LBB20_5
LBB20_4:
	movq	$0, -576(%rbp)
LBB20_5:
	movq	-528(%rbp), %rax
	movq	-520(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -584(%rbp)
	cmpq	$0, -584(%rbp)
	jle	LBB20_9
## BB#6:
	movq	-512(%rbp), %rax
	movq	-520(%rbp), %rcx
	movq	-584(%rbp), %rdx
	movq	%rax, -256(%rbp)
	movq	%rcx, -264(%rbp)
	movq	%rdx, -272(%rbp)
	movq	-256(%rbp), %rax
	movq	(%rax), %rcx
	movq	96(%rcx), %rcx
	movq	-264(%rbp), %rsi
	movq	-272(%rbp), %rdx
	movq	%rax, %rdi
	callq	*%rcx
	cmpq	-584(%rbp), %rax
	je	LBB20_8
## BB#7:
	leaq	-592(%rbp), %rax
	leaq	-248(%rbp), %rcx
	movq	%rcx, -232(%rbp)
	movq	$-1, -240(%rbp)
	movq	-232(%rbp), %rcx
	movq	-240(%rbp), %rdx
	movq	%rcx, -216(%rbp)
	movq	%rdx, -224(%rbp)
	movq	-216(%rbp), %rcx
	movq	$0, (%rcx)
	movq	-248(%rbp), %rcx
	movq	%rcx, -592(%rbp)
	movq	%rax, -8(%rbp)
	movq	$0, -512(%rbp)
	movq	-512(%rbp), %rax
	movq	%rax, -504(%rbp)
	jmp	LBB20_29
LBB20_8:
	jmp	LBB20_9
LBB20_9:
	cmpq	$0, -576(%rbp)
	jle	LBB20_24
## BB#10:
	xorl	%esi, %esi
	movl	$24, %eax
	movl	%eax, %edx
	leaq	-616(%rbp), %rcx
	movq	-576(%rbp), %rdi
	movb	-545(%rbp), %r8b
	movq	%rcx, -80(%rbp)
	movq	%rdi, -88(%rbp)
	movb	%r8b, -89(%rbp)
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %rdi
	movb	-89(%rbp), %r8b
	movq	%rcx, -56(%rbp)
	movq	%rdi, -64(%rbp)
	movb	%r8b, -65(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rdi, %r9
	movq	%r9, -32(%rbp)
	movq	-32(%rbp), %r9
	movq	%rdi, -664(%rbp)        ## 8-byte Spill
	movq	%r9, %rdi
	movq	%rcx, -672(%rbp)        ## 8-byte Spill
	callq	_memset
	movq	-664(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -16(%rbp)
	movq	-64(%rbp), %rsi
	movq	-672(%rbp), %rdi        ## 8-byte Reload
	movsbl	-65(%rbp), %edx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc
	leaq	-616(%rbp), %rcx
	movq	-512(%rbp), %rsi
	movq	%rcx, -208(%rbp)
	movq	-208(%rbp), %rcx
	movq	%rcx, -200(%rbp)
	movq	-200(%rbp), %rcx
	movq	%rcx, -192(%rbp)
	movq	-192(%rbp), %rdi
	movq	%rdi, -184(%rbp)
	movq	-184(%rbp), %rdi
	movq	%rdi, -176(%rbp)
	movq	-176(%rbp), %rdi
	movzbl	(%rdi), %eax
	movl	%eax, %edi
	andq	$1, %rdi
	cmpq	$0, %rdi
	movq	%rsi, -680(%rbp)        ## 8-byte Spill
	movq	%rcx, -688(%rbp)        ## 8-byte Spill
	je	LBB20_12
## BB#11:
	movq	-688(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rcx
	movq	%rcx, -120(%rbp)
	movq	-120(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -696(%rbp)        ## 8-byte Spill
	jmp	LBB20_13
LBB20_12:
	movq	-688(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rcx
	movq	%rcx, -160(%rbp)
	movq	-160(%rbp), %rcx
	movq	%rcx, -152(%rbp)
	movq	-152(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -144(%rbp)
	movq	-144(%rbp), %rcx
	movq	%rcx, -136(%rbp)
	movq	-136(%rbp), %rcx
	movq	%rcx, -696(%rbp)        ## 8-byte Spill
LBB20_13:
	movq	-696(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	-576(%rbp), %rcx
	movq	-680(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -280(%rbp)
	movq	%rax, -288(%rbp)
	movq	%rcx, -296(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rcx
	movq	96(%rcx), %rcx
	movq	-288(%rbp), %rsi
	movq	-296(%rbp), %rdx
Ltmp104:
	movq	%rax, %rdi
	callq	*%rcx
Ltmp105:
	movq	%rax, -704(%rbp)        ## 8-byte Spill
	jmp	LBB20_14
LBB20_14:
	jmp	LBB20_15
LBB20_15:
	movq	-704(%rbp), %rax        ## 8-byte Reload
	cmpq	-576(%rbp), %rax
	je	LBB20_20
## BB#16:
	leaq	-336(%rbp), %rax
	movq	%rax, -320(%rbp)
	movq	$-1, -328(%rbp)
	movq	-320(%rbp), %rax
	movq	-328(%rbp), %rcx
	movq	%rax, -304(%rbp)
	movq	%rcx, -312(%rbp)
	movq	-304(%rbp), %rax
	movq	$0, (%rax)
	movq	-336(%rbp), %rax
	movq	%rax, -712(%rbp)        ## 8-byte Spill
## BB#17:
	leaq	-640(%rbp), %rax
	movq	-712(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -640(%rbp)
	movq	%rax, -344(%rbp)
## BB#18:
	movq	$0, -512(%rbp)
	movq	-512(%rbp), %rax
	movq	%rax, -504(%rbp)
	movl	$1, -644(%rbp)
	jmp	LBB20_21
LBB20_19:
Ltmp106:
	movl	%edx, %ecx
	movq	%rax, -624(%rbp)
	movl	%ecx, -628(%rbp)
Ltmp107:
	leaq	-616(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp108:
	jmp	LBB20_23
LBB20_20:
	movl	$0, -644(%rbp)
LBB20_21:
	leaq	-616(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movl	-644(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -716(%rbp)        ## 4-byte Spill
	je	LBB20_22
	jmp	LBB20_33
LBB20_33:
	movl	-716(%rbp), %eax        ## 4-byte Reload
	subl	$1, %eax
	movl	%eax, -720(%rbp)        ## 4-byte Spill
	je	LBB20_29
	jmp	LBB20_32
LBB20_22:
	jmp	LBB20_24
LBB20_23:
	jmp	LBB20_30
LBB20_24:
	movq	-536(%rbp), %rax
	movq	-528(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -584(%rbp)
	cmpq	$0, -584(%rbp)
	jle	LBB20_28
## BB#25:
	movq	-512(%rbp), %rax
	movq	-528(%rbp), %rcx
	movq	-584(%rbp), %rdx
	movq	%rax, -360(%rbp)
	movq	%rcx, -368(%rbp)
	movq	%rdx, -376(%rbp)
	movq	-360(%rbp), %rax
	movq	(%rax), %rcx
	movq	96(%rcx), %rcx
	movq	-368(%rbp), %rsi
	movq	-376(%rbp), %rdx
	movq	%rax, %rdi
	callq	*%rcx
	cmpq	-584(%rbp), %rax
	je	LBB20_27
## BB#26:
	leaq	-656(%rbp), %rax
	leaq	-416(%rbp), %rcx
	movq	%rcx, -400(%rbp)
	movq	$-1, -408(%rbp)
	movq	-400(%rbp), %rcx
	movq	-408(%rbp), %rdx
	movq	%rcx, -384(%rbp)
	movq	%rdx, -392(%rbp)
	movq	-384(%rbp), %rcx
	movq	$0, (%rcx)
	movq	-416(%rbp), %rcx
	movq	%rcx, -656(%rbp)
	movq	%rax, -424(%rbp)
	movq	$0, -512(%rbp)
	movq	-512(%rbp), %rax
	movq	%rax, -504(%rbp)
	jmp	LBB20_29
LBB20_27:
	jmp	LBB20_28
LBB20_28:
	movq	-544(%rbp), %rax
	movq	%rax, -432(%rbp)
	movq	$0, -440(%rbp)
	movq	-432(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, -448(%rbp)
	movq	-440(%rbp), %rcx
	movq	%rcx, 24(%rax)
	movq	-512(%rbp), %rax
	movq	%rax, -504(%rbp)
LBB20_29:
	movq	-504(%rbp), %rax
	addq	$736, %rsp              ## imm = 0x2E0
	popq	%rbp
	retq
LBB20_30:
	movq	-624(%rbp), %rdi
	callq	__Unwind_Resume
LBB20_31:
Ltmp109:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -724(%rbp)        ## 4-byte Spill
	callq	___clang_call_terminate
LBB20_32:
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table20:
Lexception3:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\274"                  ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	52                      ## Call site table length
Lset65 = Lfunc_begin3-Lfunc_begin3      ## >> Call Site 1 <<
	.long	Lset65
Lset66 = Ltmp104-Lfunc_begin3           ##   Call between Lfunc_begin3 and Ltmp104
	.long	Lset66
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset67 = Ltmp104-Lfunc_begin3           ## >> Call Site 2 <<
	.long	Lset67
Lset68 = Ltmp105-Ltmp104                ##   Call between Ltmp104 and Ltmp105
	.long	Lset68
Lset69 = Ltmp106-Lfunc_begin3           ##     jumps to Ltmp106
	.long	Lset69
	.byte	0                       ##   On action: cleanup
Lset70 = Ltmp107-Lfunc_begin3           ## >> Call Site 3 <<
	.long	Lset70
Lset71 = Ltmp108-Ltmp107                ##   Call between Ltmp107 and Ltmp108
	.long	Lset71
Lset72 = Ltmp109-Lfunc_begin3           ##     jumps to Ltmp109
	.long	Lset72
	.byte	1                       ##   On action: 1
Lset73 = Ltmp108-Lfunc_begin3           ## >> Call Site 4 <<
	.long	Lset73
Lset74 = Lfunc_end3-Ltmp108             ##   Call between Ltmp108 and Lfunc_end3
	.long	Lset74
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__111char_traitsIcE11eq_int_typeEii ## -- Begin function _ZNSt3__111char_traitsIcE11eq_int_typeEii
	.weak_definition	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE11eq_int_typeEii: ## @_ZNSt3__111char_traitsIcE11eq_int_typeEii
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi60:
	.cfi_def_cfa_offset 16
Lcfi61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi62:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %esi
	cmpl	-8(%rbp), %esi
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__111char_traitsIcE3eofEv ## -- Begin function _ZNSt3__111char_traitsIcE3eofEv
	.weak_definition	__ZNSt3__111char_traitsIcE3eofEv
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE3eofEv:       ## @_ZNSt3__111char_traitsIcE3eofEv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi63:
	.cfi_def_cfa_offset 16
Lcfi64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi65:
	.cfi_def_cfa_register %rbp
	movl	$4294967295, %eax       ## imm = 0xFFFFFFFF
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_ ## -- Begin function _ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.weak_definition	__ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.p2align	4, 0x90
__ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_: ## @_ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
## BB#0:
	pushq	%rbp
Lcfi66:
	.cfi_def_cfa_offset 16
Lcfi67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi68:
	.cfi_def_cfa_register %rbp
	subq	$576, %rsp              ## imm = 0x240
	movb	%dl, %al
	movq	%rdi, -448(%rbp)
	movq	%rsi, -456(%rbp)
	movb	%al, -457(%rbp)
	movq	-448(%rbp), %rsi
Ltmp110:
	leaq	-464(%rbp), %rdi
	movl	$1, %edx
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentryC1ERS3_b
Ltmp111:
	jmp	LBB23_1
LBB23_1:
	leaq	-464(%rbp), %rax
	movq	%rax, -440(%rbp)
	movq	-440(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -494(%rbp)         ## 1-byte Spill
## BB#2:
	movb	-494(%rbp), %al         ## 1-byte Reload
	testb	$1, %al
	jne	LBB23_3
	jmp	LBB23_34
LBB23_3:
	movq	-456(%rbp), %rax
	movq	%rax, -416(%rbp)
	movq	-416(%rbp), %rax
	movq	%rax, -408(%rbp)
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rcx
	movq	%rcx, -360(%rbp)
	movq	-360(%rbp), %rcx
	movq	%rcx, -352(%rbp)
	movq	-352(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	andq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -504(%rbp)        ## 8-byte Spill
	je	LBB23_5
## BB#4:
	leaq	-429(%rbp), %rsi
	movq	-504(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rcx
	movq	%rcx, -264(%rbp)
	movq	-264(%rbp), %rcx
	movq	%rcx, -256(%rbp)
	movq	-256(%rbp), %rcx
	movq	16(%rcx), %rdi
	movb	$0, -429(%rbp)
	callq	__ZNSt3__111char_traitsIcE6assignERcRKc
	movq	-504(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -296(%rbp)
	movq	$0, -304(%rbp)
	movq	-296(%rbp), %rcx
	movq	-304(%rbp), %rsi
	movq	%rcx, -288(%rbp)
	movq	-288(%rbp), %rcx
	movq	%rcx, -280(%rbp)
	movq	-280(%rbp), %rcx
	movq	%rsi, 8(%rcx)
	jmp	LBB23_6
LBB23_5:
	leaq	-430(%rbp), %rsi
	movq	-504(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rcx
	movq	%rcx, -336(%rbp)
	movq	-336(%rbp), %rcx
	movq	%rcx, -328(%rbp)
	movq	-328(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -320(%rbp)
	movq	-320(%rbp), %rcx
	movq	%rcx, -312(%rbp)
	movq	-312(%rbp), %rdi
	movb	$0, -430(%rbp)
	callq	__ZNSt3__111char_traitsIcE6assignERcRKc
	movq	-504(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -392(%rbp)
	movq	$0, -400(%rbp)
	movq	-392(%rbp), %rcx
	movq	-400(%rbp), %rsi
	shlq	$1, %rsi
	movb	%sil, %dl
	movq	%rcx, -384(%rbp)
	movq	-384(%rbp), %rcx
	movq	%rcx, -376(%rbp)
	movq	-376(%rbp), %rcx
	movb	%dl, (%rcx)
LBB23_6:
	movl	$0, -480(%rbp)
	movq	$0, -488(%rbp)
LBB23_7:                                ## =>This Inner Loop Header: Depth=1
	jmp	LBB23_8
LBB23_8:                                ##   in Loop: Header=BB23_7 Depth=1
	movq	-448(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -512(%rbp)        ## 8-byte Spill
## BB#9:                                ##   in Loop: Header=BB23_7 Depth=1
	movq	-512(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rcx
	movq	24(%rcx), %rdx
	cmpq	32(%rcx), %rdx
	movq	%rcx, -520(%rbp)        ## 8-byte Spill
	jne	LBB23_12
## BB#10:                               ##   in Loop: Header=BB23_7 Depth=1
	movq	-520(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %rcx
	movq	80(%rcx), %rcx
Ltmp112:
	movq	%rax, %rdi
	callq	*%rcx
Ltmp113:
	movl	%eax, -524(%rbp)        ## 4-byte Spill
	jmp	LBB23_11
LBB23_11:                               ##   in Loop: Header=BB23_7 Depth=1
	movl	-524(%rbp), %eax        ## 4-byte Reload
	movl	%eax, -220(%rbp)
	jmp	LBB23_13
LBB23_12:                               ##   in Loop: Header=BB23_7 Depth=1
	movq	-520(%rbp), %rax        ## 8-byte Reload
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movsbl	(%rcx), %edi
	callq	__ZNSt3__111char_traitsIcE11to_int_typeEc
	movl	%eax, -220(%rbp)
LBB23_13:                               ##   in Loop: Header=BB23_7 Depth=1
	movl	-220(%rbp), %eax
	movl	%eax, -528(%rbp)        ## 4-byte Spill
## BB#14:                               ##   in Loop: Header=BB23_7 Depth=1
	movl	-528(%rbp), %eax        ## 4-byte Reload
	movl	%eax, -492(%rbp)
	movl	-492(%rbp), %edi
	movl	%edi, -532(%rbp)        ## 4-byte Spill
	callq	__ZNSt3__111char_traitsIcE3eofEv
	movl	-532(%rbp), %edi        ## 4-byte Reload
	movl	%eax, %esi
	callq	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	testb	$1, %al
	jne	LBB23_15
	jmp	LBB23_20
LBB23_15:
	movl	-480(%rbp), %eax
	orl	$2, %eax
	movl	%eax, -480(%rbp)
	jmp	LBB23_29
LBB23_16:
Ltmp118:
	movl	%edx, %ecx
	movq	%rax, -472(%rbp)
	movl	%ecx, -476(%rbp)
## BB#17:
	movq	-472(%rbp), %rdi
	callq	___cxa_begin_catch
	movq	-448(%rbp), %rdi
	movq	(%rdi), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rdi
Ltmp119:
	movq	%rax, -544(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp120:
	jmp	LBB23_18
LBB23_18:
	callq	___cxa_end_catch
LBB23_19:
	movq	-448(%rbp), %rax
	addq	$576, %rsp              ## imm = 0x240
	popq	%rbp
	retq
LBB23_20:                               ##   in Loop: Header=BB23_7 Depth=1
	movq	-488(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -488(%rbp)
	movl	-492(%rbp), %edi
	callq	__ZNSt3__111char_traitsIcE12to_char_typeEi
	movb	%al, -493(%rbp)
	movb	-493(%rbp), %al
	movsbl	%al, %edi
	movsbl	-457(%rbp), %esi
	callq	__ZNSt3__111char_traitsIcE2eqEcc
	testb	$1, %al
	jne	LBB23_21
	jmp	LBB23_22
LBB23_21:
	jmp	LBB23_29
LBB23_22:                               ##   in Loop: Header=BB23_7 Depth=1
	movq	-456(%rbp), %rdi
	movsbl	-493(%rbp), %esi
Ltmp114:
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
Ltmp115:
	jmp	LBB23_23
LBB23_23:                               ##   in Loop: Header=BB23_7 Depth=1
	movq	-456(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rcx
	movq	%rcx, -200(%rbp)
	movq	-200(%rbp), %rcx
	movq	%rcx, -192(%rbp)
	movq	-192(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	andq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -552(%rbp)        ## 8-byte Spill
	je	LBB23_25
## BB#24:                               ##   in Loop: Header=BB23_7 Depth=1
	movq	-552(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rcx
	movq	%rcx, -152(%rbp)
	movq	-152(%rbp), %rcx
	movq	%rcx, -144(%rbp)
	movq	-144(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -560(%rbp)        ## 8-byte Spill
	jmp	LBB23_26
LBB23_25:                               ##   in Loop: Header=BB23_7 Depth=1
	movq	-552(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rcx
	movq	%rcx, -176(%rbp)
	movq	-176(%rbp), %rcx
	movq	%rcx, -168(%rbp)
	movq	-168(%rbp), %rcx
	movzbl	(%rcx), %edx
	sarl	$1, %edx
	movslq	%edx, %rcx
	movq	%rcx, -560(%rbp)        ## 8-byte Spill
LBB23_26:                               ##   in Loop: Header=BB23_7 Depth=1
	movq	-560(%rbp), %rax        ## 8-byte Reload
	movq	-456(%rbp), %rcx
	movq	%rcx, -128(%rbp)
	movq	-128(%rbp), %rcx
	movq	%rcx, -120(%rbp)
	movq	-120(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	$-1, -136(%rbp)
	movq	-136(%rbp), %rcx
	subq	$16, %rcx
	cmpq	%rcx, %rax
	jne	LBB23_28
## BB#27:
	movl	-480(%rbp), %eax
	orl	$4, %eax
	movl	%eax, -480(%rbp)
	jmp	LBB23_29
LBB23_28:                               ##   in Loop: Header=BB23_7 Depth=1
	jmp	LBB23_7
LBB23_29:
	cmpq	$0, -488(%rbp)
	jne	LBB23_31
## BB#30:
	movl	-480(%rbp), %eax
	orl	$4, %eax
	movl	%eax, -480(%rbp)
LBB23_31:
	movq	-448(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rax
	movl	-480(%rbp), %edx
	movq	%rax, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movq	%rax, -8(%rbp)
	movl	%edx, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	32(%rax), %edx
	movl	-12(%rbp), %esi
	orl	%esi, %edx
Ltmp116:
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	__ZNSt3__18ios_base5clearEj
Ltmp117:
	jmp	LBB23_32
LBB23_32:
	jmp	LBB23_33
LBB23_33:
	jmp	LBB23_34
LBB23_34:
	jmp	LBB23_19
LBB23_35:
Ltmp121:
	movl	%edx, %ecx
	movq	%rax, -472(%rbp)
	movl	%ecx, -476(%rbp)
Ltmp122:
	callq	___cxa_end_catch
Ltmp123:
	jmp	LBB23_36
LBB23_36:
	jmp	LBB23_37
LBB23_37:
	movq	-472(%rbp), %rdi
	callq	__Unwind_Resume
LBB23_38:
Ltmp124:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -564(%rbp)        ## 4-byte Spill
	callq	___clang_call_terminate
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table23:
Lexception4:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\343\200"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	91                      ## Call site table length
Lset75 = Ltmp110-Lfunc_begin4           ## >> Call Site 1 <<
	.long	Lset75
Lset76 = Ltmp113-Ltmp110                ##   Call between Ltmp110 and Ltmp113
	.long	Lset76
Lset77 = Ltmp118-Lfunc_begin4           ##     jumps to Ltmp118
	.long	Lset77
	.byte	1                       ##   On action: 1
Lset78 = Ltmp113-Lfunc_begin4           ## >> Call Site 2 <<
	.long	Lset78
Lset79 = Ltmp119-Ltmp113                ##   Call between Ltmp113 and Ltmp119
	.long	Lset79
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset80 = Ltmp119-Lfunc_begin4           ## >> Call Site 3 <<
	.long	Lset80
Lset81 = Ltmp120-Ltmp119                ##   Call between Ltmp119 and Ltmp120
	.long	Lset81
Lset82 = Ltmp121-Lfunc_begin4           ##     jumps to Ltmp121
	.long	Lset82
	.byte	0                       ##   On action: cleanup
Lset83 = Ltmp120-Lfunc_begin4           ## >> Call Site 4 <<
	.long	Lset83
Lset84 = Ltmp114-Ltmp120                ##   Call between Ltmp120 and Ltmp114
	.long	Lset84
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset85 = Ltmp114-Lfunc_begin4           ## >> Call Site 5 <<
	.long	Lset85
Lset86 = Ltmp117-Ltmp114                ##   Call between Ltmp114 and Ltmp117
	.long	Lset86
Lset87 = Ltmp118-Lfunc_begin4           ##     jumps to Ltmp118
	.long	Lset87
	.byte	1                       ##   On action: 1
Lset88 = Ltmp122-Lfunc_begin4           ## >> Call Site 6 <<
	.long	Lset88
Lset89 = Ltmp123-Ltmp122                ##   Call between Ltmp122 and Ltmp123
	.long	Lset89
Lset90 = Ltmp124-Lfunc_begin4           ##     jumps to Ltmp124
	.long	Lset90
	.byte	1                       ##   On action: 1
Lset91 = Ltmp123-Lfunc_begin4           ## >> Call Site 7 <<
	.long	Lset91
Lset92 = Lfunc_end4-Ltmp123             ##   Call between Ltmp123 and Lfunc_end4
	.long	Lset92
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__111char_traitsIcE12to_char_typeEi ## -- Begin function _ZNSt3__111char_traitsIcE12to_char_typeEi
	.weak_definition	__ZNSt3__111char_traitsIcE12to_char_typeEi
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE12to_char_typeEi: ## @_ZNSt3__111char_traitsIcE12to_char_typeEi
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi69:
	.cfi_def_cfa_offset 16
Lcfi70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi71:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movb	%dil, %al
	movsbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__111char_traitsIcE2eqEcc ## -- Begin function _ZNSt3__111char_traitsIcE2eqEcc
	.weak_definition	__ZNSt3__111char_traitsIcE2eqEcc
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE2eqEcc:       ## @_ZNSt3__111char_traitsIcE2eqEcc
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi72:
	.cfi_def_cfa_offset 16
Lcfi73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi74:
	.cfi_def_cfa_register %rbp
	movb	%sil, %al
	movb	%dil, %cl
	movb	%cl, -1(%rbp)
	movb	%al, -2(%rbp)
	movsbl	-1(%rbp), %esi
	movsbl	-2(%rbp), %edi
	cmpl	%edi, %esi
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__111char_traitsIcE6assignERcRKc ## -- Begin function _ZNSt3__111char_traitsIcE6assignERcRKc
	.weak_definition	__ZNSt3__111char_traitsIcE6assignERcRKc
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE6assignERcRKc: ## @_ZNSt3__111char_traitsIcE6assignERcRKc
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi75:
	.cfi_def_cfa_offset 16
Lcfi76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi77:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movb	(%rsi), %al
	movq	-8(%rbp), %rsi
	movb	%al, (%rsi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__111char_traitsIcE11to_int_typeEc ## -- Begin function _ZNSt3__111char_traitsIcE11to_int_typeEc
	.weak_definition	__ZNSt3__111char_traitsIcE11to_int_typeEc
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE11to_int_typeEc: ## @_ZNSt3__111char_traitsIcE11to_int_typeEc
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi78:
	.cfi_def_cfa_offset 16
Lcfi79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi80:
	.cfi_def_cfa_register %rbp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_board                  ## @board
.zerofill __DATA,__common,_board,64,4
	.globl	_positions              ## @positions
.zerofill __DATA,__common,_positions,512,4
	.globl	_clearPos               ## @clearPos
.zerofill __DATA,__common,_clearPos,8,3
	.globl	_redspaces              ## @redspaces
.zerofill __DATA,__common,_redspaces,256,4
	.globl	_redboardmem            ## @redboardmem
.zerofill __DATA,__common,_redboardmem,512,4
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"\033[0;36mSimple Chess\n\033[0;34mBy Tyler D.\n\033[0;37mGame Format: [A-H][1-8] [A-H][1-8]\033[0;37m"

L_.str.1:                               ## @.str.1
	.asciz	"\t\t"

L_.str.2:                               ## @.str.2
	.asciz	"\033[0;37m"

L_.str.3:                               ## @.str.3
	.asciz	"\033[7m"

L_.str.4:                               ## @.str.4
	.asciz	" "

L_.str.5:                               ## @.str.5
	.asciz	"\033[0m "

L_.str.6:                               ## @.str.6
	.asciz	"\t\t\033[0mA B C D E F G H "

L_.str.7:                               ## @.str.7
	.asciz	"./clearScrn.sh"

L_.str.8:                               ## @.str.8
	.asciz	"Move: "

L_.str.9:                               ## @.str.9
	.asciz	"Reached flag 1"

L_.str.10:                              ## @.str.10
	.asciz	"Reached flag 2"

L_.str.11:                              ## @.str.11
	.asciz	"Moving"

L_.str.12:                              ## @.str.12
	.asciz	","

L_.str.13:                              ## @.str.13
	.asciz	"-->"

L_.str.14:                              ## @.str.14
	.asciz	"\033[0;31mNot a Valid Move.\033[0;37m"


.subsections_via_symbols
