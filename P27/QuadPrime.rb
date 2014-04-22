#! /usr/bin/ruby

def isPrime(y)
	if y<2
		return false
	end
	for x in 2..(y-1)
		if y%x == 0
			return false 
		end
	end
	return true
end

def mainfunc()
	besta, bestb = 0, 0
	mostconsec = 0
	for a in -999..999
		for b in -999..999
			prime = true
			n=0
			while prime
				test = (n**2)+(a*n)+b
				if isPrime(test)
					n += 1
				else
					prime = false
				end
			end
			if n > mostconsec
				puts "best is now #{n}"
				mostconsec = n
				besta = a
				bestb = b
			end
		end
	end
	puts besta*bestb
end

mainfunc()
