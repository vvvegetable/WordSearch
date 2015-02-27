	.arch armv6
	.eabi_attribute 27, 3
	.eabi_attribute 28, 1
	.fpu vfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"project1.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Would you like to play again?(y/n) \000"
	.align	2
.LC1:
	.ascii	"%c\012\000"
	.align	2
.LC2:
	.ascii	"Incorrect input, exiting.\000"
	.align	2
.LC3:
	.ascii	"Incorrect input. \000"
	.text
	.align	2
	.global	playAgain
	.type	playAgain, %function
playAgain:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	ldr	r3, .L6
	mov	r0, r3
	bl	printf
	ldr	r2, .L6+4
	sub	r3, fp, #9
	mov	r0, r2
	mov	r1, r3
	bl	__isoc99_scanf
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #1
	beq	.L2
	ldr	r0, .L6+8
	bl	puts
	mov	r0, #1
	bl	exit
.L2:
	ldrb	r3, [fp, #-9]	@ zero_extendqisi2
	cmp	r3, #121
	bne	.L3
	mov	r3, #1
	b	.L4
.L3:
	ldrb	r3, [fp, #-9]	@ zero_extendqisi2
	cmp	r3, #110
	bne	.L5
	mov	r3, #0
	b	.L4
.L5:
	ldr	r0, .L6+12
	bl	puts
	bl	playAgain
	mov	r3, r0
.L4:
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L7:
	.align	2
.L6:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.size	playAgain, .-playAgain
	.section	.rodata
	.align	2
.LC4:
	.ascii	"Enter your name: \000"
	.align	2
.LC5:
	.ascii	"%s\012\000"
	.align	2
.LC6:
	.ascii	"Incorrect input, exiting. \000"
	.align	2
.LC7:
	.ascii	"Hello %s, your final score was %d out of a possible"
	.ascii	" %d. You made %d mistakes.\012\000"
	.text
	.align	2
	.global	displayInfo
	.type	displayInfo, %function
displayInfo:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r3, .L10
	mov	r0, r3
	bl	printf
	ldr	r3, .L10+4
	mov	r0, r3
	ldr	r1, [fp, #-8]
	bl	__isoc99_scanf
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #1
	beq	.L9
	ldr	r0, .L10+8
	bl	puts
	mov	r0, #1
	bl	exit
.L9:
	ldr	r2, [fp, #-28]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-24]
	rsb	r3, r3, r2
	ldr	r2, .L10+12
	smull	r1, r2, r2, r3
	mov	r3, r3, asr #31
	rsb	r3, r3, r2
	str	r3, [fp, #-20]
	ldr	r3, .L10+16
	ldr	r2, [fp, #-20]
	str	r2, [sp, #0]
	mov	r0, r3
	ldr	r1, [fp, #-8]
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-16]
	bl	printf
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L11:
	.align	2
.L10:
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	1431655766
	.word	.LC7
	.size	displayInfo, .-displayInfo
	.section	.rodata
	.align	2
.LC8:
	.ascii	"cub\000"
	.align	2
.LC9:
	.ascii	"one\000"
	.align	2
.LC10:
	.ascii	"fog\000"
	.align	2
.LC11:
	.ascii	"act\000"
	.align	2
.LC12:
	.ascii	"try\000"
	.align	2
.LC13:
	.ascii	"ban\000"
	.align	2
.LC14:
	.ascii	"real\000"
	.align	2
.LC15:
	.ascii	"join\000"
	.align	2
.LC16:
	.ascii	"town\000"
	.align	2
.LC17:
	.ascii	"peck\000"
	.align	2
.LC18:
	.ascii	"wish\000"
	.align	2
.LC19:
	.ascii	"hate\000"
	.align	2
.LC20:
	.ascii	"kind\000"
	.align	2
.LC21:
	.ascii	"rate\000"
	.align	2
.LC22:
	.ascii	"mint\000"
	.align	2
.LC23:
	.ascii	"turn\000"
	.align	2
.LC24:
	.ascii	"rose\000"
	.align	2
.LC25:
	.ascii	"roll\000"
	.align	2
.LC26:
	.ascii	"head\000"
	.align	2
.LC27:
	.ascii	"bite\000"
	.align	2
.LC28:
	.ascii	"angry\000"
	.align	2
.LC29:
	.ascii	"found\000"
	.align	2
.LC30:
	.ascii	"crash\000"
	.align	2
.LC31:
	.ascii	"sable\000"
	.align	2
.LC32:
	.ascii	"smile\000"
	.align	2
.LC33:
	.ascii	"reign\000"
	.align	2
.LC34:
	.ascii	"blade\000"
	.align	2
.LC35:
	.ascii	"goofy\000"
	.align	2
.LC36:
	.ascii	"plain\000"
	.align	2
.LC37:
	.ascii	"rings\000"
	.align	2
.LC38:
	.ascii	"house\000"
	.align	2
.LC39:
	.ascii	"pause\000"
	.align	2
.LC40:
	.ascii	"level\000"
	.align	2
.LC41:
	.ascii	"large\000"
	.align	2
.LC42:
	.ascii	"rigid\000"
	.align	2
.LC43:
	.ascii	"earth\000"
	.align	2
.LC44:
	.ascii	"trust\000"
	.align	2
.LC45:
	.ascii	"itchy\000"
	.align	2
.LC46:
	.ascii	"brass\000"
	.align	2
.LC47:
	.ascii	"curvy\000"
	.align	2
.LC48:
	.ascii	"heady\000"
	.align	2
.LC49:
	.ascii	"witty\000"
	.align	2
.LC50:
	.ascii	"drain\000"
	.align	2
.LC51:
	.ascii	"nippy\000"
	.align	2
.LC52:
	.ascii	"ducks\000"
	.align	2
.LC53:
	.ascii	"spell\000"
	.align	2
.LC54:
	.ascii	"class\000"
	.align	2
.LC55:
	.ascii	"obtain\000"
	.align	2
.LC56:
	.ascii	"plucky\000"
	.align	2
.LC57:
	.ascii	"craven\000"
	.align	2
.LC58:
	.ascii	"double\000"
	.align	2
.LC59:
	.ascii	"sponge\000"
	.align	2
.LC60:
	.ascii	"grubby\000"
	.align	2
.LC61:
	.ascii	"tested\000"
	.align	2
.LC62:
	.ascii	"search\000"
	.align	2
.LC63:
	.ascii	"absent\000"
	.align	2
.LC64:
	.ascii	"friend\000"
	.align	2
.LC65:
	.ascii	"amount\000"
	.align	2
.LC66:
	.ascii	"famous\000"
	.align	2
.LC67:
	.ascii	"sordid\000"
	.align	2
.LC68:
	.ascii	"chilly\000"
	.align	2
.LC69:
	.ascii	"belief\000"
	.align	2
.LC70:
	.ascii	"shrill\000"
	.align	2
.LC71:
	.ascii	"settle\000"
	.align	2
.LC72:
	.ascii	"weather\000"
	.align	2
.LC73:
	.ascii	"stomach\000"
	.align	2
.LC74:
	.ascii	"violent\000"
	.align	2
.LC75:
	.ascii	"contain\000"
	.align	2
.LC76:
	.ascii	"morning\000"
	.align	2
.LC77:
	.ascii	"married\000"
	.align	2
.LC78:
	.ascii	"popcorn\000"
	.align	2
.LC79:
	.ascii	"ancient\000"
	.align	2
.LC80:
	.ascii	"undress\000"
	.align	2
.LC81:
	.ascii	"lacking\000"
	.align	2
.LC82:
	.ascii	"thirsty\000"
	.align	2
.LC83:
	.ascii	"limping\000"
	.align	2
.LC84:
	.ascii	"connect\000"
	.align	2
.LC85:
	.ascii	"unkempt\000"
	.align	2
.LC86:
	.ascii	"precede\000"
	.align	2
.LC87:
	.ascii	"whisper\000"
	.align	2
.LC88:
	.ascii	"careless\000"
	.align	2
.LC89:
	.ascii	"vengeful\000"
	.align	2
.LC90:
	.ascii	"umbrella\000"
	.align	2
.LC91:
	.ascii	"position\000"
	.align	2
.LC92:
	.ascii	"multiply\000"
	.align	2
.LC93:
	.ascii	"cheerful\000"
	.align	2
.LC94:
	.ascii	"heavenly\000"
	.align	2
.LC95:
	.ascii	"gruesome\000"
	.align	2
.LC96:
	.ascii	"religion\000"
	.align	2
.LC97:
	.ascii	"quixotic\000"
	.align	2
.LC98:
	.ascii	"alcoholic\000"
	.align	2
.LC99:
	.ascii	"grandiose\000"
	.align	2
.LC100:
	.ascii	"beautiful\000"
	.align	2
.LC101:
	.ascii	"thinkable\000"
	.align	2
.LC102:
	.ascii	"miniature\000"
	.align	2
.LC103:
	.ascii	"vivacious\000"
	.align	2
.LC104:
	.ascii	"voracious\000"
	.align	2
.LC105:
	.ascii	"connection\000"
	.align	2
.LC106:
	.ascii	"comfortable\000"
	.align	2
.LC107:
	.ascii	"advertisement\000"
	.global	__aeabi_idivmod
	.text
	.align	2
	.global	getWords
	.type	getWords, %function
getWords:
	@ args = 0, pretend = 0, frame = 448
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, lr}
	add	fp, sp, #24		@create new fp to be used
	sub	sp, sp, #452		@reserve space for local vars and copies of params
	str	r0, [fp, #-464]		@copy param size to stack
	str	r1, [fp, #-468]		@copy param numWords to stack
	str	r2, [fp, #-472]		@copy param words to stack
	mov	r3, sp
	mov	r8, r3
	ldr	r0, [fp, #-468]
	sub	r3, r0, #1
	str	r3, [fp, #-48]
	mov	r1, r0
	mov	r2, r1
	mov	r3, #0
	mov	r1, r2, lsr #27
	mov	r7, r3, asl #5
	orr	r7, r1, r7
	mov	r6, r2, asl #5
	mov	r1, r0
	mov	r2, r1
	mov	r3, #0
	mov	r1, r2, lsr #27
	mov	r5, r3, asl #5
	orr	r5, r1, r5
	mov	r4, r2, asl #5
	mov	r3, r0
	mov	r3, r3, asl #2
	add	r3, r3, #7
	add	r3, r3, #7
	mov	r3, r3, lsr #3
	mov	r3, r3, asl #3
	sub	sp, sp, r3
	mov	r3, sp
	add	r3, r3, #7
	mov	r3, r3, lsr #3
	mov	r3, r3, asl #3
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	mov	r3, r0
	mov	r3, r3, asl #2
	mov	r0, r2
	mvn	r1, #0
	mov	r2, r3
	bl	memset
	ldr	r3, .L20		@load the wordList to memory
	str	r3, [fp, #-456]
	ldr	r3, .L20+4
	str	r3, [fp, #-452]
	ldr	r3, .L20+8
	str	r3, [fp, #-448]
	ldr	r3, .L20+12
	str	r3, [fp, #-444]
	ldr	r3, .L20+16
	str	r3, [fp, #-440]
	ldr	r3, .L20+20
	str	r3, [fp, #-436]
	ldr	r3, .L20+24
	str	r3, [fp, #-432]
	ldr	r3, .L20+28
	str	r3, [fp, #-428]
	ldr	r3, .L20+32
	str	r3, [fp, #-424]
	ldr	r3, .L20+36
	str	r3, [fp, #-420]
	ldr	r3, .L20+40
	str	r3, [fp, #-416]
	ldr	r3, .L20+44
	str	r3, [fp, #-412]
	ldr	r3, .L20+48
	str	r3, [fp, #-408]
	ldr	r3, .L20+52
	str	r3, [fp, #-404]
	ldr	r3, .L20+56
	str	r3, [fp, #-400]
	ldr	r3, .L20+60
	str	r3, [fp, #-396]
	ldr	r3, .L20+64
	str	r3, [fp, #-392]
	ldr	r3, .L20+68
	str	r3, [fp, #-388]
	ldr	r3, .L20+72
	str	r3, [fp, #-384]
	ldr	r3, .L20+76
	str	r3, [fp, #-380]
	ldr	r3, .L20+80
	str	r3, [fp, #-376]
	ldr	r3, .L20+84
	str	r3, [fp, #-372]
	ldr	r3, .L20+88
	str	r3, [fp, #-368]
	ldr	r3, .L20+92
	str	r3, [fp, #-364]
	ldr	r3, .L20+96
	str	r3, [fp, #-360]
	ldr	r3, .L20+100
	str	r3, [fp, #-356]
	ldr	r3, .L20+104
	str	r3, [fp, #-352]
	ldr	r3, .L20+108
	str	r3, [fp, #-348]
	ldr	r3, .L20+112
	str	r3, [fp, #-344]
	ldr	r3, .L20+116
	str	r3, [fp, #-340]
	ldr	r3, .L20+120
	str	r3, [fp, #-336]
	ldr	r3, .L20+124
	str	r3, [fp, #-332]
	ldr	r3, .L20+128
	str	r3, [fp, #-328]
	ldr	r3, .L20+132
	str	r3, [fp, #-324]
	ldr	r3, .L20+136
	str	r3, [fp, #-320]
	ldr	r3, .L20+140
	str	r3, [fp, #-316]
	ldr	r3, .L20+144
	str	r3, [fp, #-312]
	ldr	r3, .L20+148
	str	r3, [fp, #-308]
	ldr	r3, .L20+152
	str	r3, [fp, #-304]
	ldr	r3, .L20+156
	str	r3, [fp, #-300]
	ldr	r3, .L20+160
	str	r3, [fp, #-296]
	ldr	r3, .L20+164
	str	r3, [fp, #-292]
	ldr	r3, .L20+168
	str	r3, [fp, #-288]
	ldr	r3, .L20+172
	str	r3, [fp, #-284]
	ldr	r3, .L20+176
	str	r3, [fp, #-280]
	ldr	r3, .L20+180
	str	r3, [fp, #-276]
	ldr	r3, .L20+184
	str	r3, [fp, #-272]
	ldr	r3, .L20+188
	str	r3, [fp, #-268]
	ldr	r3, .L20+192
	str	r3, [fp, #-264]
	ldr	r3, .L20+196
	str	r3, [fp, #-260]
	ldr	r3, .L20+200
	str	r3, [fp, #-256]
	ldr	r3, .L20+204
	str	r3, [fp, #-252]
	ldr	r3, .L20+208
	str	r3, [fp, #-248]
	ldr	r3, .L20+212
	str	r3, [fp, #-244]
	ldr	r3, .L20+216
	str	r3, [fp, #-240]
	ldr	r3, .L20+220
	str	r3, [fp, #-236]
	ldr	r3, .L20+224
	str	r3, [fp, #-232]
	ldr	r3, .L20+228
	str	r3, [fp, #-228]
	ldr	r3, .L20+232
	str	r3, [fp, #-224]
	ldr	r3, .L20+236
	str	r3, [fp, #-220]
	ldr	r3, .L20+240
	str	r3, [fp, #-216]
	ldr	r3, .L20+244
	str	r3, [fp, #-212]
	ldr	r3, .L20+248
	str	r3, [fp, #-208]
	ldr	r3, .L20+252
	str	r3, [fp, #-204]
	ldr	r3, .L20+256
	str	r3, [fp, #-200]
	ldr	r3, .L20+260
	str	r3, [fp, #-196]
	ldr	r3, .L20+264
	str	r3, [fp, #-192]
	ldr	r3, .L20+268
	str	r3, [fp, #-188]
	ldr	r3, .L20+272
	str	r3, [fp, #-184]
	ldr	r3, .L20+276
	str	r3, [fp, #-180]
	ldr	r3, .L20+280
	str	r3, [fp, #-176]
	ldr	r3, .L20+284
	str	r3, [fp, #-172]
	ldr	r3, .L20+288
	str	r3, [fp, #-168]
	ldr	r3, .L20+292
	str	r3, [fp, #-164]
	ldr	r3, .L20+296
	str	r3, [fp, #-160]
	ldr	r3, .L20+300
	str	r3, [fp, #-156]
	ldr	r3, .L20+304
	str	r3, [fp, #-152]
	ldr	r3, .L20+308
	str	r3, [fp, #-148]
	ldr	r3, .L20+312
	str	r3, [fp, #-144]
	ldr	r3, .L20+316
	str	r3, [fp, #-140]
	ldr	r3, .L20+320
	str	r3, [fp, #-136]
	ldr	r3, .L20+324
	str	r3, [fp, #-132]
	ldr	r3, .L20+328
	str	r3, [fp, #-128]
	ldr	r3, .L20+332
	str	r3, [fp, #-124]
	ldr	r3, .L20+336
	str	r3, [fp, #-120]
	ldr	r3, .L20+340
	str	r3, [fp, #-116]
	ldr	r3, .L20+344
	str	r3, [fp, #-112]
	ldr	r3, .L20+348
	str	r3, [fp, #-108]
	ldr	r3, .L20+352
	str	r3, [fp, #-104]
	ldr	r3, .L20+356
	str	r3, [fp, #-100]
	ldr	r3, .L20+360
	str	r3, [fp, #-96]
	ldr	r3, .L20+364
	str	r3, [fp, #-92]
	ldr	r3, .L20+368
	str	r3, [fp, #-88]
	ldr	r3, .L20+372
	str	r3, [fp, #-84]
	ldr	r3, .L20+376
	str	r3, [fp, #-80]
	ldr	r3, .L20+380
	str	r3, [fp, #-76]
	ldr	r3, .L20+384
	str	r3, [fp, #-72]
	ldr	r3, .L20+388
	str	r3, [fp, #-68]
	ldr	r3, .L20+392
	str	r3, [fp, #-64]
	ldr	r3, .L20+396
	str	r3, [fp, #-60]
	mov	r3, #99
	str	r3, [fp, #-32]
	b	.L13			@goes to L13 start the main loop
.L14:					@after check the StrLen>size go to the next word
	ldr	r3, [fp, #-32]		@load the word on check
	sub	r3, r3, #1		@change the check word to the next
	str	r3, [fp, #-32]
.L13:					@the part check the strLen with the size
	ldr	r2, [fp, #-32]
	ldr	r3, .L20+400		@start with the first word
	mov	r2, r2, asl #2		@load the next word
	sub	r0, fp, #28
	add	r2, r0, r2
	add	r3, r2, r3
	ldr	r3, [r3, #0]		@load the word on check
	mov	r0, r3
	bl	strlen			@get strLen of the words
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-464]		@load the strLen
	cmp	r2, r3			@load the size
	bhi	.L14			@compare the strLen with the size
	mov	r3, #0
	str	r3, [fp, #-36]
	b	.L15
.L19:					@after L15 go into the for loop, random a number in range or after L16 indexOK == 0
	mov	r3, #1
	str	r3, [fp, #-40]
	bl	rand			@random a number
	mov	r3, r0
	mov	r0, r3			@load the random number
	ldr	r1, [fp, #-32]		@load the lengthIndex
	bl	__aeabi_idivmod		@random % lengthIndex
	mov	r3, r1
	str	r3, [fp, #-56]		@store randIndex
	mov	r3, #0
	str	r3, [fp, #-44]		@store j for L16
	b	.L16
.L18:					@after L16 if j > numWords
	ldr	r3, [fp, #-52]
	ldr	r2, [fp, #-44]
	ldr	r2, [r3, r2, asl #2]	@load usedWords[j]
	ldr	r3, [fp, #-56]		@load randIndex
	cmp	r2, r3			@compare randIndex and usedWords[j]
	bne	.L17
	mov	r3, #0			@set indexOK to 0
	str	r3, [fp, #-40]
.L17:					@after L18 randIndex != usedWords[j]
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]		@j++
.L16:					@after the L8 do part check if the word is ok
	ldr	r2, [fp, #-44]		@load j
	ldr	r3, [fp, #-468]		@load randIndex
	cmp	r2, r3			@compare j and numWords
	blt	.L18
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-472]
	add	r3, r2, r3		@get the random number on index
	ldr	r2, [r3, #0]
	ldr	r1, [fp, #-56]		@load w[randIndex]
	ldr	r3, .L20+400		@get the wordList
	mov	r1, r1, asl #2
	sub	r0, fp, #28
	add	r1, r0, r1
	add	r3, r1, r3		@get i
	ldr	r3, [r3, #0]		@load words[i]
	mov	r0, r2
	mov	r1, r3
	bl	strcpy			@strcpy(words[i], w[randIndex])
	ldr	r3, [fp, #-52]
	ldr	r2, [fp, #-36]
	ldr	r1, [fp, #-56]
	str	r1, [r3, r2, asl #2]
	ldr	r3, [fp, #-40]
	cmp	r3, #0			@indexOK and 0(true)
	beq	.L19
	ldr	r3, [fp, #-36]
	add	r3, r3, #1
	str	r3, [fp, #-36]		@i ++
.L15:					@after the L13 check the strLen fit the size
	ldr	r2, [fp, #-36]		@load i
	ldr	r3, [fp, #-468]		@load numWords
	cmp	r2, r3			@compare the i and the numWords
	blt	.L19
	mov	sp, r8
	sub	sp, fp, #24		@end of the main loop
	ldmfd	sp!, {r4, r5, r6, r7, r8, fp, pc}
.L21:
	.align	2
.L20:
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.word	.LC24
	.word	.LC25
	.word	.LC26
	.word	.LC27
	.word	.LC28
	.word	.LC29
	.word	.LC30
	.word	.LC31
	.word	.LC32
	.word	.LC33
	.word	.LC34
	.word	.LC35
	.word	.LC36
	.word	.LC37
	.word	.LC38
	.word	.LC39
	.word	.LC40
	.word	.LC41
	.word	.LC42
	.word	.LC43
	.word	.LC44
	.word	.LC45
	.word	.LC46
	.word	.LC47
	.word	.LC48
	.word	.LC49
	.word	.LC50
	.word	.LC51
	.word	.LC52
	.word	.LC53
	.word	.LC54
	.word	.LC55
	.word	.LC56
	.word	.LC57
	.word	.LC58
	.word	.LC59
	.word	.LC60
	.word	.LC61
	.word	.LC62
	.word	.LC63
	.word	.LC64
	.word	.LC65
	.word	.LC66
	.word	.LC67
	.word	.LC68
	.word	.LC69
	.word	.LC70
	.word	.LC71
	.word	.LC72
	.word	.LC73
	.word	.LC74
	.word	.LC75
	.word	.LC76
	.word	.LC77
	.word	.LC78
	.word	.LC79
	.word	.LC80
	.word	.LC81
	.word	.LC82
	.word	.LC83
	.word	.LC84
	.word	.LC85
	.word	.LC86
	.word	.LC87
	.word	.LC88
	.word	.LC89
	.word	.LC90
	.word	.LC91
	.word	.LC92
	.word	.LC93
	.word	.LC94
	.word	.LC95
	.word	.LC96
	.word	.LC97
	.word	.LC98
	.word	.LC99
	.word	.LC100
	.word	.LC101
	.word	.LC102
	.word	.LC103
	.word	.LC104
	.word	.LC105
	.word	.LC106
	.word	.LC107
	.word	-428
	.size	getWords, .-getWords
	.section	.rodata
	.align	2
.LC108:
	.ascii	"Enter a matrix size between 10-20: \000"
	.align	2
.LC109:
	.ascii	"%d\000"
	.align	2
.LC110:
	.ascii	"Incorrect input, exiting...\000"
	.align	2
.LC111:
	.ascii	"Input error, please try again: \000"
	.align	2
.LC112:
	.ascii	"%d\012\000"
	.text
	.align	2
	.global	getSize
	.type	getSize, %function
getSize:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	mov	r3, #0
	str	r3, [fp, #-12]		
	ldr	r3, .L27
	mov	r0, r3	
	bl	printf
	ldr	r2, .L27+4
	sub	r3, fp, #12
	mov	r0, r2
	mov	r1, r3
	bl	__isoc99_scanf
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #1
	beq	.L26
	ldr	r0, .L27+8
	bl	puts
	mov	r0, #1
	bl	exit
.L25:
	ldr	r3, .L27+12
	mov	r0, r3
	bl	printf
	ldr	r2, .L27+16
	sub	r3, fp, #12
	mov	r0, r2
	mov	r1, r3
	bl	__isoc99_scanf
	str	r0, [fp, #-8]
	b	.L24
.L26:
	mov	r0, r0	@ nop
.L24:
	ldr	r3, [fp, #-12]
	cmp	r3, #9
	ble	.L25
	ldr	r3, [fp, #-12]
	cmp	r3, #20
	bgt	.L25
	ldr	r3, [fp, #-12]
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L28:
	.align	2
.L27:
	.word	.LC108
	.word	.LC109
	.word	.LC110
	.word	.LC111
	.word	.LC112
	.size	getSize, .-getSize
	.section	.rodata
	.align	2
.LC113:
	.ascii	"Enter the number of words you wish to search for be"
	.ascii	"tween %d and %d: \000"
	.align	2
.LC114:
	.ascii	"Incorrect input, exiting\342\200\246\000"
	.align	2
.LC115:
	.ascii	"Input error (number not in range), please try again"
	.ascii	": \000"
	.text
	.align	2
	.global	getNumWords
	.type	getNumWords, %function
getNumWords:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, .L34
	mov	r0, r3
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-20]
	bl	printf
	ldr	r2, .L34+4
	sub	r3, fp, #12
	mov	r0, r2
	mov	r1, r3
	bl	__isoc99_scanf
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #1
	beq	.L33
	ldr	r0, .L34+8
	bl	puts
	mov	r0, #1
	bl	exit
.L32:
	ldr	r3, .L34+12
	mov	r0, r3
	bl	printf
	ldr	r2, .L34+4
	sub	r3, fp, #12
	mov	r0, r2
	mov	r1, r3
	bl	__isoc99_scanf
	str	r0, [fp, #-8]
	b	.L31
.L33:
	mov	r0, r0	@ nop
.L31:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	blt	.L32
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bgt	.L32
	ldr	r3, [fp, #-12]
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L35:
	.align	2
.L34:
	.word	.LC113
	.word	.LC109
	.word	.LC114
	.word	.LC115
	.size	getNumWords, .-getNumWords
	.section	.rodata
	.align	2
.LC116:
	.ascii	"\012   \000"
	.align	2
.LC117:
	.ascii	"%2d  \000"
	.align	2
.LC118:
	.ascii	"%2d| \000"
	.align	2
.LC119:
	.ascii	"%c   \000"
	.text
	.align	2
	.global	printGrid
	.type	printGrid, %function
printGrid:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, fp, lr}
	add	fp, sp, #16
	sub	sp, sp, #28
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	ldr	r3, [fp, #-40]
	add	r6, r3, #1
	sub	r3, r6, #1
	str	r3, [fp, #-32]
	mov	r1, r6
	mov	r2, r1
	mov	r3, #0
	mov	r1, r2, lsr #29
	mov	r5, r3, asl #3
	orr	r5, r1, r5
	mov	r4, r2, asl #3
	ldr	r3, .L43
	mov	r0, r3
	bl	printf
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L37
.L38:
	ldr	r2, .L43+4
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	mov	r0, r2
	mov	r1, r3
	bl	printf
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L37:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	blt	.L38
	mov	r0, #10
	bl	putchar
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L39
.L42:
	ldr	r2, .L43+8
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	mov	r0, r2
	mov	r1, r3
	bl	printf
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L40
.L41:
	ldr	r2, .L43+12
	mov	r3, r6
	ldr	r1, [fp, #-24]
	mul	r3, r1, r3
	ldr	r1, [fp, #-44]
	add	r1, r1, r3
	ldr	r3, [fp, #-28]
	add	r3, r1, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r0, r2
	mov	r1, r3
	bl	printf
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L40:
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	blt	.L41
	mov	r0, #10
	bl	putchar
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L39:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	blt	.L42
	sub	sp, fp, #16
	ldmfd	sp!, {r4, r5, r6, fp, pc}
.L44:
	.align	2
.L43:
	.word	.LC116
	.word	.LC117
	.word	.LC118
	.word	.LC119
	.size	printGrid, .-printGrid
	.section	.rodata
	.align	2
.LC120:
	.ascii	"\012WORD KEY:\000"
	.align	2
.LC121:
	.ascii	"%d) %s, \000"
	.align	2
.LC122:
	.ascii	"%d) %s\012\012\000"
	.text
	.align	2
	.global	printKey
	.type	printKey, %function
printKey:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r0, .L48
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L46
.L47:
	ldr	r1, .L48+4
	ldr	r3, [fp, #-8]
	add	r2, r3, #1
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #2
	ldr	r0, [fp, #-24]
	add	r3, r0, r3
	ldr	r3, [r3, #0]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	printf
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L46:
	ldr	r3, [fp, #-16]
	sub	r2, r3, #1
	ldr	r3, [fp, #-8]
	cmp	r2, r3
	bgt	.L47
	ldr	r1, .L48+8
	ldr	r3, [fp, #-8]
	add	r2, r3, #1
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	mov	r3, r3, asl #2
	ldr	r0, [fp, #-24]
	add	r3, r0, r3
	ldr	r3, [r3, #0]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	printf
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L49:
	.align	2
.L48:
	.word	.LC120
	.word	.LC121
	.word	.LC122
	.size	printKey, .-printKey
	.section	.rodata
	.align	2
.LC123:
	.ascii	"Please enter the word number you want to check (0 t"
	.ascii	"o exit): \000"
	.align	2
.LC124:
	.ascii	"You have already found that word, please try again:"
	.ascii	" \000"
	.text
	.align	2
	.global	checkWordsRemain
	.type	checkWordsRemain, %function
checkWordsRemain:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-16]
	ldr	r3, .L55
	mov	r0, r3
	bl	printf
	ldr	r2, .L55+4
	sub	r3, fp, #16
	mov	r0, r2
	mov	r1, r3
	bl	__isoc99_scanf
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L51
	mov	r0, #0
	bl	exit
.L51:
	ldr	r3, [fp, #-12]
	cmp	r3, #1
	beq	.L52
	ldr	r0, .L55+8
	bl	puts
	mov	r0, #1
	bl	exit
.L52:
	ldr	r3, [fp, #-16]
	sub	r2, r3, #1
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	ldr	r3, [r3, #8]
	str	r3, [fp, #-8]
	b	.L53
.L54:
	ldr	r3, .L55+12
	mov	r0, r3
	bl	printf
	ldr	r2, .L55+4
	sub	r3, fp, #16
	mov	r0, r2
	mov	r1, r3
	bl	__isoc99_scanf
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-16]
	sub	r2, r3, #1
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	ldr	r3, [r3, #8]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	cmp	r3, #1
	beq	.L53
	ldr	r0, .L55+8
	bl	puts
	mov	r0, #1
	bl	exit
.L53:
	ldr	r3, [fp, #-8]
	cmp	r3, #1
	beq	.L54
	ldr	r3, [fp, #-16]
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L56:
	.align	2
.L55:
	.word	.LC123
	.word	.LC109
	.word	.LC110
	.word	.LC124
	.size	checkWordsRemain, .-checkWordsRemain
	.section	.rodata
	.align	2
.LC125:
	.ascii	"YOU WON! Thanks for playing!\000"
	.text
	.align	2
	.global	checkFinished
	.type	checkFinished, %function
checkFinished:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	mov	r3, #1
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L58
.L60:
	ldr	r2, [fp, #-12]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L59
	mov	r3, #0
	str	r3, [fp, #-8]
.L59:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L58:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	blt	.L60
	ldr	r3, [fp, #-8]
	cmp	r3, #1
	bne	.L61
	ldr	r0, .L62
	bl	puts
.L61:
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L63:
	.align	2
.L62:
	.word	.LC125
	.size	checkFinished, .-checkFinished
	.section	.rodata
	.align	2
.LC126:
	.ascii	"What row do you think '%s' appears in: \000"
	.align	2
.LC127:
	.ascii	"The number you have entered is out of bounds, pleas"
	.ascii	"e enter a number between 1 and %d: \000"
	.align	2
.LC128:
	.ascii	"Sorry that wasn't correct\000"
	.align	2
.LC129:
	.ascii	"CORRECT! Now what column do you think the first let"
	.ascii	"ter of '%s' appears in: \000"
	.align	2
.LC130:
	.ascii	"CORRECT!\000"
	.align	2
.LC131:
	.ascii	"Your current score is %d\012\000"
	.text
	.align	2
	.global	playGame
	.type	playGame, %function
playGame:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #48
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	str	r2, [fp, #-48]
	str	r3, [fp, #-52]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L65
.L75:
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-32]
	ldr	r0, [fp, #-40]
	ldr	r1, [fp, #-48]
	bl	checkWordsRemain
	str	r0, [fp, #-16]
	ldr	r2, .L76
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	mov	r3, r3, asl #2
	ldr	r1, [fp, #-52]
	add	r3, r1, r3
	ldr	r3, [r3, #0]
	mov	r0, r2
	mov	r1, r3
	bl	printf
	ldr	r2, .L76+4
	sub	r3, fp, #28
	mov	r0, r2
	mov	r1, r3
	bl	__isoc99_scanf
	str	r0, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #1
	beq	.L66
	ldr	r0, .L76+8
	bl	puts
	mov	r0, #1
	bl	exit
.L66:
	ldr	r3, [fp, #-16]
	sub	r2, r3, #1
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-48]
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	str	r3, [fp, #-24]
	b	.L67
.L68:
	ldr	r3, .L76+12
	mov	r0, r3
	ldr	r1, [fp, #-44]
	bl	printf
	ldr	r2, .L76+4
	sub	r3, fp, #28
	mov	r0, r2
	mov	r1, r3
	bl	__isoc99_scanf
	str	r0, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #1
	beq	.L67
	ldr	r0, .L76+8
	bl	puts
	mov	r0, #1
	bl	exit
.L67:
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	ble	.L68
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bgt	.L68
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	cmp	r2, r3
	beq	.L69
	ldr	r0, .L76+16
	bl	puts
	ldr	r3, [fp, #-12]
	sub	r3, r3, #3
	str	r3, [fp, #-12]
	b	.L65
.L69:
	ldr	r2, .L76+20
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	mov	r3, r3, asl #2
	ldr	r1, [fp, #-52]
	add	r3, r1, r3
	ldr	r3, [r3, #0]
	mov	r0, r2
	mov	r1, r3
	bl	printf
	ldr	r2, .L76+4
	sub	r3, fp, #32
	mov	r0, r2
	mov	r1, r3
	bl	__isoc99_scanf
	str	r0, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #1
	beq	.L70
	ldr	r0, .L76+8
	bl	puts
	mov	r0, #1
	bl	exit
.L70:
	ldr	r3, [fp, #-16]
	sub	r2, r3, #1
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-48]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	str	r3, [fp, #-24]
	b	.L71
.L72:
	ldr	r3, .L76+12
	mov	r0, r3
	ldr	r1, [fp, #-44]
	bl	printf
	ldr	r2, .L76+4
	sub	r3, fp, #32
	mov	r0, r2
	mov	r1, r3
	bl	__isoc99_scanf
	str	r0, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #1
	beq	.L71
	ldr	r0, .L76+8
	bl	puts
	mov	r0, #1
	bl	exit
.L71:
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	ble	.L72
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bgt	.L72
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-24]
	cmp	r2, r3
	beq	.L73
	ldr	r0, .L76+16
	bl	puts
	ldr	r3, [fp, #-12]
	sub	r3, r3, #3
	str	r3, [fp, #-12]
	b	.L74
.L73:
	ldr	r0, .L76+24
	bl	puts
	ldr	r3, [fp, #-16]
	sub	r2, r3, #1
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-48]
	add	r3, r2, r3
	mov	r2, #1
	str	r2, [r3, #8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #5
	str	r3, [fp, #-12]
.L74:
	ldr	r0, [fp, #-40]
	ldr	r1, [fp, #-48]
	bl	checkFinished
	str	r0, [fp, #-8]
	ldr	r3, .L76+28
	mov	r0, r3
	ldr	r1, [fp, #-12]
	bl	printf
.L65:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L75
	ldr	r3, [fp, #-12]
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L77:
	.align	2
.L76:
	.word	.LC126
	.word	.LC109
	.word	.LC110
	.word	.LC127
	.word	.LC128
	.word	.LC129
	.word	.LC130
	.word	.LC131
	.size	playGame, .-playGame
	.align	2
	.global	reverseString
	.type	reverseString, %function
reverseString:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, fp}
	add	fp, sp, #16
	sub	sp, sp, #28
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	mov	r3, sp
	mov	ip, r3
	ldr	r0, [fp, #-40]
	sub	r3, r0, #1
	str	r3, [fp, #-28]
	mov	r1, r0
	mov	r2, r1
	mov	r3, #0
	mov	r1, r2, lsr #29
	mov	r7, r3, asl #3
	orr	r7, r1, r7
	mov	r6, r2, asl #3
	mov	r1, r0
	mov	r2, r1
	mov	r3, #0
	mov	r1, r2, lsr #29
	mov	r5, r3, asl #3
	orr	r5, r1, r5
	mov	r4, r2, asl #3
	mov	r3, r0
	add	r3, r3, #7
	add	r3, r3, #7
	mov	r3, r3, lsr #3
	mov	r3, r3, asl #3
	sub	sp, sp, r3
	mov	r3, sp
	add	r3, r3, #7
	mov	r3, r3, lsr #3
	mov	r3, r3, asl #3
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L79
.L80:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #0
	strb	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L79:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	blt	.L80
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L81
.L82:
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-24]
	rsb	r3, r3, r2
	sub	r3, r3, #2
	ldr	r2, [fp, #-44]
	add	r3, r2, r3
	ldrb	r2, [r3, #0]	@ zero_extendqisi2
	ldr	r1, [fp, #-32]
	ldr	r3, [fp, #-24]
	add	r3, r1, r3
	strb	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L81:
	ldr	r3, [fp, #-40]
	sub	r2, r3, #1
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	bgt	.L82
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-44]
	mov	sp, ip
	mov	r0, r3
	sub	sp, fp, #16
	ldmfd	sp!, {r4, r5, r6, r7, fp}
	bx	lr
	.size	reverseString, .-reverseString
	.global	__aeabi_idiv
	.align	2
	.global	createMatrix
	.type	createMatrix, %function
createMatrix:
	@ args = 4, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, fp, lr}
	add	fp, sp, #28
	sub	sp, sp, #64
	str	r0, [fp, #-72]
	str	r1, [fp, #-76]
	str	r2, [fp, #-80]
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-72]
	add	r6, r3, #1
	sub	r3, r6, #1
	str	r3, [fp, #-44]
	mov	r1, r6
	mov	r2, r1
	mov	r3, #0
	mov	r1, r2, lsr #29
	mov	r5, r3, asl #3
	orr	r5, r1, r5
	mov	r4, r2, asl #3
	mov	r3, sp
	mov	r7, r3
	ldr	r0, [fp, #-72]
	sub	r3, r0, #1
	str	r3, [fp, #-48]
	mov	r1, r0
	mov	r2, r1
	mov	r3, #0
	mov	r1, r2, lsr #27
	mov	ip, r3, asl #5
	str	ip, [fp, #-88]
	ldr	ip, [fp, #-88]
	orr	ip, r1, ip
	str	ip, [fp, #-88]
	mov	r1, r2, asl #5
	mov	r1, r0
	mov	r2, r1
	mov	r3, #0
	mov	r1, r2, lsr #27
	mov	r9, r3, asl #5
	orr	r9, r1, r9
	mov	r8, r2, asl #5
	mov	r3, r0
	mov	r3, r3, asl #2
	add	r3, r3, #7
	add	r3, r3, #7
	mov	r3, r3, lsr #3
	mov	r3, r3, asl #3
	sub	sp, sp, r3
	mov	r3, sp
	add	r3, r3, #7
	mov	r3, r3, lsr #3
	mov	r3, r3, asl #3
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	mov	r3, r0
	mov	r3, r3, asl #2
	mov	r0, r2
	mov	r1, #0
	mov	r2, r3
	bl	memset
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L84
.L85:
	ldr	r0, [fp, #-32]
	ldr	r1, [fp, #-72]
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r2, r6
	mul	r3, r2, r3
	ldr	r2, [fp, #4]
	add	r4, r2, r3
	ldr	r3, [fp, #-32]
	mov	r0, r3
	ldr	r1, [fp, #-72]
	bl	__aeabi_idivmod
	mov	r3, r1
	mov	r2, #48
	strb	r2, [r4, r3]
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L84:
	ldr	r3, [fp, #-72]
	ldr	r2, [fp, #-72]
	mul	r2, r2, r3
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	bgt	.L85
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L86
.L89:
	mov	r3, #0
	str	r3, [fp, #-36]
	b	.L87
.L88:
	ldr	r2, [fp, #-32]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-84]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	mov	r1, #0
	str	r1, [r3, r2, asl #2]
	ldr	r3, [fp, #-36]
	add	r3, r3, #1
	str	r3, [fp, #-36]
.L87:
	ldr	r3, [fp, #-36]
	cmp	r3, #2
	ble	.L88
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L86:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-76]
	cmp	r2, r3
	blt	.L89
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L90
.L91:
	mov	r3, r6
	ldr	r2, [fp, #-32]
	mul	r3, r2, r3
	ldr	r2, [fp, #4]
	add	r2, r2, r3
	ldr	r3, [fp, #-72]
	add	r3, r2, r3
	mov	r2, #0
	strb	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L90:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	blt	.L91
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L92
.L99:
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-80]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	strlen
	mov	r3, r0
	str	r3, [fp, #-56]
	bl	rand
	mov	r2, r0
	mov	r3, r2, asr #31
	mov	r3, r3, lsr #31
	add	r2, r2, r3
	and	r2, r2, #1
	rsb	r3, r3, r2
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-60]
	cmp	r3, #1
	bne	.L93
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-80]
	add	r3, r2, r3
	ldr	r4, [r3, #0]
	ldr	r3, [fp, #-56]
	add	r2, r3, #1
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #2
	ldr	r1, [fp, #-80]
	add	r3, r1, r3
	ldr	r3, [r3, #0]
	mov	r0, r2
	mov	r1, r3
	bl	reverseString
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-56]
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
	bl	strncpy
.L93:
	bl	rand
	mov	r2, r0
	ldr	r1, [fp, #-72]
	ldr	r3, [fp, #-56]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idivmod
	mov	r3, r1
	str	r3, [fp, #-64]
	bl	rand
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [fp, #-72]
	bl	__aeabi_idivmod
	mov	r3, r1
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-52]
	ldr	r2, [fp, #-40]
	ldr	r3, [r3, r2, asl #2]
	cmp	r3, #0
	bne	.L103
	mov	r3, r6
	ldr	r2, [fp, #-40]
	mul	r2, r2, r3
	ldr	r3, [fp, #-64]
	add	r3, r2, r3
	ldr	r2, [fp, #4]
	add	r1, r2, r3
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-80]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	mov	r2, r3
	ldr	r3, [fp, #-56]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	strncpy
	ldr	r3, [fp, #-52]
	ldr	r2, [fp, #-40]
	mov	r1, #1
	str	r1, [r3, r2, asl #2]
	b	.L95
.L97:
	bl	rand
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [fp, #-72]
	bl	__aeabi_idivmod
	mov	r3, r1
	str	r3, [fp, #-40]
	b	.L96
.L103:
	mov	r0, r0	@ nop
.L96:
	ldr	r3, [fp, #-52]
	ldr	r2, [fp, #-40]
	ldr	r3, [r3, r2, asl #2]
	cmp	r3, #1
	beq	.L97
	ldr	r3, [fp, #-52]
	ldr	r2, [fp, #-40]
	mov	r1, #1
	str	r1, [r3, r2, asl #2]
.L95:
	mov	r3, r6
	ldr	r2, [fp, #-40]
	mul	r2, r2, r3
	ldr	r3, [fp, #-64]
	add	r3, r2, r3
	ldr	r2, [fp, #4]
	add	r1, r2, r3
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-80]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	mov	r2, r3
	ldr	r3, [fp, #-56]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	strncpy
	ldr	r3, [fp, #-60]
	cmp	r3, #1
	bne	.L98
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-80]
	add	r3, r2, r3
	ldr	r4, [r3, #0]
	ldr	r3, [fp, #-56]
	add	r2, r3, #1
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #2
	ldr	r1, [fp, #-80]
	add	r3, r1, r3
	ldr	r3, [r3, #0]
	mov	r0, r2
	mov	r1, r3
	bl	reverseString
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-56]
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
	bl	strncpy
.L98:
	ldr	r2, [fp, #-32]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-84]
	add	r3, r2, r3
	ldr	r2, [fp, #-64]
	add	r2, r2, #1
	str	r2, [r3, #0]
	ldr	r2, [fp, #-32]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-84]
	add	r3, r2, r3
	ldr	r2, [fp, #-40]
	add	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L92:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-76]
	cmp	r2, r3
	blt	.L99
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L100
.L102:
	ldr	r0, [fp, #-32]
	ldr	r1, [fp, #-72]
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r2, r6
	mul	r3, r2, r3
	ldr	r2, [fp, #4]
	add	r4, r2, r3
	ldr	r3, [fp, #-32]
	mov	r0, r3
	ldr	r1, [fp, #-72]
	bl	__aeabi_idivmod
	mov	r3, r1
	ldrb	r3, [r4, r3]	@ zero_extendqisi2
	cmp	r3, #48
	bne	.L101
	ldr	r0, [fp, #-32]
	ldr	r1, [fp, #-72]
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r2, r6
	mul	r3, r2, r3
	ldr	r2, [fp, #4]
	add	r5, r2, r3
	ldr	r3, [fp, #-32]
	mov	r0, r3
	ldr	r1, [fp, #-72]
	bl	__aeabi_idivmod
	mov	r3, r1
	mov	r4, r3
	bl	rand
	mov	r1, r0
	ldr	r3, .L104
	smull	r2, r3, r3, r1
	mov	r2, r3, asr #3
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r2, r3, asl #2
	add	r3, r3, r2
	rsb	r2, r3, r1
	uxtb	r3, r2
	add	r3, r3, #97
	uxtb	r3, r3
	strb	r3, [r5, r4]
.L101:
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L100:
	ldr	r3, [fp, #-72]
	ldr	r2, [fp, #-72]
	mul	r2, r2, r3
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	bgt	.L102
	mov	sp, r7
	sub	sp, fp, #28
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, fp, pc}
.L105:
	.align	2
.L104:
	.word	1374389535
	.size	createMatrix, .-createMatrix
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	add	fp, sp, #32
	sub	sp, sp, #92
	mov	r3, #1
	str	r3, [fp, #-40]
	b	.L107
.L110:
	mov	r3, sp
	mov	sl, r3
	bl	getSize
	str	r0, [fp, #-48]
	ldr	r2, [fp, #-48]
	mov	r3, r2, lsr #31
	add	r3, r3, r2
	mov	r3, r3, asr #1
	mov	r0, r3
	ldr	r1, [fp, #-48]
	bl	getNumWords
	str	r0, [fp, #-52]
	mov	r0, #0
	bl	time
	mov	r3, r0
	mov	r0, r3
	bl	srand
	ldr	r0, [fp, #-52]
	sub	r3, r0, #1
	str	r3, [fp, #-56]
	mov	r1, r0
	mov	r2, r1
	mov	r3, #0
	mov	r1, r2, lsr #27
	mov	ip, r3, asl #5
	str	ip, [fp, #-88]
	ldr	ip, [fp, #-88]
	orr	ip, r1, ip
	str	ip, [fp, #-88]
	mov	r1, r2, asl #5
	str	r1, [fp, #-92]
	mov	r1, r0
	mov	r2, r1
	mov	r3, #0
	mov	r1, r2, lsr #27
	mov	r9, r3, asl #5
	orr	r9, r1, r9
	mov	r8, r2, asl #5
	mov	r3, r0
	mov	r3, r3, asl #2
	add	r3, r3, #7
	add	r3, r3, #7
	mov	r3, r3, lsr #3
	mov	r3, r3, asl #3
	sub	sp, sp, r3
	add	r3, sp, #8
	add	r3, r3, #7
	mov	r3, r3, lsr #3
	mov	r3, r3, asl #3
	str	r3, [fp, #-60]
	mov	r3, #0
	str	r3, [fp, #-44]
	b	.L108
.L109:
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	mov	r1, r3
	ldr	r3, [fp, #-60]
	ldr	r2, [fp, #-44]
	str	r1, [r3, r2, asl #2]
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L108:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	cmp	r2, r3
	blt	.L109
	ldr	r3, [fp, #-60]
	ldr	r0, [fp, #-48]
	ldr	r1, [fp, #-52]
	mov	r2, r3
	bl	getWords
	ldr	lr, [fp, #-52]
	mov	r3, sp
	mov	r7, r3
	sub	r3, lr, #1
	str	r3, [fp, #-64]
	mov	r3, lr
	mov	r0, r3
	mov	r1, #0
	mov	r3, #96
	mul	r2, r3, r1
	mov	r3, #0
	mul	r3, r3, r0
	add	ip, r2, r3
	mov	r3, #96
	umull	r2, r3, r0, r3
	add	r1, ip, r3
	mov	r3, r1
	mov	r2, lr
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r3, lr
	mov	r0, r3
	mov	r1, #0
	mov	r3, #96
	mul	r2, r3, r1
	mov	r3, #0
	mul	r3, r3, r0
	add	ip, r2, r3
	mov	r3, #96
	umull	r2, r3, r0, r3
	add	r1, ip, r3
	mov	r3, r1
	mov	r2, lr
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, #7
	add	r3, r3, #7
	mov	r3, r3, lsr #3
	mov	r3, r3, asl #3
	sub	sp, sp, r3
	add	r3, sp, #8
	add	r3, r3, #7
	mov	r3, r3, lsr #3
	mov	r3, r3, asl #3
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-48]
	add	lr, r3, #1
	ldr	r6, [fp, #-48]
	sub	r3, lr, #1
	str	r3, [fp, #-72]
	mov	r1, lr
	mov	r2, r1
	mov	r3, #0
	mov	r1, r2, lsr #29
	mov	ip, r3, asl #3
	str	ip, [fp, #-96]
	ldr	r0, [fp, #-96]
	orr	r0, r1, r0
	str	r0, [fp, #-96]
	mov	r1, r2, asl #3
	str	r1, [fp, #-100]
	sub	r3, r6, #1
	str	r3, [fp, #-76]
	mov	r3, lr
	mov	r4, r3
	mov	r5, #0
	mov	r3, r6
	mov	r0, r3
	mov	r1, #0
	mul	r2, r0, r5
	mul	r3, r4, r1
	add	ip, r2, r3
	umull	r2, r3, r4, r0
	add	r1, ip, r3
	mov	r3, r1
	mov	r1, r2, lsr #29
	mov	ip, r3, asl #3
	str	ip, [fp, #-104]
	ldr	r0, [fp, #-104]
	orr	r0, r1, r0
	str	r0, [fp, #-104]
	mov	r1, r2, asl #3
	str	r1, [fp, #-108]
	mov	r3, lr
	mov	r4, r3
	mov	r5, #0
	mov	r3, r6
	mov	r0, r3
	mov	r1, #0
	mul	r2, r0, r5
	mul	r3, r4, r1
	add	ip, r2, r3
	umull	r2, r3, r4, r0
	add	r1, ip, r3
	mov	r3, r1
	mov	r1, r2, lsr #29
	mov	ip, r3, asl #3
	str	ip, [fp, #-112]
	ldr	r0, [fp, #-112]
	orr	r0, r1, r0
	str	r0, [fp, #-112]
	mov	r1, r2, asl #3
	str	r1, [fp, #-116]
	mov	r2, lr
	mov	r3, r6
	mul	r3, r3, r2
	add	r3, r3, #7
	add	r3, r3, #7
	mov	r3, r3, lsr #3
	mov	r3, r3, asl #3
	sub	sp, sp, r3
	add	r3, sp, #8
	add	r3, r3, #7
	mov	r3, r3, lsr #3
	mov	r3, r3, asl #3
	str	r3, [fp, #-80]
	ldr	r2, [fp, #-60]
	ldr	ip, [fp, #-68]
	ldr	r3, [fp, #-80]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-48]
	ldr	r1, [fp, #-52]
	mov	r3, ip
	bl	createMatrix
	ldr	r3, [fp, #-80]
	ldr	r0, [fp, #-48]
	mov	r1, r3
	bl	printGrid
	ldr	r3, [fp, #-60]
	ldr	r0, [fp, #-52]
	ldr	r1, [fp, #-48]
	mov	r2, r3
	bl	printKey
	ldr	r3, [fp, #-68]
	ldr	ip, [fp, #-60]
	ldr	r0, [fp, #-52]
	ldr	r1, [fp, #-48]
	mov	r2, r3
	mov	r3, ip
	bl	playGame
	str	r0, [fp, #-84]
	ldr	r0, [fp, #-84]
	ldr	r1, [fp, #-52]
	bl	displayInfo
	bl	playAgain
	str	r0, [fp, #-40]
	mov	sp, r7
	mov	sp, sl
.L107:
	ldr	r3, [fp, #-40]
	cmp	r3, #1
	beq	.L110
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #32
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
	.size	main, .-main
	.ident	"GCC: (Debian 4.6.3-14+rpi1) 4.6.3"
	.section	.note.GNU-stack,"",%progbits
