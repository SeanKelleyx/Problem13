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
	#for every number under cap
	for i in 1..cap-1
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

#return true if number is in array, false if not
def isInArray(n, arr)
	return arr.include? n
end

#return true if n cannot be sum of two abundant nums false if not
def nonSumAb(n, abs)
	#init smallAbs
	smallAbs = abs.reject {|x| x > n}
	#for evey ab in smallAbs
	for i in smallAbs
		#if it can be added to another abundant to get n
		if isInArray(n-i, smallAbs)
			#return value false
			return false	
		end
	end
	#if no abundants can be added to get n return true
	return true
end
