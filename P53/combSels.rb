#! /usr/bin/ruby

def chooseFrom (n, r)
	return fact(n)/(fact(r)*(fact(n-r)))	
end

def fact(n)
	fac = 1
	for x in n.downto(1)
		fac = fac * x
	end
	return fac
end

def run()
	total = 0
	for n in 1..100
		for r in n.downto(1)
			x = chooseFrom(n, r)
			if x > 1000000
				total+=1
			end
		end
	end
	return total
end

puts run()
