#!/usr/bin/ruby

# retrn the count of which fib. number is the first to be 1000 digits long
def thousandDig()
	#init count
	count = 1
	#init numbers for fibonacci sequence
	current, last = 1, 0
	#while less than 100 dig long
	while current.to_s.length < 1000
		# set last to current and curren to nex fib
		last, current = current, last + current
		#increment counter
		count +=1
	end
	#return counter
	return count
end

puts thousandDig()
