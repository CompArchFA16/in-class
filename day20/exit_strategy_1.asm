# Different strategies for ending program execution

# Example program
# ...
addi	$t1, $zero, 16
# ...
j       END

END:
j	END

# Approach 1: Jump trap
#    +: Simple, execution doesn't fall through to .data section in simulation or real CPU
#    -: Infinite busy wait loop (quick fix: set a breakpoint in MARS)


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
