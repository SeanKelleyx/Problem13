#! /usr/bin/ruby

def getPandigitals(x)
	perms = (1..x).to_a.permutation.map(&:join)
end

def isPrime(x)
	if x%2 == 0
		return false
	end
        for y in 2..Math.sqrt(x).ceil
                next if y%2 == 0
                if x%y == 0
                        return false
                end
        end
        return true
end

def run()
	panprimes = []
	for x in 9.downto(2)
		perms = getPandigitals(x)
		for y in perms
			if isPrime(y.to_i)
				panprimes << y.to_i
			end
		end
	end
	return panprimes.max
end

puts run()
