	.data

nums:	.double 3.9999999999999991
	.double 1.0000000000000004
	.double 5

	.double 2.2250738585072009e-308		# largest gu number
	.double 4.9406564584124654e-324		# subtract small gu number
1:	.double 2.2250738585072014e-308		# smallest normalized number	

	.double 2.2250738585072014e-308		# smallest normalized number
	.double -4.9406564584124654e-324	# subtract small gu number
2:	.double 2.2250738585072009e-308		# largest gu number

	.double inf
	.double inf
3:	.double inf

	.double inf
	.double -inf
4:	.word 0,0xfff80000 # nan

	.double -9.6276454555959567e+307
	.double 1.7976931348623157e+308
5:	.double 8.3492858930272004e+307

	.double 9.6276454555959567e+307
	.double 8.3492858930272004e+307
6:	.double 1.7976931348623157e+308

	.double 9.6276454555959567e+307
	.double 8.3492858930272014e+307
7:	.double inf

	.double -inf	
	.double -inf
8:	.double -inf

	.double 1.2345000000000002e-307
	.double -1.2345e-307
9:	.double 1.9762625833649862e-323

	.double 1
	.double 5000000000000000
A:	.double 5000000000000001

	.double 10000000000000000
	.double 1
B:	.double 10000000000000000

	.double 9007199254740991	#largest integer that can add 1
	.double 1
C:	.double 9007199254740992

	.double 9007199254740992	# too big to add 1
	.double 1
D:	.double 9007199254740992

	.double 9007199254740992	# ok to add 2 
	.double 2
E:	.double 9007199254740994

	.double inf
	.double 3.0
F:	.double inf


	.double inf
	.double -3.0
10:	.double inf  #16

	.double 9.6276454555959567e+307
	.double -8.3492858930272014e+307
11:	.double 1.2783595625687552e+307 #17

	.double 3.9999999999999991
	.double -1.0000000000000004
12:	.double 2.9999999999999987 #18

	.double 4.9406564584124654e-324
	.double 2.2250738585072009e-308
13:	.double 2.2250738585072014e-308 #19

	.double 2.2250738585072014e-308
	.double -2.2250738585072009e-308
14:	.double 4.9406564584124654e-324 #20

	.double -100.0
	.double 5.0
15:	.double -95 #21

	.double nan
	.double 1.0
16:	.double 0. #nan

	.double 100.0
	.double nan
17:	.double nan

	.double 1.0
	.double 9007199254740991  
18:	.double 9007199254740992 # addition with different exponents

	.double 9007199254740992
	.double 1.0
19:	.double 9.007199254740992 # huge exponent difference

	.double 5.0e-324
	.double -10.0e-324
oneA:	.double -5e-324 # gu

	.double 9007199254740992
	.double 2.0
oneB:	.double 9007199254740994 # int precision boundary case

	.double 9007199254740991
	.double 0.5
oneC:	.double 9007199254740992 # round to even demonstration

	.double 1.7976931348623157e+308 # small
	.double -1.7976931348623155e+308 # large
oneD:	.double 1.9958403095347198e+292 # should stil produce a huge number 

	.double 1.7976931348623157e+308
	.double 1.9958403095347198e+292
oneE:	.double inf # should overflow to infinity

	.double -inf
	.double inf
oneF:	.word 0,0xfff80000 # nan




	.code
main:	addi	$a0,$0,'\f
	syscall	$print_char
	la	$t0,nums
	mov	$a0,$0
1:	l.d	$f0,($t0)
	l.d	$f2,8($t0)
	add.d	$f4,$f0,$f2
	cfc1	$a3,$FCR31
	mfc1	$t4,$f4
	mfc1	$t5,$f5
	lw	$t2,16($t0)
	lw	$t3,20($t0)
	bne	$t2,$t4,3f
	bne	$t3,$t5,3f
	addi	$t0,$t0,3*double
	addi	$a0,$a0,1
	bnez	$t2,1b
	bnez	$t3,1b
3:
	syscall $print_int
	syscall $exit