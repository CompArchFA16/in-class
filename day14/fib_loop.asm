# Calculate the Nth Fibonacci number
#   Loop-based solution
#   F_n will be stored in register v0 when the program terminates

# Set up arguments and base cases
addi  $t0, $zero, 1 	# F_(n-1)
addi  $t1, $zero, 1 	# F_(n-2)
addi  $t2, $zero, 2 	# n

# Main computation loop
loop:
add  $t3, $t0, $t1 		# F_n = F_(n-1)+F_(n-2)
beq  $t2, $a0, breakloop 	# if (n==N) goto breakloop;
addi $t2, $t2, 1 		# n++
add  $t1, $zero, $t0 		# F_(n-2) = F_(n-1)
add  $t0, $zero, $t3 		# F_(n-1) = F_n
j loop 				# restart loop

breakloop:
add $v0, $zero, $t3 		# return the answer in register v0