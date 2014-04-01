#!/usr/bin/ruby

def amicable(num)
	total = 0
	for i in 1..num-1
		if isPropDiv(num, i)
			total += i
		end
	end
	return total
end

def isPropDiv(base, div)
	return base%div == 0
end

def sumAmi(num)
	total = 0
	for i in 1 .. num-1
		if amicable(amicable(i)) == i && amicable(i) != i
			total += i
		end 
	end
	return total
end

puts sumAmi(10000)
