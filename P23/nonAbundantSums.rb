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

#return array of abundant numbers under a limit
def getAbundants(cap)
	#init array
	abs = []
	#for every number up to cap
	for i in 1..cap
		#if number is abundant
		if isAbundant(i)
			#add number to abs array
			abs << i
		end
	end
	#return abs
	return abs
end

#return true if number is abundant, false if not
def isAbundant(n)
	return getDivSums(n) > n
end
