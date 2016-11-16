# Different strategies for ending program execution

# Example program
# ...
addi	$t1, $zero, 16
# ...

# Approach 0: do nothing
#    +: Simple, works in MARS due to simulator having extra information
#    -: On real CPU, execution falls through and starts executing .data section as code


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
