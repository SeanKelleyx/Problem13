#! /usr/bin/ruby

def getPrimes(x, primes)
	for y in primes
		if x%y == 0
			return primes
		end	
	end
	primes << x
	return primes
end

def testPrimes
	primes = [2, 3, 5, 7]
	for x in 3..7919
		isPrime, primes = primeTest(x, primes)
	end
	puts primes
	puts primes.count
end

def isPandigital(x)
	xarr = x.to_s.chars.map(&:to_i)
	case xarr.length
	when 2
		test = (1..2).map(&:to_i)
	when 3
                test = (1..3).map(&:to_i)
	when 4
                test = (1..4).map(&:to_i)
	when 5
                test = (1..5).map(&:to_i)
	when 6
                test = (1..6).map(&:to_i)
	when 7
                test = (1..7).map(&:to_i)
	when 8
                test = (1..8).map(&:to_i)
	when 9
                test = (1..9).map(&:to_i)
	else
		return false
	end
	if test - xarr == []
		return true
	end
	return false
end

def run(topend)
	biggest = 0
	primes = [2,3,5,7]
	for x in  10..topend
		puts x
		isPrime, primes = primeTest(x, primes)
		if isPrime && isPandigital(x)
			biggest = x
		end
	end
	return biggest
end

def isPrime(x)
        for y in 2..Math.sqrt(x).ceil
		next if y%2 ==0
                if x%y == 0
                        return false
                end
        end
        return true
end

def runone(topend)
	for x in topend.downto(0)
		if isPrime(x) && isPandigital(x)
			return x
		end
	end
end

def runtwo(topend)
	primes = [2]
	for x in 3..topend
		primes = getPrimes(x, primes)
	end
	for x in topend.downto(0)
                if primes.include?(x) && isPandigital(x)
                        return x
                end
        end
end

def runthree(topend)
        primes = [2]
        for x in 3..topend
                primes = getPrimes(x, primes)
        end
	puts "Got Primes..."
	primes.reverse!
	puts "reversed..."
        for x in primes
                if isPandigital(x)
                        return x
                end
        end
end

puts runthree(987654321)
