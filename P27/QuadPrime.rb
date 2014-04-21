#! /usr/bin/ruby

def isPrime(y)
	for x in 2..(y/2).floor
		if y%x == 0
			return false 
		end
	end
	return true
end

def mainfunc()
	a, b = -999, -999
	besta, bestb = 0, 0
	mostconsec = 0
	while a < 1000
		puts "testing a = #{a}"
		while b < 1000
			run = true
			n=0
			while run
				test = (n**2)+(a*n)+b
				if isPrime(test)
					n += 1
				else
					run = false
				end
			end
			if n > mostconsec
				puts "best is now #{n}"
				mostconsec = n
				besta = a
				bestb = b
			end
			b+=1
		end
		b = -999
		a+=1
	end
	puts besta
	puts bestb
	puts mostconsec
	puts besta*bestb
end

mainfunc()
