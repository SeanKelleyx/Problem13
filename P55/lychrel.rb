#! /usr/bin/ruby
def isPal(x)
	y = x.to_s.reverse.to_i
	return x == y
end

def isLychrel(x)
	for y in 1..50
		x = x + x.to_s.reverse.to_i
		if isPal(x)
			return false
		end
	end
	return true
end

def run(top)
	total = 0
	for x in 1..top
		if isLychrel(x)
			total += 1
		end	
	end
	return total
end

puts run(10000)
