#! /usr/bin/ruby

def getCirNums(x)
	x.to_s.chars.map(&:to_i)
end

def isPrime(x)
	for y in 2..Math.sqrt(x).floor
		if x%y != 0
			return false
		end
	end
	return true
end

def getPrimes
	arr = []
	for x in 10..1000000
		if isPrime(x)
			arr << x
		end
	end
	return arr
end

