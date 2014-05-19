#! /urs/bin/ruby

def isPent?(x)
	penTest = ((Math.sqrt(1+24*x))+1.0)/6.0
	return penTest == penTest.floor
end 

def run()
	notFound = true
	i = 1
	while notFound
		i+=1
		n = i*(3*i-1)/2
		for j in (i-1).downto(1)
			m = j*(3*j-1)/2
			if isPent?(n-m) && isPent?(n+m) && isPent?(n) && isPent?(m)
				return n-m
				
			end
		end		
	end
end

puts run()
