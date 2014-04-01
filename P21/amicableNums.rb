#!/usr/bin/ruby

# returns the sum of proper divisors of a number
def sumDiv(num)
	#initialize total
	total = 0
	#for every number less than num
	for i in 1..num-1
		#if i is a proper divisor
		if isPropDiv(num, i)
			#add i to total
			total += i
		end
	end
	# return total
	return total
end

#returns true if div is a proper divisor of base false if not
def isPropDiv(base, div)
	return base%div == 0
end

#return true if given number is an amicable num false if not
def isAmicable(num)
	return sumDiv(sumDiv(num)) == num && sumDiv(num) != num
end

#returns the sum of all amicable pairs under a number
def sumAmi(num)
	#initialize total to 0
	total = 0
	#for every number under num
	for i in 1 .. num-1
		#if it is an amicable number
		if isAmicable(i)
			#add i to total
			total += i
		end 
	end
	#return total
	return total
end

puts sumAmi(10000)
