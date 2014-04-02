#! /usr/bin/ruby

#return the sum of a numbers divisors
def getDivSums(n)
	#initialize total
	total = 0
	#for every number less than n
	for i in 1..n-1
		#if i is a divisor
		if n%i == 0
			#add divisor to total
			total += i
		end
	end
	#return total
	return total			
end

