# Different strategies for ending program execution

# Example program
# ...
addi	$t1, $zero, 16
# ...

li 	$v0, 10		# 10 = service code for EXIT
syscall

# Approach 2: Exit program via syscall
#   +: Accurate to real MIPS programs, works in MARS
#   -: Your CPU may not implement syscall instruction


# Data in memory
.data 
my_array:
0x00000000	# my_array[0]
0x11110000
0x22220000
0x33330000
0x44440000
0x55550000
0x66660000
0x77770000
0x88880000
0x99990000
0xAAAA0000
0xBBBB0000
0xCCCC0000
0xDDDD0000
0xEEEE0000
0xFFFF0000
