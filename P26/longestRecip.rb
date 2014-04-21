#! /usr/bin/ruby

def isPrime(num)
	for x in 2..(num/2).floor
		if num%x == 0
			return false
		end
	end
	return true
end

def getBiggestPrime(limit)
	biggest = 0
	for x in 1..limit
		if isPrime(x)
			biggest = x
		end
	end
	return biggest
end

puts getBiggestPrime(999)
