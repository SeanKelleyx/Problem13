#! /usr/bin/ruby

def isPan (multiplicand, multiplier, product)
	arr = multiplicand.to_s.chars.map(&:to_i)
	arr += multiplier.to_s.chars.map(&:to_i)
	arr += product.to_s.chars.map(&:to_i)
	return arr.sort == [1, 2, 3, 4, 5, 6, 7, 8, 9]
end

def run (topend)
end

def getMults(product)
	
end

def total(prodsArr)
	return prodsArr.inject{|sum,x| sum + x }
end
