
#! /usr/bin/ruby

def getCirNums(x)
	xArr = x.to_s.chars.map(&:to_i)
	cirs = [x]
	(xArr.length-1).times do
		xArr << xArr[0]
		xArr.shift
		temp =  xArr.inject{|a,i| a*10 + i}
		cirs << temp
	end
	return cirs
end

def isPrime(x)
	for y in 2..Math.sqrt(x).ceil
		if x%y == 0
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

def checkPrimes()
	count = 4
	primes = getPrimes()
	for x in primes
		cirs = getCirNums(x)
		if (cirs - primes).length == 0
			count += cirs.length
			primes = primes - cirs
		end
	end
	puts count
end

checkPrimes()
