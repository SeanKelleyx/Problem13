#! /usr/bin/ruby

def isPan (multiplicand, multiplier, product)
	arr = multiplicand.to_s.chars.map(&:to_i)
	arr << multiplier.to_s.chars.map(&:to_i)
	arr << product.to_s.chars.map(&:to_i)
	arr.sort!
	y = 1
	for x in arr
		if x == y
			y+=1
		else 
			return false
		end
	end
	return true 
end

def run (topend)
end

def getMults(product)
end

def total(prodsArr)
end
